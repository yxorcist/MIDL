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

- `cours.typ` : cours complet dans l'ordre chronologique.
- `sessions/` : séances par date.
- `fragments/` : contenu mathématique canonique.
- `chapitres/` : points d'entrée pour les PDF autonomes par chapitre.
- `sources/` : provenance des photographies originales.
- `source_originale.typ` : archive historique, laissée intacte.

## Chapitres

Le chapitre 1 est désormais clos :

```text
chapitres/01_espaces-vectoriels/chapitre.typ
```

Le prochain chapitre recevra son propre dossier et son propre `chapitre.typ` dès que ses premières notes seront ajoutées.

Le `Makefile` racine compile automatiquement le cours complet et chaque chapitre séparément.
