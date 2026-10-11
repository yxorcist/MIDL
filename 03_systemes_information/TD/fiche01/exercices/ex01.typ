// source-confidence: high
// source-note: statement and numbering cross-checked against TD01_dictionnaire-donnees-dcc-mcd.pdf.
// source-note: correction transcribed from the supplied handwritten page; the example dictionary table is reproduced only where readable.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 1 — Exercice 1 — Dictionnaire de données

== 1. Rubrique composée / rubrique atomique

Une *rubrique composée* est une donnée formée de plusieurs rubriques.

Une *rubrique atomique* est une donnée *indivisible* : on ne la décompose pas en informations plus petites dans le dictionnaire.

== 2. Colonnes du dictionnaire de données

Le tableau manuscrit utilise les colonnes suivantes :

- taille de la donnée ;
- code rubrique ;
- libellé ;
- nature ;
- type ;
- contraintes d'intégrité ;
- règles de calcul.

=== Exemple recopié du tableau manuscrit

#table(
  columns: (0.7fr, 0.9fr, 1.0fr, 2.2fr, 0.65fr, 0.65fr, 1.15fr),
  inset: 5pt,
  stroke: 0.5pt,
  align: (center, left, left, left, center, center, left),

  [*Taille*], [*Code*], [*Rubrique*], [*Libellé*], [*Nature*], [*Type*], [*Contrainte*],
  [—], [nomFam], [nom famille], [nom de famille de l'adhérent], [E], [A], [—],
  [—], [id], [identifiant], [numéro d'identifiant de l'adhérent], [E], [N], [$>0$],
  [—], [adr], [adresse], [adresse postale de l'adhérent], [E], [AN], [—],
  [—], [maj], [majorité], [majorité de l'adhérent], [C], [—], [—],
  [—], [dateNais], [date naissance], [date de naissance de l'adhérent], [E], [—], [—],
)

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Les codes et libellés ci-dessus sont ceux qui sont lisibles sur la photo. Les dernières colonnes du tableau manuscrit sont partiellement masquées ; elles ne sont pas complétées par supposition.
]
