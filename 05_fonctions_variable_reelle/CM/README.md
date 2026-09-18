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

Le chapitre 1 est clos au 17/09/2026 :

```text
chapitres/01_series-positives/chapitre.typ
```

Le `Makefile` racine compile automatiquement ce point d'entrée en PDF séparé, en plus du cours complet.

## Compilation

Depuis la racine du dépôt :

```bash
make compile
```

Pour compiler uniquement le chapitre 1 manuellement :

```bash
typst compile 05_fonctions_variable_reelle/CM/chapitres/01_series-positives/chapitre.typ
```
