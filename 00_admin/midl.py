#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
from datetime import date, datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
STATE_DIR = ROOT / ".midl"
STATE_FILE = STATE_DIR / "build-state.json"
BUILD_DIR = STATE_DIR / "build"
DEFAULT_REMOTE = os.environ.get("MIDL_REMOTE", "gdrive:MIDL")
REMOTE_STATE_REL = "00_ADMIN/build-state.json"

SUBJECTS = {
    "md": ("01_methodes_discretes", "Méthodes discrètes"),
    "methodes": ("01_methodes_discretes", "Méthodes discrètes"),
    "al": ("02_algebre_lineaire", "Algèbre linéaire"),
    "alg": ("02_algebre_lineaire", "Algèbre linéaire"),
    "si": ("03_systemes_information", "Systèmes d'information"),
    "pa": ("04_programmation_avancee", "Programmation avancée"),
    "fvr": ("05_fonctions_variable_reelle", "Fonctions d'une variable réelle"),
    "pn": ("06_prog_numerique", "Programmation numérique"),
    "en": ("07_anglais", "Anglais"),
}

PATH_TOKEN_RE = re.compile(
    r"[\"']([^\"']+\.(?:typ|png|jpe?g|svg|csv|json|ya?ml|txt))[\"']",
    re.IGNORECASE,
)
SESSION_RE = re.compile(r"^(\d{4}-\d{2}-\d{2})_(TD|TP)(\d{2})\.typ$")


def die(message: str, code: int = 1) -> None:
    print(f"error: {message}", file=sys.stderr)
    raise SystemExit(code)


def rel(path: Path) -> str:
    return path.resolve().relative_to(ROOT.resolve()).as_posix()


def command_exists(name: str) -> bool:
    return shutil.which(name) is not None


def run(
    cmd: list[str], *, check: bool = True, capture: bool = False
) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        cmd,
        cwd=ROOT,
        check=check,
        text=True,
        stdout=subprocess.PIPE if capture else None,
        stderr=subprocess.PIPE if capture else None,
    )


def discover_entries() -> list[Path]:
    entries: set[Path] = set()

    for pattern in ("**/cours.typ", "**/chapitre.typ"):
        for path in ROOT.glob(pattern):
            if any(part in {".git", ".midl", "dist"} for part in path.parts):
                continue
            entries.add(path.resolve())

    for kind in ("TD", "TP"):
        for path in ROOT.glob(f"[0-9][0-9]_*/{kind}/notes/*.typ"):
            if path.name.startswith("_"):
                continue
            entries.add(path.resolve())

    # Future-proof escape hatch: any Typst file can opt in explicitly.
    for path in ROOT.glob("[0-9][0-9]_*/**/*.typ"):
        if path.resolve() in entries:
            continue
        try:
            head = "\n".join(path.read_text(encoding="utf-8").splitlines()[:5])
        except (OSError, UnicodeDecodeError):
            continue
        if "// midl: publish" in head.lower():
            entries.add(path.resolve())

    return sorted(entries, key=rel)


def output_rel(source: Path) -> str:
    parts = source.resolve().relative_to(ROOT.resolve()).parts
    source_rel = Path(*parts)

    if source.name == "cours.typ":
        base = source_rel.parent
        return (base / "notes" / "cours-complet.pdf").as_posix()

    if source.name == "chapitre.typ" and "chapitres" in parts:
        subject, kind = parts[0], parts[1]
        chapter = source.parent.name
        return f"{subject}/{kind}/notes/chapitres/{chapter}.pdf"

    if len(parts) >= 4 and parts[1] in {"TD", "TP"} and parts[2] == "notes":
        return source_rel.with_suffix(".pdf").as_posix()

    return source_rel.with_suffix(".pdf").as_posix()


def resolve_dependency(current: Path, token: str) -> Path | None:
    if token.startswith("@"):
        return None
    if token.startswith("/"):
        candidate = ROOT / token.lstrip("/")
    else:
        candidate = current.parent / token
    try:
        candidate = candidate.resolve()
        candidate.relative_to(ROOT.resolve())
    except (OSError, ValueError):
        return None
    return candidate if candidate.is_file() else None


def dependency_files(source: Path) -> list[Path]:
    seen: set[Path] = set()
    stack = [source.resolve()]

    while stack:
        path = stack.pop()
        if path in seen or not path.is_file():
            continue
        seen.add(path)
        if path.suffix.lower() != ".typ":
            continue
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        for token in PATH_TOKEN_RE.findall(text):
            dep = resolve_dependency(path, token)
            if dep is not None and dep not in seen:
                stack.append(dep)

    return sorted(seen, key=rel)


def fingerprint(source: Path) -> str:
    h = hashlib.sha256()
    for path in dependency_files(source):
        path_rel = rel(path).encode("utf-8")
        h.update(len(path_rel).to_bytes(4, "big"))
        h.update(path_rel)
        data = path.read_bytes()
        h.update(len(data).to_bytes(8, "big"))
        h.update(data)
    return h.hexdigest()


def empty_state() -> dict:
    return {"version": 1, "entries": {}}


def load_local_state() -> dict:
    if not STATE_FILE.exists():
        return empty_state()
    try:
        data = json.loads(STATE_FILE.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return empty_state()
    if data.get("version") != 1 or not isinstance(data.get("entries"), dict):
        return empty_state()
    return data


def save_local_state(state: dict) -> None:
    STATE_DIR.mkdir(parents=True, exist_ok=True)
    tmp = STATE_FILE.with_suffix(".tmp")
    tmp.write_text(
        json.dumps(state, ensure_ascii=False, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    tmp.replace(STATE_FILE)


def remote_path(remote: str, child: str) -> str:
    return f"{remote.rstrip('/')}/{child.lstrip('/')}"


def pull_remote_state(remote: str) -> bool:
    if not command_exists("rclone"):
        return False
    proc = run(
        ["rclone", "cat", remote_path(remote, REMOTE_STATE_REL)],
        check=False,
        capture=True,
    )
    if proc.returncode != 0 or not proc.stdout.strip():
        return False
    try:
        data = json.loads(proc.stdout)
    except json.JSONDecodeError:
        return False
    if data.get("version") != 1 or not isinstance(data.get("entries"), dict):
        return False
    save_local_state(data)
    return True


def push_remote_state(remote: str) -> None:
    run(
        [
            "rclone",
            "copyto",
            str(STATE_FILE),
            remote_path(remote, REMOTE_STATE_REL),
        ]
    )


def classify(state: dict) -> tuple[list[dict], list[dict]]:
    current: list[dict] = []
    seen: set[str] = set()
    state_entries = state.get("entries", {})

    for source in discover_entries():
        source_rel = rel(source)
        seen.add(source_rel)
        fp = fingerprint(source)
        out = output_rel(source)
        previous = state_entries.get(source_rel)
        if previous is None:
            status = "NEW"
        elif previous.get("fingerprint") != fp or previous.get("output") != out:
            status = "CHANGED"
        else:
            status = "UNCHANGED"
        current.append(
            {
                "source": source,
                "source_rel": source_rel,
                "output": out,
                "fingerprint": fp,
                "status": status,
            }
        )

    orphans = []
    for source_rel, info in sorted(state_entries.items()):
        if source_rel not in seen:
            orphans.append(
                {
                    "source_rel": source_rel,
                    "output": info.get("output", ""),
                    "status": "ORPHAN",
                }
            )
    return current, orphans


def print_status(current: list[dict], orphans: list[dict]) -> None:
    counts = {key: 0 for key in ("NEW", "CHANGED", "UNCHANGED", "ORPHAN")}
    for item in current:
        counts[item["status"]] += 1
    counts["ORPHAN"] = len(orphans)

    for item in current:
        if item["status"] != "UNCHANGED":
            print(
                f"{item['status']:<9} {item['source_rel']} -> {item['output']}"
            )
    for item in orphans:
        print(
            f"ORPHAN    {item['source_rel']} -> {item['output']} "
            "(kept on Drive)"
        )

    print(
        f"Summary: {counts['NEW']} new, {counts['CHANGED']} changed, "
        f"{counts['UNCHANGED']} unchanged, "
        f"{counts['ORPHAN']} orphaned."
    )


def cmd_status(args: argparse.Namespace) -> int:
    if args.remote:
        pull_remote_state(args.remote)
    state = load_local_state()
    current, orphans = classify(state)
    print_status(current, orphans)
    return 0


def compile_entry(item: dict) -> Path:
    output = BUILD_DIR / item["output"]
    output.parent.mkdir(parents=True, exist_ok=True)
    run(
        [
            "typst",
            "compile",
            "--root",
            str(ROOT),
            str(item["source"]),
            str(output),
        ]
    )
    return output


def cmd_publish(args: argparse.Namespace) -> int:
    if not command_exists("typst"):
        die("typst is not installed or not in PATH")
    if not args.no_upload and not command_exists("rclone"):
        die("rclone is not installed or not in PATH")

    if not args.no_upload:
        pull_remote_state(args.remote)

    state = load_local_state()
    current, orphans = classify(state)
    dirty = [
        item
        for item in current
        if item["status"] in {"NEW", "CHANGED"}
    ]

    print_status(current, orphans)

    if args.dry_run:
        return 0
    if not dirty:
        print("Nothing to compile or upload.")
        return 0

    entries = state.setdefault("entries", {})
    now = datetime.now(timezone.utc).isoformat()

    for item in dirty:
        print(f"[compile] {item['source_rel']}")
        output = compile_entry(item)
        if not args.no_upload:
            destination = remote_path(args.remote, item["output"])
            print(f"[upload]  {item['output']}")
            run(["rclone", "copyto", str(output), destination])

        entries[item["source_rel"]] = {
            "fingerprint": item["fingerprint"],
            "output": item["output"],
            "published_at": (
                now
                if not args.no_upload
                else entries.get(item["source_rel"], {}).get("published_at")
            ),
        }

    save_local_state(state)
    if not args.no_upload:
        push_remote_state(args.remote)

    print(
        f"Done: {len(dirty)} compiled, "
        f"{0 if args.no_upload else len(dirty)} uploaded, "
        "no deletions."
    )
    return 0


def resolve_subject(token: str) -> tuple[str, str]:
    key = token.strip().lower()
    if key in SUBJECTS:
        return SUBJECTS[key]
    for folder, display in dict(SUBJECTS.values()).items():
        if key == folder.lower():
            return folder, display
    die(f"unknown subject '{token}'")


def next_session_number(notes_dir: Path, kind: str) -> int:
    highest = 0
    for path in notes_dir.glob(f"*_{kind}[0-9][0-9].typ"):
        match = SESSION_RE.match(path.name)
        if match and match.group(2) == kind:
            highest = max(highest, int(match.group(3)))
    return highest + 1


def note_content(
    subject_display: str, kind: str, session_date: str, number: int
) -> str:
    code = f"{kind}{number:02d}"
    return f'''#import "../../../00_admin/note-style.typ": session-note

#show: session-note.with(
  subject: "{subject_display}",
  kind: "{kind}",
  date: "{session_date}",
  number: "{code}",
)

= Notes

'''


def cmd_new(args: argparse.Namespace) -> int:
    folder, display = resolve_subject(args.subject)
    kind = args.kind.upper()
    if kind not in {"TD", "TP"}:
        die("new session notes currently support only TD or TP")

    notes_dir = ROOT / folder / kind / "notes"
    notes_dir.mkdir(parents=True, exist_ok=True)
    session_date = args.date or date.today().isoformat()

    if not args.force:
        existing = sorted(
            notes_dir.glob(f"{session_date}_{kind}[0-9][0-9].typ")
        )
        if existing:
            print(rel(existing[-1]))
            return 0

    number = next_session_number(notes_dir, kind)
    path = notes_dir / f"{session_date}_{kind}{number:02d}.typ"
    path.write_text(
        note_content(display, kind, session_date, number),
        encoding="utf-8",
    )
    print(rel(path))
    return 0


def cmd_doctor(args: argparse.Namespace) -> int:
    checks = {
        "git": command_exists("git"),
        "python3": command_exists("python3"),
        "typst": command_exists("typst"),
        "rclone": command_exists("rclone"),
    }
    for name, ok in checks.items():
        print(f"{'OK' if ok else 'MISSING':<8} {name}")

    if checks["rclone"]:
        proc = run(
            ["rclone", "lsd", args.remote],
            check=False,
            capture=True,
        )
        print(
            f"{'OK' if proc.returncode == 0 else 'ERROR':<8} "
            f"remote {args.remote}"
        )

    return 0 if all(checks.values()) else 1


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Incremental MIDL note builder and publisher"
    )
    sub = parser.add_subparsers(dest="command", required=True)

    status = sub.add_parser(
        "status",
        help="show new/changed/orphaned publishable notes",
    )
    status.add_argument(
        "--remote",
        default=None,
        help="optional rclone remote root to pull shared state from",
    )
    status.set_defaults(func=cmd_status)

    publish = sub.add_parser(
        "publish",
        help="compile and upload only new/changed entrypoints",
    )
    publish.add_argument(
        "--remote",
        default=DEFAULT_REMOTE,
        help=f"rclone remote root (default: {DEFAULT_REMOTE})",
    )
    publish.add_argument(
        "--dry-run",
        action="store_true",
        help="show changes without compiling or uploading",
    )
    publish.add_argument(
        "--no-upload",
        action="store_true",
        help="compile dirty entrypoints locally only",
    )
    publish.set_defaults(func=cmd_publish)

    new = sub.add_parser(
        "new",
        help="create or reopen today's TD/TP Typst note",
    )
    new.add_argument(
        "subject",
        help="subject alias: md, al, si, pa, fvr, pn",
    )
    new.add_argument("kind", help="td or tp")
    new.add_argument("--date", help="YYYY-MM-DD (default: today)")
    new.add_argument(
        "--force",
        action="store_true",
        help="create another note even if one exists for that date",
    )
    new.set_defaults(func=cmd_new)

    doctor = sub.add_parser(
        "doctor",
        help="check local tools and Drive remote",
    )
    doctor.add_argument("--remote", default=DEFAULT_REMOTE)
    doctor.set_defaults(func=cmd_doctor)

    return parser


def main() -> int:
    args = build_parser().parse_args()
    return args.func(args)


if __name__ == "__main__":
    raise SystemExit(main())
