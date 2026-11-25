// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 6.
// source-note: photos 13266 et 13273 : caractéristique de A, espaces propres des matrices A et B.
// source-verification: spectres, dimensions et bases des espaces propres recalculés algébriquement.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 6 — Valeurs et vecteurs propres de deux matrices

On considère
$
A=mat(1,0,0;-1,1,-1;1,0,2),
quad
B=mat(1,3,3;-1,1,-1;1,0,2).
$

Pour une valeur propre $lambda$ de $T$, l'espace propre est $E_T(lambda)=ker(T-lambda I_3)$.

== 1. Première matrice : $A$

En développant $det(lambda I_3-A)$,
$
chi_A(lambda)=(lambda-1)^2(lambda-2).
$
Ainsi, $1$ est de multiplicité algébrique $2$ et $2$ est simple.

=== Espace propre de $lambda=1$

$
A-I_3=mat(0,0,0;-1,0,-1;1,0,1).
$
Le système se réduit à $x+z=0$, avec $y$ arbitraire :
$
E_A(1)="Vect"(mat(-1;0;1),mat(0;1;0)).
$
Sa dimension est $2$.

=== Espace propre de $lambda=2$

$
A-2I_3=mat(-1,0,0;-1,-1,-1;1,0,0).
$
On obtient $x=0$ et $y=-z$ :
$
E_A(2)="Vect"(mat(0;-1;1)).
$

La somme des dimensions des espaces propres est $2+1=3$. *La matrice $A$ est diagonalisable* (sur $RR$ et sur $CC$).

== 2. Seconde matrice : $B$

En développant le déterminant,
$
chi_B(lambda)=(lambda-1)^2(lambda-2).
$
Les valeurs propres et leurs multiplicités algébriques sont les mêmes que pour $A$.

=== Espace propre de $lambda=1$

$
B-I_3=mat(0,3,3;-1,0,-1;1,0,1).
$
Les équations imposent $x=-z$, $y=-z$ :
$
E_B(1)="Vect"(mat(-1;-1;1)).
$
La dimension de cet espace propre est $1$ (et non $2$).

=== Espace propre de $lambda=2$

$
B-2I_3=mat(-1,3,3;-1,-1,-1;1,0,0).
$
Les équations donnent $x=0$, puis $y=-z$ :
$
E_B(2)="Vect"(mat(0;-1;1)).
$

On a
$
dim E_B(1)+dim E_B(2)=1+1=2<3.
$
Donc *$B$ n'est pas diagonalisable*, même sur $CC$.

== Critère à retenir

La *multiplicité géométrique* est $m_g(lambda)=dim ker(T-lambda I)$ ; elle ne dépasse jamais la multiplicité algébrique $m_a(lambda)$. Une matrice est diagonalisable lorsque son polynôme caractéristique est scindé et que, pour chaque valeur propre, $m_g(lambda)=m_a(lambda)$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Photos 13266, 13273 et fiche officielle TD04, exercice 6. Les espaces propres et les signes de leurs vecteurs de base ont été vérifiés par multiplication directe.
]
