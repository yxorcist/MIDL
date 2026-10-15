// source-confidence: medium
// source-note: la nouvelle série de photos (10811 et 10813) complète la question 2 pour deux matrices lisibles.
// source-uncertainty: d'autres matrices et nombres de la question 2 restent illisibles ou non vérifiables ; ils ne sont pas attribués ici.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= TD 1 — Exercice 3 — Puissances, inverse, trace et déterminant

== 1.

On considère

$
A=mat(1,-1,-1;-1,1,-1;-1,-1,1).
$

=== (a)

$
A^2
=
mat(3,-1,-1;-1,3,-1;-1,-1,3).
$

=== (b)

On constate que

$
A^2=A+2I.
$

=== (c)

À partir de

$
A^2=A+2I,
$

on obtient

$
A^2-A=2I,
$

donc

$
A(A-I)=2I.
$

Ainsi,

$
A (1/2)(A-I)=I,
$

et donc

$
A^(-1)=1/2(A-I).
$

== 2. Trace et déterminant

=== Première matrice : triangulaire

Les notes présentent

$
M=mat(-3,1,1;0,2,0;0,0,1).
$

Pour toute matrice carrée, la trace est la somme des éléments diagonaux. Ici,

$
"tr"(M)=-3+2+1=0.
$

La matrice étant triangulaire supérieure, son déterminant est le produit des éléments diagonaux :

$
det(M)=(-3) dot 2 dot 1=-6.
$

=== Matrice à paramètre

La photographie suivante donne

$
N(x)=mat(
  1,x,x^2,x^3;
  1,1,1,1;
  1,2,3,4;
  1,4,9,16
).
$

Sa trace vaut, indépendamment de $x$,

$
"tr"(N(x))=1+1+3+16=21.
$

Le calcul du déterminant indiqué dans les notes peut être mis sous la forme

$
det(N(x))=-2 x^3+6 x^2-6x+2
=-2(x-1)^3.
$

Ainsi, cette matrice est singulière si et seulement si $x=1$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source partielle.* D'autres matrices et calculs numériques apparaissent sur la même photographie, mais les coefficients ou les résultats ne peuvent pas être vérifiés avec suffisamment de certitude.
  Ils ne sont pas complétés artificiellement.
]
