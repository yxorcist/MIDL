// source-confidence: medium
// source-note: statement and numbering cross-checked against TD02_dependances-fonctionnelles.pdf.
// source-note: classification table and MCD are reconstructed from the handwritten correction. One handwritten identifier line is partially ambiguous; the table is treated as the more precise source.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 2 — Exercice 3 — Des DF au MCD

On repart des DF finales de l'exercice 2.

Pour conserver la numérotation de la fiche :

- 1.1 : $A -> B$ ;
- 1.2 : $A -> C$ ;
- 1.3 : $A -> D$ ;
- 1.4 : $A -> E$ ;
- 3.1 : $B -> G$ ;
- 3.2 : $B -> H$ ;
- 3.3 : $B -> I$ ;
- 4.1 : $(I,J) -> M$ ;
- 4.2 : $(I,J) -> N$ ;
- 5.1 : $E -> N$ ;
- 5.2 : $E -> O$ ;
- 5.3 : $E -> P$.

== 1. Rubriques identifiantes

La ligne manuscrite cite explicitement $A$, $B$, $E$ et la source composée $(I,J)$. Le tableau de classification fait également apparaître $N$ comme cible identifiante via 5.1.

La reconstruction du MCD ci-dessous suit donc le tableau, qui est plus précis que cette ligne abrégée.

== 2. Classification

#table(
  columns: (1.1fr, 1.5fr, 2.4fr),
  inset: 7pt,
  stroke: 0.5pt,
  align: (center, center, left),
  [*Source simple ?*], [*Cible identifiante ?*], [*DF*],
  [oui], [oui], [1.1, 1.4, 3.3, 5.1],
  [oui], [non], [1.2, 1.3, 3.1, 3.2, 5.2, 5.3],
  [non], [oui], [4.2],
  [non], [non], [4.1],
)

== 3. MCD associé

La lecture utilisée dans le croquis est la suivante :

- 1.2 et 1.3 deviennent des propriétés de l'entité identifiée par $A$ : $C$ et $D$ ;
- 3.1 et 3.2 deviennent des propriétés de l'entité identifiée par $B$ : $G$ et $H$ ;
- 5.2 et 5.3 deviennent des propriétés de l'entité identifiée par $E$ : $O$ et $P$ ;
- 1.1, 1.4, 3.3 et 5.1 relient des entités identifiantes ;
- 4.1 donne une propriété $M$ portée par l'association entre $I$ et $J$ ;
- 4.2 relie la source composée $(I,J)$ à l'entité identifiée par $N$.

#figure(
  image("../figures/ex03-mcd.svg", width: 100%),
  caption: [MCD reconstruit à partir du croquis manuscrit.],
)

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* L'entité $F$ apparaît isolée dans le croquis : après suppression de la DF non élémentaire $(B,F) -> G$, aucune DF finale ne permet de lui attribuer une autre liaison sans ajouter d'information absente de la correction.
]
