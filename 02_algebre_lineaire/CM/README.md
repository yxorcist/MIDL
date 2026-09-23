# Algèbre linéaire — CM

## Organisation

```text
CM/
├── cours.typ
├── style.typ
├── sessions/
├── fragments/
├── chapitres/
└── figures/
```

- `cours.typ` suit l'ordre chronologique des séances.
- `sessions/` regroupe les séances par date.
- `fragments/` contient le contenu mathématique canonique.
- `chapitres/` fournit les points d'entrée thématiques pour les PDF autonomes.
- `figures/` contient uniquement les figures réellement utilisées.

Les fichiers d'entrée ayant servi à la conversion ne sont pas archivés dans le dépôt.

Le `Makefile` racine compile automatiquement le cours complet et chaque chapitre.
