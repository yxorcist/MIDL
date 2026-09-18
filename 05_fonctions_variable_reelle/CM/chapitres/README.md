# Chapitres

Ce dossier contient les **vues de publication par chapitre**.

Principe :

- les notes sources restent dans `fragments/` ;
- les séances chronologiques restent dans `sessions/` ;
- un chapitre ne duplique pas le contenu : son `chapitre.typ` réutilise les fragments existants ;
- chaque `chapitre.typ` est compilé séparément en un PDF par le `Makefile` racine.

Structure actuelle :

```text
chapitres/
├── 01_series-positives/
│   └── chapitre.typ
└── 02_nombres-reels-et-suite-reelle/
    └── chapitre.typ
```

Le chapitre 1 est clos. Le chapitre 2 reste ouvert et son point d'entrée sera complété avec les futurs fragments du même chapitre.
