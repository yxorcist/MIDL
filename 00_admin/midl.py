#!/usr/bin/env python3
from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MIDLDIR = ROOT / ".midl"
BUILD_DIR = MIDLDIR / "build"
BUILD_MANIFEST = MIDLDIR / "build-manifest.json"
STATE_FILE = MIDLDIR / "state.json"
REMOTE = os.environ.get("MIDL_REMOTE", "gdrive:MIDL")
REMOTE_STATE = "00_ADMIN/midl-state.json"
LEGACY_REMOTE_STATE = "00_ADMIN/build-state.json"

SUBJECTS = {
    "md": ("01_methodes_discretes", "Méthodes discrètes", ("cm", "td")),
    "al": ("02_algebre_lineaire", "Algèbre linéaire", ("cm", "td")),
    "si": ("03_systemes_information", "Systèmes d'information", ("cm", "td", "tp")),
    "pa": ("04_programmation_avancee", "Programmation avancée", ("cm", "tp")),
    "fvr": ("05_fonctions_variable_reelle", "Fonctions d'une variable réelle", ("cm", "td")),
    "pn": ("06_prog_numerique", "Programmation numérique", ("cm", "td", "tp")),
    "en": ("07_anglais", "Anglais", ("work",)),
}
ALIASES = {
    "methodes": "md", "alg": "al", "anglais": "en",
    "prognum": "pn", "proga": "pa", "fonctions": "fvr",
}
PATH_RE = re.compile(r'["\']([^"\']+\.(?:typ|png|jpe?g|svg|csv|json|ya?ml|txt))["\']', re.I)
SESSION_RE = re.compile(r"^(\d{4}-\d{2}-\d{2})_(TD|TP)(\d{2})\.typ$")


def run(cmd: list[str], *, check: bool = True, capture: bool = False) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        cmd, cwd=ROOT, check=check, text=True,
        stdout=subprocess.PIPE if capture else None,
        stderr=subprocess.PIPE if capture else None,
    )


def have(name: str) -> bool:
    return shutil.which(name) is not None


def rel(path: Path) -> str:
    return path.resolve().relative_to(ROOT.resolve()).as_posix()


def die(message: str, code: int = 1) -> None:
    print(f"midl: {message}", file=sys.stderr)
    raise SystemExit(code)


def remote_path(child: str) -> str:
    return f"{REMOTE.rstrip('/')}/{child.lstrip('/')}"


def empty_state() -> dict:
    return {"version": 2, "artifacts": {}}


def normalize_state(data: dict) -> dict:
    if data.get("version") == 2 and isinstance(data.get("artifacts"), dict):
        return data
    if data.get("version") == 1 and isinstance(data.get("entries"), dict):
        out = empty_state()
        for source, info in data["entries"].items():
            out["artifacts"][source] = {
                "destination": info.get("output", ""),
                "published_fingerprint": info.get("fingerprint"),
                "staged_fingerprint": None,
                "staged_name": None,
            }
        return out
    return empty_state()


def load_json(path: Path, default: dict) -> dict:
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return default


def save_json(path: Path, data: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_suffix(path.suffix + ".tmp")
    tmp.write_text(json.dumps(data, ensure_ascii=False, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    tmp.replace(path)


def load_state() -> dict:
    return normalize_state(load_json(STATE_FILE, empty_state()))


def pull_state() -> dict:
    local = load_state()
    if not have("rclone"):
        return local
    for child in (REMOTE_STATE, LEGACY_REMOTE_STATE):
        proc = run(["rclone", "cat", remote_path(child)], check=False, capture=True)
        if proc.returncode != 0 or not proc.stdout.strip():
            continue
        try:
            state = normalize_state(json.loads(proc.stdout))
        except json.JSONDecodeError:
            continue
        save_json(STATE_FILE, state)
        return state
    return local


def push_state(state: dict) -> None:
    save_json(STATE_FILE, state)
    run(["rclone", "mkdir", remote_path("00_ADMIN")])
    run(["rclone", "copyto", str(STATE_FILE), remote_path(REMOTE_STATE)])


def discover_entries() -> list[Path]:
    entries: set[Path] = set()
    patterns = (
        "**/cours.typ",
        "**/chapitre.typ",
        "[0-9][0-9]_*/TD/fiche[0-9][0-9]/exercices/*.typ",
        "[0-9][0-9]_*/TD/rappels/*.typ",
        "[0-9][0-9]_*/TP/tp[0-9][0-9]/exercices/*.typ",
        "07_anglais/travail/*.typ",
    )
    for pattern in patterns:
        for path in ROOT.glob(pattern):
            if any(part in {".git", ".midl", "dist"} for part in path.parts):
                continue
            if path.name.startswith("_"):
                continue
            entries.add(path.resolve())

    for path in ROOT.glob("[0-9][0-9]_*/**/*.typ"):
        if path.resolve() in entries:
            continue
        try:
            head = "\n".join(path.read_text(encoding="utf-8").splitlines()[:5]).lower()
        except (OSError, UnicodeDecodeError):
            continue
        if "// midl: publish" in head:
            entries.add(path.resolve())

    return sorted(entries, key=rel)


def output_rel(source: Path) -> str:
    parts = source.resolve().relative_to(ROOT.resolve()).parts
    source_rel = Path(*parts)
    if source.name == "cours.typ" and len(parts) >= 2 and parts[1] == "CM":
        return f"{parts[0]}/CM/notes/cours-complet.pdf"
    if source.name == "chapitre.typ" and "chapitres" in parts:
        return f"{parts[0]}/CM/notes/chapitres/{source.parent.name}.pdf"
    return source_rel.with_suffix(".pdf").as_posix()


def resolve_dependency(current: Path, token: str) -> Path | None:
    if token.startswith("@"):
        return None
    candidate = (ROOT / token.lstrip("/")) if token.startswith("/") else (current.parent / token)
    try:
        candidate = candidate.resolve()
        candidate.relative_to(ROOT.resolve())
    except (OSError, ValueError):
        return None
    return candidate if candidate.is_file() else None


def dependencies(source: Path) -> list[Path]:
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
        for token in PATH_RE.findall(text):
            dep = resolve_dependency(path, token)
            if dep is not None and dep not in seen:
                stack.append(dep)
    return sorted(seen, key=rel)


def fingerprint(source: Path) -> str:
    h = hashlib.sha256()
    for path in dependencies(source):
        name = rel(path).encode()
        data = path.read_bytes()
        h.update(len(name).to_bytes(4, "big")); h.update(name)
        h.update(len(data).to_bytes(8, "big")); h.update(data)
    return h.hexdigest()


def current_items() -> list[dict]:
    items = []
    for source in discover_entries():
        items.append({
            "source": source,
            "source_rel": rel(source),
            "destination": output_rel(source),
            "fingerprint": fingerprint(source),
        })
    return items


def classify(state: dict) -> tuple[list[dict], list[dict]]:
    artifacts = state.get("artifacts", {})
    current = []
    seen = set()
    for item in current_items():
        seen.add(item["source_rel"])
        info = artifacts.get(item["source_rel"], {})
        published = info.get("published_fingerprint")
        staged = info.get("staged_fingerprint")
        fp = item["fingerprint"]
        if published == fp:
            status = "CLEAN"
        elif staged == fp:
            status = "STAGED"
        elif published is None:
            status = "NEW"
        else:
            status = "MODIFIED"
        current.append({**item, "status": status})
    missing = [
        {"source_rel": source, **info}
        for source, info in artifacts.items()
        if source not in seen and info.get("published_fingerprint")
    ]
    return current, missing


def print_status(current: list[dict], missing: list[dict]) -> None:
    symbols = {"NEW": "??", "MODIFIED": " M", "STAGED": " ↑"}
    visible = [item for item in current if item["status"] != "CLEAN"]
    for item in visible:
        print(f"{symbols[item['status']]} {item['status']:<8} {item['destination']}")
    for item in missing:
        print(f" D MISSING  {item.get('destination', item['source_rel'])}  (Drive kept)")
    if not visible and not missing:
        print("clean")
        return
    counts = {key: sum(i["status"] == key for i in current) for key in ("NEW", "MODIFIED", "STAGED")}
    print(f"\n{counts['NEW']} new, {counts['MODIFIED']} modified, {counts['STAGED']} staged")


def cmd_status() -> int:
    state = pull_state()
    current, missing = classify(state)
    print_status(current, missing)
    return 0


def cmd_compile() -> int:
    if not have("typst"):
        die("typst is not installed")
    items = current_items()
    manifest = {"version": 1, "entries": {}}
    for item in items:
        output = BUILD_DIR / item["destination"]
        output.parent.mkdir(parents=True, exist_ok=True)
        print(f"[typst] {item['source_rel']}")
        run(["typst", "compile", "--root", str(ROOT), str(item["source"]), str(output)])
        manifest["entries"][item["source_rel"]] = {
            "fingerprint": item["fingerprint"],
            "destination": item["destination"],
        }
    save_json(BUILD_MANIFEST, manifest)
    print(f"compiled {len(items)} artifact(s)")
    return 0


def staged_name(destination: str) -> str:
    return "--".join(Path(destination).parts)


def cmd_push() -> int:
    if not have("rclone"):
        die("rclone is not installed")
    state = pull_state()
    current, _ = classify(state)
    pending = [item for item in current if item["status"] in {"NEW", "MODIFIED"}]
    if not pending:
        print("nothing to stage")
        return 0

    manifest = load_json(BUILD_MANIFEST, {"entries": {}})
    build_entries = manifest.get("entries", {})
    stale = []
    for item in pending:
        built = build_entries.get(item["source_rel"], {})
        output = BUILD_DIR / item["destination"]
        if built.get("fingerprint") != item["fingerprint"] or not output.is_file():
            stale.append(item["destination"])
    if stale:
        print("midl: build is missing or stale; run `make` first", file=sys.stderr)
        for path in stale:
            print(f"  {path}", file=sys.stderr)
        return 1

    run(["rclone", "mkdir", remote_path("00_INBOX")])
    artifacts = state.setdefault("artifacts", {})
    for item in pending:
        name = staged_name(item["destination"])
        output = BUILD_DIR / item["destination"]
        print(f"[stage] {item['destination']}")
        run(["rclone", "copyto", str(output), remote_path(f"00_INBOX/{name}")])
        info = artifacts.setdefault(item["source_rel"], {})
        info.update({
            "destination": item["destination"],
            "staged_fingerprint": item["fingerprint"],
            "staged_name": name,
        })
        push_state(state)
    print(f"staged {len(pending)} artifact(s) -> Drive/MIDL/00_INBOX")
    return 0


def subject_key(token: str) -> str:
    key = ALIASES.get(token.strip().lower(), token.strip().lower())
    if key not in SUBJECTS:
        die(f"unknown subject '{token}'")
    return key


def choose(title: str, options: list[tuple[str, str]]) -> str:
    print(title, file=sys.stderr)
    for i, (_, label) in enumerate(options, 1):
        print(f"  {i}. {label}", file=sys.stderr)
    while True:
        try:
            raw = input("> ").strip()
        except EOFError:
            die("selection cancelled")
        if raw.isdigit() and 1 <= int(raw) <= len(options):
            return options[int(raw) - 1][0]
        for key, _ in options:
            if raw.lower() == key:
                return key
        print("choose a listed option", file=sys.stderr)


def typst_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def ensure_course_include(course: Path, session: Path) -> None:
    include = f'#include "sessions/{session.name}"'
    if not course.exists():
        course.parent.mkdir(parents=True, exist_ok=True)
        course.write_text(
            '#set page(paper: "a4", margin: 2cm)\n'
            '#set text(lang: "fr", size: 11pt)\n'
            '#set par(justify: true, leading: 0.65em)\n'
            '#set heading(numbering: "1.1")\n\n'
            + include + "\n",
            encoding="utf-8",
        )
        return
    text = course.read_text(encoding="utf-8")
    if include not in text:
        course.write_text(text.rstrip() + "\n" + include + "\n", encoding="utf-8")


def ask_positive_int(label: str) -> int:
    while True:
        try:
            raw = input(f"{label}: ").strip()
        except EOFError:
            die("selection cancelled")
        if raw.isdigit() and int(raw) >= 1:
            return int(raw)
        print("enter a positive integer", file=sys.stderr)


def parse_positive_int(raw: str, label: str) -> int:
    if not raw.isdigit() or int(raw) < 1:
        die(f"{label} must be a positive integer")
    return int(raw)


def create_or_reopen(
    subject: str,
    area: str,
    sheet: int | None = None,
    exercise: int | None = None,
) -> Path:
    folder, display, allowed = SUBJECTS[subject]
    if area not in allowed:
        die(f"'{area}' is not used for {display}; choose: {', '.join(allowed)}")
    today = date.today().isoformat()
    base = ROOT / folder

    if area == "cm":
        sessions = base / "CM" / "sessions"
        sessions.mkdir(parents=True, exist_ok=True)
        path = sessions / f"{today}.typ"
        if not path.exists():
            path.write_text(f"= {today}\n\n", encoding="utf-8")
        ensure_course_include(base / "CM" / "cours.typ", path)
        return path

    if area in {"td", "tp"}:
        if sheet is None or exercise is None:
            die(f"{area.upper()} requires a sheet and exercise number")
        kind = area.upper()
        group = f"fiche{sheet:02d}" if area == "td" else f"tp{sheet:02d}"
        label = f"Fiche {sheet}" if area == "td" else f"TP {sheet}"
        exercises = base / kind / group / "exercices"
        exercises.mkdir(parents=True, exist_ok=True)
        path = exercises / f"ex{exercise:02d}.typ"
        if not path.exists():
            path.write_text(
                '#set page(paper: "a4", margin: 2cm)\n'
                '#set text(lang: "fr", size: 11pt)\n'
                '#set par(justify: true, leading: 0.65em)\n\n'
                f'= {label} — Exercice {exercise}\n\n',
                encoding="utf-8",
            )
        return path

    work = base / "travail"
    work.mkdir(parents=True, exist_ok=True)
    path = work / f"{today}.typ"
    if not path.exists():
        path.write_text(
            '#import "../../00_admin/note-style.typ": session-note\n\n'
            '#show: session-note.with(\n'
            f'  subject: "{typst_escape(display)}",\n'
            '  label: "Travail",\n'
            f'  date: "{today}",\n'
            ')\n\n= Notes\n\n',
            encoding="utf-8",
        )
    return path


def cmd_open(args: list[str]) -> int:
    if args:
        subject = subject_key(args[0])
    else:
        subject = choose("Subject", [(key, data[1]) for key, data in SUBJECTS.items()])

    allowed = SUBJECTS[subject][2]
    if len(args) >= 2:
        area = args[1].lower()
    elif len(allowed) == 1:
        area = allowed[0]
    else:
        area = choose("Type", [(key, key.upper()) for key in allowed])

    sheet = exercise = None
    if area in {"td", "tp"}:
        sheet_label = "Fiche" if area == "td" else "TP"
        sheet = parse_positive_int(args[2], sheet_label) if len(args) >= 3 else ask_positive_int(sheet_label)
        exercise = parse_positive_int(args[3], "exercise") if len(args) >= 4 else ask_positive_int("Exercise")
        if len(args) > 4:
            die("too many arguments")
    elif len(args) > 2:
        die("too many arguments")

    path = create_or_reopen(subject, area, sheet, exercise)
    editor = os.environ.get("EDITOR") or os.environ.get("MIDL_EDITOR") or "nvim"
    if not have(editor.split()[0]):
        die(f"editor '{editor}' is not installed")
    print(rel(path))
    return subprocess.call(editor.split() + [path.name], cwd=path.parent)

def cmd_doctor() -> int:
    checks = {name: have(name) for name in ("git", "python3", "typst", "rclone", "nvim")}
    ok = True
    for name, present in checks.items():
        print(f"{'OK' if present else 'MISSING':<8} {name}")
        ok &= present
    if checks["rclone"]:
        proc = run(["rclone", "lsd", REMOTE], check=False, capture=True)
        remote_ok = proc.returncode == 0
        print(f"{'OK' if remote_ok else 'ERROR':<8} {REMOTE}")
        ok &= remote_ok
    return 0 if ok else 1


def print_help() -> None:
    print("""MIDL

Study:
  midl fvr cm
  midl md td 2 6
  midl pn tp 1 3
  midl            interactive chooser

TD / TP:
  midl <subject> td <fiche> <exercise>
  midl <subject> tp <tp> <exercise>

End of session:
  make
  midl status
  midl push

Other:
  midl doctor
  midl help
""")


def main() -> int:
    args = sys.argv[1:]
    if not args:
        return cmd_open([])
    command = args[0].lower()
    if command in {"help", "-h", "--help"}:
        print_help(); return 0
    if command == "status":
        return cmd_status()
    if command == "push":
        return cmd_push()
    if command == "compile":
        return cmd_compile()
    if command == "doctor":
        return cmd_doctor()
    return cmd_open(args)


if __name__ == "__main__":
    raise SystemExit(main())
