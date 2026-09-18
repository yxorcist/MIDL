# Publication des PDF vers Google Drive

La publication quotidienne est désormais **incrémentale**.

## Commande normale

```bash
make
```

ou :

```bash
midl-publish
```

Le système :

1. récupère l'état partagé depuis `MIDL/00_ADMIN/build-state.json` si disponible ;
2. découvre les points d'entrée publiables ;
3. calcule une empreinte SHA-256 de chaque source et de ses dépendances locales ;
4. compile uniquement les fichiers `NEW` ou `CHANGED` ;
5. envoie uniquement les PDF concernés avec `rclone copyto` ;
6. met à jour l'état partagé.

Aucune suppression automatique n'est effectuée.

## Points d'entrée reconnus

- tout `cours.typ` ;
- tout `chapitre.typ` ;
- `<matiere>/TD/notes/*.typ` ;
- `<matiere>/TP/notes/*.typ` ;
- tout fichier Typst contenant `// midl: publish` dans ses cinq premières lignes.

## Destinations stables

Cours complet :

```text
MIDL/<matiere>/CM/notes/cours-complet.pdf
```

Chapitre :

```text
MIDL/<matiere>/CM/notes/chapitres/<chapitre>.pdf
```

TD / TP :

```text
MIDL/<matiere>/TD/notes/YYYY-MM-DD_TDNN.pdf
MIDL/<matiere>/TP/notes/YYYY-MM-DD_TPNN.pdf
```

Une nouvelle publication remplace uniquement le PDF correspondant au même chemin.

## État partagé multi-appareils

Le fichier :

```text
MIDL/00_ADMIN/build-state.json
```

contient les empreintes des dernières versions effectivement publiées.

Il permet à un autre appareil configuré avec le même dépôt et le même remote rclone de savoir immédiatement ce qui est déjà publié.

L'état local est mis en cache dans :

```text
.midl/build-state.json
```

et les PDF temporaires locaux dans :

```text
.midl/build/
```

Le dossier `.midl/` est ignoré par Git.

## Dépendances

L'empreinte d'un point d'entrée inclut les fichiers locaux référencés par les chaînes de chemin Typst, notamment :

- `.typ` ;
- images `.png`, `.jpg`, `.jpeg`, `.svg` ;
- données `.csv`, `.json`, `.yaml`, `.yml`, `.txt`.

Les imports Typst de paquets `@...` ne sont pas inclus dans l'empreinte locale.

Ainsi, modifier un fragment ou un style référencé invalide automatiquement les PDF qui en dépendent.

## États

```text
NEW        jamais publié
CHANGED    source ou dépendance modifiée
UNCHANGED  aucune action
ORPHAN     source absente ; PDF Drive conservé
```

Un `ORPHAN` n'est jamais supprimé automatiquement.

## Commandes

```bash
make status
make publish
make publish-dry-run
make compile
make snapshot
make doctor
```

- `make status` : compare le dépôt à l'état partagé ;
- `make publish` : publication incrémentale normale ;
- `make publish-dry-run` : montre les changements sans compiler ni envoyer ;
- `make compile` : recompile tous les points d'entrée localement, sans modifier l'état de publication ;
- `make snapshot` : reconstruit toute la bibliothèque puis la copie dans `99_ARCHIVE/generated/<timestamp>/` ;
- `make doctor` : vérifie les outils et le remote.

## Drive bootstrap

```bash
make drive-bootstrap
```

crée les dossiers absents listés dans `00_admin/drive-layout.txt`.

La commande est additive et n'efface rien.

## Installation shell

```bash
make shell-install
source ~/.zshrc
```

Cela active :

```bash
midl al td
midl-note al td
midl-status
midl-publish
midl-watch
midl-doctor
```

## Sécurité

La publication n'utilise jamais `rclone sync`.

Les dossiers de supports professeur, sujets, corrections, ressources, Inbox et archives ne sont jamais supprimés par le publisher.

## CI

GitHub Actions continue d'appeler :

```bash
make compile
```

Dans un checkout CI propre, cette commande compile tous les points d'entrée publiables sans accès à Google Drive.
