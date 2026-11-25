// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 1 ; matrices reprises de TD02, exercice 6.
// source-note: photo 13252 : énoncé de l'équivalence par le rang, valeurs des six rangs et comparaison A/C.
// source-verification: tailles et rangs confrontés aux deux TD officiels.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 1 — Matrices rang-équivalentes

== Définition

Deux matrices $A,B in M_(m,n)(KK)$ sont *rang-équivalentes* s'il existe deux matrices inversibles $P in "GL"_m(KK)$ et $Q in "GL"_n(KK)$ telles que
$
B=P A Q.
$

Le critère fondamental est :
$
A " et " B " sont rang-équivalentes " <=> "rg"(A)="rg"(B),
$
*à condition d'avoir les mêmes dimensions et de travailler sur le même corps.*

== Matrices de l'exercice 6 du TD 2

#table(
  columns: (auto,auto,auto,1fr),
  inset: 6pt,
  [*Matrice*],[*Taille*],[*Rang*],[*Constat*],
  [$A$],[$3 times 3$],[2],[Deux pivots],
  [$B$],[$3 times 3$],[3],[Inversible],
  [$C$],[$3 times 3$],[2],[Deux pivots],
  [$D$],[$4 times 3$],[3],[Trois pivots],
  [$E$],[$3 times 4$],[2],[Deux pivots],
  [$F$],[$3 times 3$],[1],[Un pivot, matrice complexe],
)

*Conclusion.* $A$ et $C$ sont rang-équivalentes, car elles ont toutes deux taille $3 times 3$ et rang $2$.

Les matrices $B$ et $D$ ont toutes deux rang $3$, mais *pas les mêmes dimensions* ; elles ne sont donc pas rang-équivalentes au sens de cette définition. Il en va de même pour $A$ et $E$ malgré leur rang commun. Aucune autre paire du tableau ne satisfait simultanément les conditions.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Photo 13252 et énoncés officiels TD04 ex. 1 / TD02 ex. 6. La condition de même format est explicitée afin d'éviter la confusion entre égalité des rangs et rang-équivalence de matrices de tailles différentes.
]
