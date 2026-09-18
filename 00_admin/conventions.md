# MIDL — Conventions du dépôt

## Principe absolu

Les notes de cours existantes sont des sources précieuses. Une réorganisation du dépôt ne doit jamais modifier leur contenu mathématique ou textuel.

- Les fichiers existants dans `fragments/` restent inchangés lors des réorganisations.
- Les photos/scans dans `sources/` sont conservés byte-for-byte ; seuls leurs chemins peuvent être réorganisés.
- `source_originale.typ`, lorsqu'il existe, reste une archive intacte.
- Toute correction de fond d'une note existante doit être explicitement demandée.

## Structure d'un enseignement

Chaque matière est séparée par type de séance (`CM`, `TD`, `TP`) lorsque ces catégories existent.

Pour un cours Typst :

```text
CM/
├── cours.typ
├── style.typ
├── sessions/
├── fragments/
├── chapitres/       # optionnel, vues de publication par chapitre
├── figures/
└── sources/
```

- `cours.typ` contient les réglages globaux et construit le cours complet dans l'ordre chronologique des `sessions/`.
- `sessions/YYYY-MM-DD.typ` représente une séance et inclut ses fragments dans l'ordre.
- `fragments/YYYY-MM-DD_XX_topic.typ` contient le contenu réel du cours.
- `sources/YYYY-MM-DD/` contient les photos originales de la séance ou, lorsque l'upload binaire n'est pas possible, un manifeste de provenance vers l'archive des originaux.
- `figures/` contient uniquement les figures utilisées par le cours.

### Vues par chapitre

Lorsqu'une matière est organisée en chapitres, utiliser :

```text
chapitres/
└── 01_nom-du-chapitre/
    └── chapitre.typ
```

Le fichier `chapitre.typ` est un **point d'entrée de publication**. Il réutilise les fragments existants ; il ne doit pas dupliquer ni devenir une seconde source du contenu.

Cette séparation permet de conserver simultanément :

- le cours complet et chronologique via `cours.typ` ;
- un PDF autonome pour chaque chapitre via `chapitre.typ`.

Lorsqu'un chapitre est terminé, son point d'entrée doit rester stable. Les nouvelles séances du chapitre suivant sont ajoutées au cours complet sans modifier le PDF du chapitre précédent, sauf correction explicitement demandée.

## Conversion des notes manuscrites

Pour chaque nouvelle série de photos :

1. identifier la matière, le type de séance, la date et l'ordre des pages ;
2. reconstruire fidèlement le contenu ;
3. préserver définitions, raisonnements, démonstrations, exemples et étapes intermédiaires ;
4. ne pas inventer les passages illisibles ;
5. découper le contenu en fragments logiques ;
6. créer ou mettre à jour le fichier de séance ;
7. ajouter la séance à `cours.typ` si nécessaire ;
8. si la séance clôt un chapitre, créer ou mettre à jour son point d'entrée `chapitre.typ` ;
9. compiler tous les points d'entrée avant intégration dans `main`.

## Nommage

Fragments :

```text
YYYY-MM-DD_XX_topic.typ
```

Séances :

```text
YYYY-MM-DD.typ
```

Sources :

```text
sources/YYYY-MM-DD/page-01.jpg
sources/YYYY-MM-DD/page-02.jpg
```

Chapitres :

```text
chapitres/01_nom-du-chapitre/chapitre.typ
```

## Validation

La branche `main` ne doit recevoir que des modifications dont les points d'entrée Typst concernés compilent avec succès. Le workflow GitHub Actions du dépôt compile automatiquement les fichiers `cours.typ` et `chapitre.typ`.


## Workspace externe

Le dépôt Git et le workspace Google Drive ont des rôles différents.

- GitHub reste la source de vérité pour Typst, code, configuration, provenance et historique.
- Drive est l'espace de consommation et de travail multi-appareils : PDF générés, sujets, corrections, documents professeur, ressources et fichiers en cours.
- Todoist contient uniquement les actions et des liens vers les supports ; il ne remplace ni Git ni Drive.

La structure Drive est décrite dans `00_admin/workspace.md` et `00_admin/drive-layout.txt`.

### Inbox

Tout fichier reçu sans classement certain peut être déposé dans :

```text
MIDL/00_INBOX/
```

Il doit être inspecté avant renommage et déplacement. Ne pas déduire le sujet ou le type de séance à partir du seul nom de fichier lorsque le contenu permet une vérification.

### Compatibilité avec l'existant

Une évolution du workspace ne doit pas provoquer une migration destructive.

- ne pas déplacer automatiquement les anciens snapshots ;
- ne pas supprimer les PDF ou ressources déjà présents sur Drive ;
- créer les nouvelles structures de façon additive ;
- conserver les mêmes dossiers de matières que dans le dépôt lorsque cela améliore la correspondance Git ↔ Drive.
