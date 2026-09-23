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
sudo pacman -S git python typst neovim make
git clone https://github.com/yxorcist/MIDL.git ~/MIDL
cd ~/MIDL
make shell-install
source ~/.zshrc
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
