# Notes TD / TP

Ce dossier contient les notes Typst personnelles d'une séance.

Convention :

```text
YYYY-MM-DD_TD01.typ
YYYY-MM-DD_TP01.typ
```

Les fichiers sont des points d'entrée autonomes. Ils sont créés avec :

```bash
midl-note <matiere> td
midl-note <matiere> tp
```

Puis publiés de façon incrémentale avec :

```bash
midl-publish
```

Le PDF correspondant est envoyé au même chemin logique dans Google Drive, sous `MIDL/<matiere>/<TD|TP>/notes/`.

La suppression d'un fichier source ne supprime jamais automatiquement son PDF Drive.
