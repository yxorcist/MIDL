# Algèbre linéaire — CM

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
├── sources/
└── source_originale.typ
```

- `cours.typ` : cours complet dans l'ordre chronologique des dates inscrites sur les notes.
- `sessions/` : séances par date.
- `fragments/` : contenu mathématique canonique.
- `chapitres/` : points d'entrée pour les PDF autonomes par chapitre.
- `sources/` : provenance des photographies originales.
- `source_originale.typ` : archive historique, laissée intacte.

## Chapitres

```text
chapitres/
├── 01_espaces-vectoriels/
│   └── chapitre.typ
└── 02_applications-lineaires-et-matrices/
    └── chapitre.typ
```

- **Chapitre 1 — Espaces vectoriels** : clos avec les notes datées du 17/09/2026.
- **Chapitre 2 — Applications linéaires et matrices** : commencé dans les notes datées du 16/09/2026 et encore ouvert.

Les dates sont conservées telles qu'elles figurent sur les feuilles manuscrites, même lorsque l'ordre des chapitres et l'ordre chronologique des séances se croisent.

Le `Makefile` racine compile automatiquement le cours complet et chaque chapitre séparément.
