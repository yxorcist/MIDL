// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 3.
// source-note: photos 13254 et 13258 : invariants trace, déterminant et rang ; argument 2I semblable à lui-même.
// source-verification: trace, rang et déterminant recalculés sur les matrices officielles.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 3 — Matrices semblables

== Définition et invariants

Deux matrices carrées $A,B in M_n(KK)$ sont *semblables* s'il existe $P in "GL"_n(KK)$ tel que
$
B=P^(-1) A P.
$

La similitude conserve notamment *le rang, la trace, le déterminant, le polynôme caractéristique*, et les dimensions des espaces propres.

== a) Traces différentes

$
A=mat(1,2,1;0,2,0;3,5,1),quad
B=mat(1,2,1;0,1,0;3,5,3).
$

On a
$
"tr"(A)=1+2+1=4,
quad "tr"(B)=1+1+3=5.
$

*Conclusion : les matrices ne sont pas semblables.*

== b) Déterminants différents

$
A=mat(1,2,1;0,2,4;3,5,3),quad
B=mat(1,2,3;0,1,0;2,5,4).
$

Par développement,
$
det(A)=4,quad det(B)=-2.
$

*Conclusion : elles ne sont pas semblables.*

== c) Rangs différents

$
A=mat(1,0,0;0,2,0;0,0,0),quad
B=mat(3,0,0;0,0,0;0,0,0).
$

Les matrices diagonales ont respectivement rang $2$ et rang $1$.

*Conclusion : elles ne sont pas semblables.*

== d) Comparaison à une homothétie

$
A=mat(2,1,0;0,2,0;0,0,2),quad B=2 I_3.
$

Si $A$ était semblable à $2 I_3$, il existerait une matrice inversible $P$ telle que
$
A=P^(-1)(2 I_3)P=2 P^(-1)P=2 I_3,
$
ce qui est faux, puisque $A$ possède un coefficient non nul hors diagonale.

*Conclusion : elles ne sont pas semblables.*

== Méthode d'examen

Pour prouver que deux matrices ne sont *pas* semblables, il suffit de trouver *un* invariant différent. L'égalité des invariants usuels ne suffit en revanche pas à prouver la similitude.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Photos 13254 et 13258 ; énoncé officiel TD04, exercice 3. Les déterminants ont été recalculés pour écarter une erreur de signe.
]
