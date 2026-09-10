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
├── figures/
└── sources/
```

- `cours.typ` contient les réglages globaux et inclut uniquement les fichiers de `sessions/`.
- `sessions/YYYY-MM-DD.typ` représente une séance et inclut ses fragments dans l'ordre.
- `fragments/YYYY-MM-DD_XX_topic.typ` contient le contenu réel du cours.
- `sources/YYYY-MM-DD/` contient les photos originales de la séance.
- `figures/` contient uniquement les figures utilisées par le cours.

## Conversion des notes manuscrites

Pour chaque nouvelle série de photos :

1. identifier la matière, le type de séance, la date et l'ordre des pages ;
2. reconstruire fidèlement le contenu ;
3. préserver définitions, raisonnements, démonstrations, exemples et étapes intermédiaires ;
4. ne pas inventer les passages illisibles ;
5. découper le contenu en fragments logiques ;
6. créer ou mettre à jour le fichier de séance ;
7. ajouter la séance à `cours.typ` si nécessaire ;
8. compiler le cours complet avant intégration dans `main`.

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

## Validation

La branche `main` ne doit recevoir que des modifications dont les cours Typst concernés compilent avec succès. Le workflow GitHub Actions du dépôt compile automatiquement tous les fichiers `cours.typ`.
