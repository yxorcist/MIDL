// source-confidence: medium
// source-note: la nouvelle série de photos (10811 et 10813) complète la question 2 pour deux matrices lisibles.
// source-note: photo 10905 : matrice 3×3 et calcul du déterminant, valeur manuscrite 36 contredite par le calcul exact (15).
// source-uncertainty: les autres exemples de trace mentionnent -2 et 5, sans matrices associées suffisamment lisibles pour les vérifier.

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

=== Autre exemple : déterminant d'une matrice $3 times 3$

La copie présente la matrice

$
Q=mat(2,7,-3;-1,1,3;1,0,-1).
$

En développant selon la première ligne,

$
det(Q)
=
2 det(mat(1,3;0,-1))
-7 det(mat(-1,3;1,-1))
-3 det(mat(-1,1;1,0)).
$

On obtient

$
det(Q)
=
2(-1)-7(1-3)-3(-1)
=
-2+14+3
=
15.
$

Par conséquent, $Q$ est inversible.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Erreur dans la correction manuscrite (photo 10905).* Le résultat indiqué est $36$, mais le calcul direct donne $15$. Les coefficients ci-dessus sont ceux qui apparaissent sur la photographie. L'erreur provient de la réduction manuscrite ; le résultat original est conservé ici pour signaler l'écart.
]

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
  *Source partielle.* Les traces -2 et 5 sont mentionnées dans la copie sans que les matrices correspondantes soient visibles avec certitude. Elles ne sont pas attribuées à des matrices inventées.
]
