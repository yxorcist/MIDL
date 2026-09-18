# MIDL — Workspace quotidien

Cette organisation est une évolution du projet existant, pas un redémarrage.

## Rôles

### GitHub

GitHub reste la source de vérité pour :

- les sources Typst ;
- le code ;
- les Makefiles et scripts ;
- l'historique des modifications ;
- les manifests de provenance ;
- la CI.

### Google Drive

Google Drive devient l'espace de travail universel accessible depuis téléphone, ordinateur personnel ou autre appareil.

Il contient :

- les PDF générés ;
- les sujets de TD et TP ;
- les corrections ;
- les documents du professeur ;
- les fichiers de travail ;
- les ressources ;
- les sources brutes quand elles ne sont pas stockées dans Git ;
- un dossier d'entrée unique pour les nouveaux fichiers.

### Todoist

Todoist ne stocke pas le cours. Il stocke uniquement les actions à effectuer.

Une tâche doit idéalement contenir un lien direct vers le fichier ou dossier Drive nécessaire pour commencer immédiatement.

## Arborescence Drive

Le fichier `00_admin/drive-layout.txt` décrit l'arborescence créée automatiquement par :

```bash
make drive-bootstrap
```

La racine par défaut est :

```text
gdrive:MIDL
```

Les dossiers importants sont :

```text
MIDL/
├── 00_INBOX/
├── 00_ADMIN/
├── 01_methodes_discretes/
├── 02_algebre_lineaire/
├── 03_systemes_information/
├── 04_programmation_avancee/
├── 05_fonctions_variable_reelle/
├── 06_prog_numerique/
├── 07_anglais/
└── 99_ARCHIVE/
```

## 00_INBOX

`00_INBOX/` est le point d'entrée unique pour les fichiers non classés.

Principe :

```text
fichier reçu / téléchargé / photographié
→ 00_INBOX
→ inspection du contenu
→ renommage
→ classement dans la matière et le type de séance appropriés
```

Le nom d'origine n'est pas considéré comme fiable. Le contenu doit être inspecté avant classement.

## Dossiers d'une matière

Les types de séance ne sont créés que lorsqu'ils sont utiles à la matière.

Exemple mathématique :

```text
02_algebre_lineaire/
├── CM/
│   ├── notes/
│   │   ├── cours-complet.pdf
│   │   └── chapitres/
│   ├── cours_prof/
│   └── sources/
├── TD/
│   ├── sujets/
│   ├── travail/
│   └── corrections/
└── resources/
```

Exemple programmation :

```text
04_programmation_avancee/
├── CM/
├── TP/
│   ├── sujets/
│   ├── travail/
│   └── corrections/
├── PROJECTS/
└── resources/
```

## Publication des notes Typst

Les PDF générés sont publiés à deux endroits.

### Version courante

Chemins stables destinés au travail quotidien :

```text
MIDL/<matiere>/<type>/notes/cours-complet.pdf
MIDL/<matiere>/<type>/notes/chapitres/<chapitre>.pdf
```

Ces chemins restent stables entre les publications. Un Todoist peut donc pointer vers le même fichier ou dossier sans dépendre d'un timestamp.

### Archive

Chaque publication conserve aussi un snapshot immuable :

```text
MIDL/99_ARCHIVE/generated/YYYY-MM-DD_HH-MM-SS/
```

Les anciens snapshots déjà présents directement sous `MIDL/` ne sont pas déplacés automatiquement. Ils restent valides et peuvent être migrés plus tard si nécessaire.

## Flux quotidien

```text
Todoist
  ↓
tâche
  ↓
lien Drive
  ↓
support exact
  ↓
travail
  ↓
Typst / code / réponse
  ↓
GitHub + PDF Drive
```

Pour un nouveau fichier :

```text
00_INBOX
  ↓
classer / renommer
  ↓
CM, TD, TP, PROJECTS ou resources
```

## Téléphone

Le téléphone peut utiliser deux chemins complémentaires :

- Drive pour lire et ouvrir rapidement les supports ;
- Termux + Git pour modifier les sources Typst ou le code.

Le dépôt Git local n'est pas remplacé par Drive. Les deux couches restent complémentaires.

## Todoist

Le projet Todoist `MIDL` est structuré par matière.

Règle : une tâche doit décrire une action, pas stocker du contenu de cours.

Exemple :

```text
ALG — terminer TD3 ex. 6 à 10
```

La description ou un commentaire peut contenir le lien Drive vers le sujet et, si utile, vers le dossier de travail.
