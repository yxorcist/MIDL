# Publication des PDF vers Google Drive

Le dépôt contient un `Makefile` à la racine pour compiler les points d'entrée Typst et publier les PDF vers Google Drive via rclone.

L'évolution actuelle ajoute une couche de **workspace stable** sans supprimer l'ancien principe de snapshots.

## Principe

Deux sorties sont produites :

1. des chemins stables destinés au travail quotidien ;
2. un snapshot daté destiné à l'archive.

Les points d'entrée reconnus restent :

- `cours.typ` : cours complet d'une matière ;
- `chapitre.typ` : PDF autonome d'un chapitre.

## Prérequis locaux

```bash
sudo pacman -S make rclone
```

Typst doit aussi être installé et accessible dans `PATH`.

Le remote rclone attendu par défaut est :

```text
gdrive:
```

La destination par défaut est :

```text
gdrive:MIDL
```

## Bootstrap du workspace Drive

L'arborescence déclarative se trouve dans :

```text
00_admin/drive-layout.txt
```

Pour créer les dossiers manquants sans supprimer ni déplacer les fichiers existants :

```bash
make drive-bootstrap
```

La commande utilise uniquement `rclone mkdir`. Elle est donc additive et idempotente.

## Utilisation normale

Depuis la racine du dépôt :

```bash
make
```

Cela :

1. cherche tous les fichiers `cours.typ` et `chapitre.typ` ;
2. compile chacun en PDF ;
3. crée un snapshot local dans `dist/YYYY-MM-DD_HH-MM-SS/` ;
4. vérifie/crée l'arborescence Drive déclarée ;
5. met à jour les PDF stables utilisés au quotidien ;
6. archive aussi le snapshot complet sous `99_ARCHIVE/generated/`.

## Chemins stables

Un cours complet est publié sous :

```text
MIDL/<matiere>/<type>/notes/cours-complet.pdf
```

Un chapitre est publié sous :

```text
MIDL/<matiere>/<type>/notes/chapitres/<nom-du-chapitre>.pdf
```

Exemples :

```text
MIDL/02_algebre_lineaire/CM/notes/cours-complet.pdf
MIDL/02_algebre_lineaire/CM/notes/chapitres/01_espaces-vectoriels.pdf
MIDL/05_fonctions_variable_reelle/CM/notes/chapitres/02_nombres-reels-et-suite-reelle.pdf
```

Ces chemins sont stables : une publication suivante remplace le PDF courant en place au lieu de créer un nouveau chemin de travail.

Cela permet notamment d'utiliser les mêmes dossiers ou fichiers comme destinations depuis Todoist.

## Archive

Chaque publication conserve aussi :

```text
MIDL/99_ARCHIVE/generated/YYYY-MM-DD_HH-MM-SS/
```

Le snapshot contient le `manifest.txt`, les cours complets et les PDF de chapitre.

Les anciens snapshots déjà publiés directement sous `MIDL/YYYY-MM-DD_HH-MM-SS/` ne sont pas déplacés automatiquement. Rien n'est détruit pendant la migration vers la nouvelle organisation.

## Commandes utiles

Compiler sans toucher à Drive :

```bash
make compile
```

Créer seulement l'arborescence Drive :

```bash
make drive-bootstrap
```

Compiler et mettre à jour seulement les PDF courants :

```bash
make publish-current
```

Publier PDF courants + archive :

```bash
make publish
```

Prévisualiser les copies sans modifier Drive :

```bash
make publish-dry-run
```

Lister les points d'entrée :

```bash
make list
```

Supprimer les snapshots locaux :

```bash
make clean
```

## Changer la destination Drive

La destination peut être remplacée pour une exécution :

```bash
make publish REMOTE=gdrive:documents/MIDL
```

Attention : `gdrive:` désigne le remote rclone ; `gdrive` sans `:` désigne un chemin local.

## Sécurité de la publication

La publication utilise `rclone copy` et `rclone copyto`, pas `rclone sync`.

Elle ne supprime donc pas les documents ajoutés manuellement dans les dossiers Drive tels que :

- `cours_prof/` ;
- `TD/sujets/` ;
- `TP/sujets/` ;
- `resources/` ;
- `00_INBOX/`.

## CI

GitHub Actions exécute uniquement :

```bash
make compile
```

La CI vérifie le chemin de compilation local, y compris les PDF de chapitre, mais ne possède aucun accès au Google Drive personnel et n'exécute ni `drive-bootstrap` ni publication rclone.
