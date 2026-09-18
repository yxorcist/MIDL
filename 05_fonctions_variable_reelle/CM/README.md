# Fonctions d'une variable réelle et intégrale

Projet Typst reconstruit à partir des notes manuscrites du CM.

## Organisation

```text
CM/
├── cours.typ
├── style.typ
├── sessions/
├── fragments/
├── chapitres/
├── figures/
└── sources/
```

- `cours.typ` : cours complet dans l'ordre chronologique des séances.
- `sessions/` : une agrégation par date.
- `fragments/` : contenu mathématique source, découpé par thème.
- `chapitres/` : vues de publication ; chaque chapitre réutilise les fragments existants et possède son propre `chapitre.typ`.
- `style.typ` : macros réutilisables.
- `sources/` : provenance des photographies originales.
- `figures/` : figures utilisées par le cours lorsqu'il y en a.

## Chapitres

```text
chapitres/
├── 01_series-positives/
│   └── chapitre.typ
└── 02_nombres-reels-et-suite-reelle/
    └── chapitre.typ
```

- **Chapitre 1 — Séries positives** : clos le 17/09/2026.
- **Chapitre 2 — Nombres réels et suite réelle** : commencé le 17/09/2026 et complété au fil des prochaines séances.

Le `Makefile` racine compile chaque `chapitre.typ` en PDF séparé, en plus du cours complet.

## Compilation

Depuis la racine du dépôt :

```bash
make compile
```

Compilation manuelle d'un chapitre :

```bash
typst compile --root . 05_fonctions_variable_reelle/CM/chapitres/02_nombres-reels-et-suite-reelle/chapitre.typ
```
