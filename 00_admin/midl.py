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
INCLUDE_RE = re.compile(r"""#(?:include|import)\s+["']([^"']+)["']""")
EXERCISE_PATH_RE = re.compile(
    r"^[0-9]{2}_[^/]+/(?:TD/fiche[0-9]{2}|TP/tp[0-9]{2})/exercices/ex[0-9]{2}\.typ$"
)
CONFIDENCE_RE = re.compile(r"^\s*//\s*source-confidence:\s*([A-Za-z_-]+)", re.M)
UNCERTAINTY_RE = re.compile(r"^\s*//\s*source-uncertainty:", re.M)

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
        "[0-9][0-9]_*/CM/[0-9][0-9]_*/chapitre.typ",
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
    source_rel = source.resolve().relative_to(ROOT.resolve())
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


def cm_chapters(base: Path) -> list[Path]:
    cm = base / "CM"
    if not cm.is_dir():
        return []

    return sorted(
        (
            path
            for path in cm.iterdir()
            if path.is_dir()
            and re.fullmatch(r"[0-9]{2}_.+", path.name)
            and (path / "chapitre.typ").is_file()
        ),
        key=lambda path: path.name,
    )


def select_cm_chapter(base: Path, token: str | None = None) -> Path:
    chapters = cm_chapters(base)
    if not chapters:
        die(
            f"no CM chapter exists for {base.name}; "
            "create CM/01_<chapter>/chapitre.typ first"
        )

    if token is None:
        return chapters[-1]

    raw = token.strip()
    if raw.isdigit():
        prefix = f"{int(raw):02d}_"
        matches = [path for path in chapters if path.name.startswith(prefix)]
    else:
        matches = [
            path
            for path in chapters
            if path.name == raw or path.name.startswith(raw)
        ]

    if len(matches) == 1:
        return matches[0]

    available = ", ".join(path.name for path in chapters)
    die(f"unknown or ambiguous CM chapter '{token}'; available: {available}")


def ensure_chapter_include(chapter: Path, session: Path) -> None:
    include = f'#include "sessions/{session.name}"'
    text = chapter.read_text(encoding="utf-8")

    if include not in text:
        chapter.write_text(text.rstrip() + "\n" + include + "\n", encoding="utf-8")


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
    chapter_token: str | None = None,
) -> Path:
    folder, display, allowed = SUBJECTS[subject]
    if area not in allowed:
        die(f"'{area}' is not used for {display}; choose: {', '.join(allowed)}")

    today = date.today().isoformat()
    base = ROOT / folder

    if area == "cm":
        chapter_dir = select_cm_chapter(base, chapter_token)
        sessions = chapter_dir / "sessions"
        sessions.mkdir(parents=True, exist_ok=True)
        path = sessions / f"{today}.typ"

        if not path.exists():
            path.write_text(
                '#import "../../style.typ": *\n\n'
                f'= CM — {today}\n\n',
                encoding="utf-8",
            )

        ensure_chapter_include(chapter_dir / "chapitre.typ", path)
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
    chapter_token = None

    if area == "cm":
        chapter_token = args[2] if len(args) >= 3 else None
        if len(args) > 3:
            die("too many arguments")
    elif area in {"td", "tp"}:
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

    path = create_or_reopen(subject, area, sheet, exercise, chapter_token)
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
    errors = 0
    warnings = 0

    def report(level: str, message: str) -> None:
        nonlocal errors, warnings
        print(f"{level:<5} {message}")
        if level == "ERROR":
            errors += 1
        elif level == "WARN":
            warnings += 1

    def detail(message: str) -> None:
        print(f"      {message}")

    print("Environment")

    for name in ("git", "python3", "typst", "make"):
        report("OK" if have(name) else "ERROR", name)

    editor = os.environ.get("MIDL_EDITOR") or os.environ.get("EDITOR") or "nvim"
    editor_cmd = editor.split()[0]
    report(
        "OK" if have(editor_cmd) else "ERROR",
        f"editor ({editor_cmd})",
    )

    if have("rclone"):
        result = subprocess.run(
            ["rclone", "listremotes"],
            cwd=ROOT,
            text=True,
            capture_output=True,
            check=False,
        )
        remotes = {line.strip() for line in result.stdout.splitlines()}
        if result.returncode != 0:
            report("WARN", "rclone installed but configuration could not be read")
        elif "gdrive:" in remotes:
            report("OK", "rclone remote gdrive:")
        else:
            report("WARN", "rclone remote gdrive: missing (Drive commands unavailable)")
    else:
        report("WARN", "rclone missing (Drive commands unavailable)")

    print("\nRepository")

    for folder, display, _ in SUBJECTS.values():
        report(
            "OK" if (ROOT / folder).is_dir() else "ERROR",
            f"{display}: {folder}/",
        )

    git_branch = subprocess.run(
        ["git", "branch", "--show-current"],
        cwd=ROOT,
        text=True,
        capture_output=True,
        check=False,
    ).stdout.strip()
    git_status = subprocess.run(
        ["git", "status", "--porcelain"],
        cwd=ROOT,
        text=True,
        capture_output=True,
        check=False,
    )
    changed = [line for line in git_status.stdout.splitlines() if line.strip()]
    report("OK", f"git branch {git_branch or '(detached)'}")
    if changed:
        report("WARN", f"working tree has {len(changed)} uncommitted change(s)")
    else:
        report("OK", "working tree clean")

    typ_files = sorted(
        (
            path.resolve()
            for path in ROOT.glob("[0-9][0-9]_*/**/*.typ")
            if not any(part in {".git", ".midl", "dist"} for part in path.parts)
        ),
        key=rel,
    )

    legacy_cm = [
        path
        for path in typ_files
        if re.search(
            r"/CM/(?:cours\.typ$|fragments/|sessions/|chapitres/)",
            rel(path),
        )
    ]
    if legacy_cm:
        report("ERROR", f"{len(legacy_cm)} legacy CM file(s) remain")
        for path in legacy_cm:
            detail(rel(path))
    else:
        report("OK", "CM contains no legacy cours/fragments/global-sessions/chapitres")

    chapter_files = sorted(
        ROOT.glob("[0-9][0-9]_*/CM/[0-9][0-9]_*/chapitre.typ"),
        key=rel,
    )
    if chapter_files:
        report("OK", f"{len(chapter_files)} CM chapter(s) use chapter/session layout")
    else:
        report("WARN", "no CM chapters found")

    malformed_chapters = [
        path
        for path in typ_files
        if path.name == "chapitre.typ"
        and "/CM/" in rel(path)
        and not re.fullmatch(
            r"[0-9]{2}_[^/]+/CM/[0-9]{2}_[^/]+/chapitre\.typ",
            rel(path),
        )
    ]
    if malformed_chapters:
        report("ERROR", f"{len(malformed_chapters)} malformed CM chapter path(s)")
        for path in malformed_chapters:
            detail(rel(path))
    else:
        report("OK", "CM chapter paths")

    malformed: list[Path] = []
    for path in typ_files:
        path_rel = rel(path)
        if (
            ("/TD/" in path_rel or "/TP/" in path_rel)
            and path.name.startswith("ex")
            and path.suffix == ".typ"
            and not EXERCISE_PATH_RE.fullmatch(path_rel)
        ):
            malformed.append(path)

    if malformed:
        report("ERROR", f"{len(malformed)} malformed TD/TP exercise path(s)")
        for path in malformed:
            detail(rel(path))
    else:
        report("OK", "TD/TP exercise paths")

    broken_includes: list[tuple[Path, str]] = []
    for path in typ_files:
        try:
            source_text = path.read_text(encoding="utf-8")
        except (OSError, UnicodeDecodeError):
            report("ERROR", f"cannot read {rel(path)}")
            continue

        for token in INCLUDE_RE.findall(source_text):
            if token.startswith("@"):
                continue

            candidate = (
                ROOT / token.lstrip("/")
                if token.startswith("/")
                else path.parent / token
            ).resolve()

            try:
                candidate.relative_to(ROOT.resolve())
            except ValueError:
                broken_includes.append((path, token))
                continue

            if not candidate.is_file():
                broken_includes.append((path, token))

    if broken_includes:
        report("ERROR", f"{len(broken_includes)} broken Typst include/import path(s)")
        for path, token in broken_includes:
            detail(f"{rel(path)} -> {token}")
    else:
        report("OK", "Typst include/import paths")

    numbering_gaps: list[tuple[Path, list[int]]] = []
    exercise_dirs = list(
        ROOT.glob("[0-9][0-9]_*/TD/fiche[0-9][0-9]/exercices")
    ) + list(
        ROOT.glob("[0-9][0-9]_*/TP/tp[0-9][0-9]/exercices")
    )

    for folder in sorted(exercise_dirs, key=rel):
        numbers = sorted(
            int(match.group(1))
            for path in folder.glob("ex*.typ")
            if (match := re.fullmatch(r"ex([0-9]+)\.typ", path.name))
        )
        if not numbers:
            continue

        missing = [number for number in range(1, max(numbers) + 1) if number not in numbers]
        if missing:
            numbering_gaps.append((folder, missing))

    if numbering_gaps:
        report("WARN", f"{len(numbering_gaps)} exercise numbering gap(s)")
        for folder, missing in numbering_gaps:
            detail(f"{rel(folder)}: missing " + ", ".join(f"ex{n:02d}" for n in missing))
    else:
        report("OK", "exercise numbering contiguous")

    entries = discover_entries()
    referenced: set[Path] = set()
    for source in entries:
        referenced.update(dependencies(source))

    cm_sessions = [
        path
        for path in typ_files
        if re.fullmatch(
            r"[0-9]{2}_[^/]+/CM/[0-9]{2}_[^/]+/sessions/[^/]+\.typ",
            rel(path),
        )
    ]
    orphan_cm = [path for path in cm_sessions if path not in referenced]

    if orphan_cm:
        report("WARN", f"{len(orphan_cm)} orphan CM session(s)")
        for path in orphan_cm:
            detail(rel(path))
    else:
        report("OK", "no orphan CM sessions")

    confidence_counts: dict[str, int] = {}
    uncertainty_files: list[Path] = []
    uncertainty_markers = 0

    for path in typ_files:
        try:
            source_text = path.read_text(encoding="utf-8")
        except (OSError, UnicodeDecodeError):
            continue

        for match in CONFIDENCE_RE.finditer(source_text):
            level = match.group(1).lower()
            confidence_counts[level] = confidence_counts.get(level, 0) + 1

        marker_count = len(UNCERTAINTY_RE.findall(source_text))
        uncertainty_markers += marker_count
        if marker_count:
            uncertainty_files.append(path)

    high = confidence_counts.get("high", 0)
    medium = confidence_counts.get("medium", 0)
    low = confidence_counts.get("low", 0)
    report(
        "WARN" if medium or low or uncertainty_markers else "OK",
        (
            "source confidence: "
            f"{high} high, {medium} medium, {low} low; "
            f"{uncertainty_markers} uncertainty marker(s)"
        ),
    )
    for path in uncertainty_files:
        detail(rel(path))

    outside_pdfs = sorted(
        (
            path
            for path in ROOT.glob("[0-9][0-9]_*/**/*.pdf")
            if "dist" not in path.parts
        ),
        key=rel,
    )

    if outside_pdfs:
        report("WARN", f"{len(outside_pdfs)} PDF(s) outside dist/")
        for path in outside_pdfs:
            detail(rel(path))
    else:
        report("OK", "no generated PDFs outside dist/")

    legacy_build = ROOT / ".midl" / "build"
    if legacy_build.exists():
        report("WARN", "legacy .midl/build/ directory still exists")
    else:
        report("OK", "no legacy build directory")

    expected_outputs = {
        (BUILD_DIR / output_rel(source)).resolve(): source
        for source in entries
    }

    if not BUILD_DIR.exists():
        report("WARN", f"dist/ missing ({len(entries)} artifact(s) need make)")
    else:
        state = load_build_state()
        missing_outputs: list[Path] = []
        stale_outputs: list[Path] = []

        for output, source in expected_outputs.items():
            if not output.is_file():
                missing_outputs.append(output)
                continue

            if state.get(rel(source)) != fingerprint(source):
                stale_outputs.append(output)

        extra_outputs = sorted(
            (
                path.resolve()
                for path in BUILD_DIR.rglob("*.pdf")
                if path.resolve() not in expected_outputs
            ),
            key=rel,
        )

        if missing_outputs:
            report("WARN", f"{len(missing_outputs)} expected PDF(s) missing from dist/")
        else:
            report("OK", f"{len(expected_outputs)} expected PDF(s) present")

        if stale_outputs:
            report("WARN", f"{len(stale_outputs)} stale PDF(s); run make")
        else:
            report("OK", "dist/ matches incremental build state")

        if extra_outputs:
            report("WARN", f"{len(extra_outputs)} extra PDF(s) in dist/")
            for path in extra_outputs:
                detail(rel(path))
        else:
            report("OK", "no extra PDFs in dist/")

    print("\nTypst validation")

    if have("typst"):
        import tempfile

        failures: list[tuple[Path, str]] = []
        with tempfile.TemporaryDirectory(prefix="midl-doctor-") as tmp:
            tmpdir = Path(tmp)

            for index, source in enumerate(entries):
                output = tmpdir / f"{index:04d}.pdf"
                result = subprocess.run(
                    [
                        "typst",
                        "compile",
                        "--root",
                        str(ROOT),
                        str(source),
                        str(output),
                    ],
                    cwd=ROOT,
                    text=True,
                    capture_output=True,
                    check=False,
                )

                if result.returncode != 0:
                    message = next(
                        (
                            line.strip()
                            for line in result.stderr.splitlines()
                            if line.strip().startswith("error:")
                        ),
                        f"typst exited with status {result.returncode}",
                    )
                    failures.append((source, message))

        if failures:
            report("ERROR", f"{len(failures)} publishable Typst source(s) fail to compile")
            for source, message in failures:
                detail(f"{rel(source)}: {message}")
        else:
            report("OK", f"{len(entries)} publishable Typst source(s) compile")
    else:
        report("ERROR", "Typst validation unavailable")

    if errors:
        print(f"\nResult: UNHEALTHY — {errors} error(s), {warnings} warning(s)")
        return 1

    if warnings:
        print(f"\nResult: HEALTHY WITH WARNINGS — {warnings} warning(s)")
        return 0

    print("\nResult: HEALTHY")
    return 0


def print_help() -> None:
    print("""MIDL

Study:
  midl fvr cm          # latest CM chapter
  midl fvr cm 1        # specific CM chapter
  midl md td 2 6
  midl pn tp 1 3
  midl            interactive chooser

CM:
  midl <subject> cm [chapter]

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
