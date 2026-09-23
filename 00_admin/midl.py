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
BUILD_DIR = ROOT / "dist"
BUILD_STATE = ROOT / ".midl" / "build-state.json"
INBOX_REMOTE = os.environ.get("MIDL_INBOX_REMOTE", "gdrive:MIDL/INBOX")
PATH_RE = re.compile(r"""["']([^"']+\.(?:typ|png|jpe?g|svg|csv|json|ya?ml|txt))["']""", re.I)

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
    "methodes": "md",
    "alg": "al",
    "anglais": "en",
    "prognum": "pn",
    "proga": "pa",
    "fonctions": "fvr",
}


def run(cmd: list[str], *, check: bool = True) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, cwd=ROOT, check=check, text=True)


def have(name: str) -> bool:
    return shutil.which(name) is not None


def rel(path: Path) -> str:
    return path.resolve().relative_to(ROOT.resolve()).as_posix()


def die(message: str, code: int = 1) -> None:
    print(f"midl: {message}", file=sys.stderr)
    raise SystemExit(code)


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

    candidate = ROOT / token.lstrip("/") if token.startswith("/") else current.parent / token

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
        except (OSError, UnicodeDecodeError):
            continue

        for token in PATH_RE.findall(text):
            dependency = resolve_dependency(path, token)
            if dependency is not None and dependency not in seen:
                stack.append(dependency)

    return sorted(seen, key=rel)


def fingerprint(source: Path) -> str:
    digest = hashlib.sha256()

    for path in dependencies(source):
        name = rel(path).encode("utf-8")
        data = path.read_bytes()

        digest.update(len(name).to_bytes(4, "big"))
        digest.update(name)
        digest.update(len(data).to_bytes(8, "big"))
        digest.update(data)

    return digest.hexdigest()


def load_build_state() -> dict[str, str]:
    if not BUILD_STATE.is_file():
        return {}

    try:
        data = json.loads(BUILD_STATE.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return {}

    entries = data.get("entries", {})
    return entries if isinstance(entries, dict) else {}


def save_build_state(entries: dict[str, str]) -> None:
    BUILD_STATE.parent.mkdir(parents=True, exist_ok=True)
    BUILD_STATE.write_text(
        json.dumps({"version": 1, "entries": entries}, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def cmd_compile() -> int:
    if not have("typst"):
        die("typst is not installed")

    entries = discover_entries()
    previous = load_build_state()
    current: dict[str, str] = {}

    compiled = 0
    skipped = 0

    for source in entries:
        source_rel = rel(source)
        output = BUILD_DIR / output_rel(source)
        current_fingerprint = fingerprint(source)
        current[source_rel] = current_fingerprint

        if output.is_file() and previous.get(source_rel) == current_fingerprint:
            skipped += 1
            continue

        output.parent.mkdir(parents=True, exist_ok=True)
        print(f"[typst] {source_rel}")
        run(["typst", "compile", "--root", str(ROOT), str(source), str(output)])
        compiled += 1

    save_build_state(current)

    print(
        f"compiled {compiled} artifact(s), skipped {skipped} unchanged "
        f"-> {rel(BUILD_DIR)}/"
    )
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
            + include
            + "\n",
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
            ')\n\n'
            '= Notes\n\n',
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
        sheet = (
            parse_positive_int(args[2], sheet_label)
            if len(args) >= 3
            else ask_positive_int(sheet_label)
        )
        exercise = (
            parse_positive_int(args[3], "exercise")
            if len(args) >= 4
            else ask_positive_int("Exercise")
        )
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


def cmd_inbox(args: list[str]) -> int:
    if not args:
        die("usage: midl inbox <file-or-folder> [...]")

    if not have("rclone"):
        die("rclone is not installed")

    for raw in args:
        source = Path(raw).expanduser().resolve()

        if not source.exists():
            die(f"not found: {raw}")

        if source.is_file():
            destination = f"{INBOX_REMOTE.rstrip('/')}/{source.name}"
            print(f"[inbox] {source} -> {destination}")
            run(["rclone", "copyto", str(source), destination, "--progress"])
            continue

        if source.is_dir():
            destination = f"{INBOX_REMOTE.rstrip('/')}/{source.name}"
            print(f"[inbox] {source}/ -> {destination}/")
            run([
                "rclone",
                "copy",
                str(source),
                destination,
                "--create-empty-src-dirs",
                "--progress",
            ])
            continue

        die(f"unsupported path type: {raw}")

    return 0


def cmd_doctor() -> int:
    checks = {name: have(name) for name in ("git", "python3", "typst", "nvim", "make", "rclone")}
    ok = True

    for name, present in checks.items():
        print(f"{'OK' if present else 'MISSING':<8} {name}")
        ok &= present

    if checks["rclone"]:
        result = subprocess.run(
            ["rclone", "listremotes"],
            cwd=ROOT,
            text=True,
            capture_output=True,
            check=False,
        )
        remotes = {line.strip() for line in result.stdout.splitlines()}
        remote_ok = "gdrive:" in remotes
        print(f"{'OK' if remote_ok else 'MISSING':<8} rclone remote gdrive:")
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

Build:
  make
  midl compile

Inbox:
  midl inbox <file-or-folder> [...]

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
        print_help()
        return 0

    if command == "compile":
        return cmd_compile()

    if command == "doctor":
        return cmd_doctor()

    if command == "inbox":
        return cmd_inbox(args[1:])

    return cmd_open(args)


if __name__ == "__main__":
    raise SystemExit(main())
