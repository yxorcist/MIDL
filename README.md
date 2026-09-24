# MIDL

One boring study workflow for the whole year.

## Model

```text
GitHub = canonical editable source
dist/ = generated portable PDF tree
```

The repository keeps processed study material and the code/configuration needed to build it. Raw photographs, copied subjects, archival inputs and temporary reference documents do not belong in Git once conversion is complete.

## Canonical structure

```text
SUBJECT/
├── CM/
│   ├── cours.typ
│   ├── sessions/          # chronological capture: YYYY-MM-DD.typ
│   ├── fragments/         # canonical course content
│   ├── chapitres/         # thematic publication views, when useful
│   └── figures/           # only figures actually used by Typst
├── TD/
│   ├── fiche01/
│   │   └── exercices/
│   │       ├── ex01.typ
│   │       └── ex02.typ
│   ├── fiche02/
│   │   └── exercices/
│   └── rappels/           # optional reusable reminders
└── TP/
    └── tp01/
        └── exercices/
            └── ex01.typ
```

**CM is date-oriented. TD and TP are exercise-oriented.**

## First setup

Arch Linux:

```bash
sudo pacman -S git python typst neovim make rclone
git clone https://github.com/yxorcist/MIDL.git ~/MIDL
cd ~/MIDL
make shell-install
source ~/.zshrc
rclone config   # create a Google Drive remote named gdrive
midl doctor
```

## Daily use

CM:

```bash
midl fvr cm
```

TD:

```bash
midl md td 2 6
# -> 01_methodes_discretes/TD/fiche02/exercices/ex06.typ
```

TP:

```bash
midl pn tp 1 3
# -> 06_prog_numerique/TP/tp01/exercices/ex03.typ
```

Without the fiche/TP and exercise numbers, `midl` asks for them interactively.

Build all publishable Typst sources:

```bash
make
```

Remove all generated PDFs:

```bash
make clean
```

Generated PDFs are written under `dist/`, mirroring the source tree as closely as possible.

## Subjects

| Shortcut | Subject | Types |
| --- | --- | --- |
| `md` | Méthodes discrètes | `cm td` |
| `al` | Algèbre linéaire | `cm td` |
| `si` | Systèmes d'information | `cm td tp` |
| `pa` | Programmation avancée | `cm tp` |
| `fvr` | Fonctions d'une variable réelle | `cm td` |
| `pn` | Programmation numérique | `cm td tp` |
| `en` | Anglais | `work` |

## Google Drive mirror

Google Drive is intentionally separate from the build system.

The Drive layout is:

```text
MIDL/
├── INBOX/                  # unsorted incoming university documents
├── 01_methodes_discretes/  # static/original material
├── 02_algebre_lineaire/
├── 03_systemes_information/
├── 04_programmation_avancee/
├── 05_fonctions_variable_reelle/
├── 06_prog_numerique/
├── 07_anglais/
└── dist/                   # generated PDFs
```

Normal commands:

```bash
make
make drive
midl inbox <file-or-folder>
```

Send any local file or directory straight to Google Drive `MIDL/INBOX/`:

```bash
midl inbox ~/Downloads/TD1.pdf
midl inbox ~/Downloads/photos_cours/
```

- `make`: build changed PDFs into local `dist/`.
- `make drive`: build changed PDFs, then make Google Drive `MIDL/dist/` exactly match local `dist/`.

The default remote is `gdrive:MIDL/dist`, and `midl inbox` uses `gdrive:MIDL/INBOX`.

`midl doctor` is read-only. It checks the local toolchain, repository structure, TD/TP numbering gaps, broken Typst includes/imports, orphan CM files, source-confidence markers, PDF/build-state hygiene, and compiles every publishable Typst entry in a temporary directory. Missing `rclone`/`gdrive:` is reported as a warning because normal local study and builds do not depend on Drive.

After pulling changes to the shell integration, reload completion with:

```bash
source ~/.zshrc
```

The normal `make` command never requires rclone or Google Drive.
