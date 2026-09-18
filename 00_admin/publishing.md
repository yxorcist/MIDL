# Publication des PDF vers Google Drive

Le dépôt contient un `Makefile` à la racine pour compiler les points d'entrée Typst et publier un snapshot PDF daté dans Google Drive via rclone.

Les points d'entrée reconnus sont :

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

## Utilisation normale

Depuis la racine du dépôt :

```bash
make
```

Cela :

1. cherche tous les fichiers `cours.typ` et `chapitre.typ` du dépôt ;
2. compile chacun en PDF ;
3. crée un snapshot local dans `dist/YYYY-MM-DD_HH-MM-SS/` ;
4. ajoute un `manifest.txt` avec le timestamp et le commit Git ;
5. crée le même dossier daté sous `gdrive:MIDL/` et y copie les PDF.

Exemple de résultat :

```text
2026-09-18_08-30-00/
├── manifest.txt
├── 01_methodes_discretes/
│   └── CM/
│       └── cours.pdf
├── 02_algebre_lineaire/
│   └── CM/
│       └── cours.pdf
└── 05_fonctions_variable_reelle/
    └── CM/
        ├── cours.pdf
        └── chapitres/
            └── 01_series-positives.pdf
```

Pour les chapitres, le nom du dossier contenant `chapitre.typ` devient le nom du PDF. Cela évite des fichiers génériques nommés simplement `chapitre.pdf`.

Chaque exécution utilise un nouveau dossier timestampé. Les anciens snapshots ne sont donc pas modifiés par une publication suivante.

## Commandes utiles

Compiler sans envoyer sur Google Drive :

```bash
make compile
```

Voir ce que rclone enverrait sans réellement copier :

```bash
make publish-dry-run
```

Lister les points d'entrée Typst compilés :

```bash
make list
```

Supprimer tous les snapshots locaux générés :

```bash
make clean
```

Afficher l'aide :

```bash
make help
```

## Changer la destination Drive

La destination peut être remplacée pour une exécution :

```bash
make publish REMOTE=gdrive:documents/MIDL
```

Attention à la syntaxe rclone : `gdrive:` désigne le remote Google Drive ; `gdrive` sans `:` désigne un chemin local.

## CI

GitHub Actions exécute uniquement `make compile`. La CI vérifie donc le même chemin de compilation utilisé localement, y compris les PDF de chapitre, mais ne possède aucun accès au Google Drive personnel et ne publie rien avec rclone.
