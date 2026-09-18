# Chapitres

Ce dossier contient des **vues de publication par chapitre**.

Principe :

- les notes sources restent dans `fragments/` ;
- les séances chronologiques restent dans `sessions/` ;
- un chapitre ne duplique pas le contenu : son `chapitre.typ` réutilise les fragments existants ;
- chaque `chapitre.typ` est compilé séparément en un PDF par le `Makefile` racine.

Structure :

```text
chapitres/
└── 01_series-positives/
    └── chapitre.typ
```

Les chapitres suivants doivent suivre le même modèle.
