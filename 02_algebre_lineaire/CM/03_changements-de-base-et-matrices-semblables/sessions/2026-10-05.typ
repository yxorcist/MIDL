#import "../../style.typ": *

// source-confidence: high
// source-note: handwritten CM pages supplied in the batch of 09/10/2026.
// source-note: session date resolved from the MIDL timetable: Algèbre linéaire CM on 05/10/2026, 13:00–14:30.
// source-note: the preceding page in the batch is a duplicate of the end of the 01/10 session and is not repeated here.
// source-note: no professor CM file is present in the Google Drive course folder for cross-checking; transcription follows the handwritten source.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 05/10/2026]
  #v(0.2em)
  #text(size: 11pt)[Changement de base et rang d'une matrice]
]
#line(length: 100%)
#v(0.7em)

= Chapitre 3 — Changements de base, matrices rang-équivalentes et matrices semblables

= 3.1 — Formules de changement de base

== 3.1.1 — Matrices de passage

Soit $E$ un $K$-espace vectoriel de dimension finie $p$.

On considère deux bases de $E$ :

$
cal(E)=(e_1,dots,e_p)
$

et

$
cal(E)'=(e'_1,dots,e'_p).
$

Pour chaque $j$, on considère les coordonnées de $e'_j$ dans l'ancienne base $cal(E)$ :

$
[e'_j]_(cal(E)) in M_(p,1)(K).
$

== Définition 3.1.1

La matrice

$
P_(cal(E) -> cal(E)')
=
(
[e'_1]_(cal(E)),
dots,
[e'_p]_(cal(E))
)
$

est appelée *matrice de passage* de la base $cal(E)$ vers la base $cal(E)'$.

== Proposition 3.1.2

La matrice de passage s'écrit comme matrice de l'identité entre les deux bases :

$
P_(cal(E) -> cal(E)')
=
"Mat"_(cal(E)',cal(E))(id_E).
$

En effet, pour tout $j$,

$
id_E(e'_j)=e'_j,
$

donc les colonnes de cette matrice sont précisément les vecteurs de coordonnées

$
[e'_j]_(cal(E)).
$

== Proposition 3.1.3

La matrice $P_(cal(E) -> cal(E)')$ est inversible et

$
(P_(cal(E) -> cal(E)'))^(-1)
=
P_(cal(E)' -> cal(E)).
$

=== Preuve

En composant les deux applications identité écrites dans les bases opposées, on obtient

$
P_(cal(E) -> cal(E)')
P_(cal(E)' -> cal(E))
=
I_p.
$

Ainsi les deux matrices de passage sont inverses l'une de l'autre.

== Exemple 3.1.7

Dans $RR^3$, soit $cal(E)=(e_1,e_2,e_3)$ la base canonique et

$
e'_1=(1,0,-1),
quad
e'_2=(1,1,0),
quad
e'_3=(-1,-1,1).
$

La famille

$
cal(E)'=(e'_1,e'_2,e'_3)
$

est une base de $RR^3$.

La matrice de passage vaut

$
P_(cal(E) -> cal(E)')
=
mat(
  1, 1, -1;
  0, 1, -1;
  -1, 0, 1;
).
$

Son inverse est

$
P_(cal(E)' -> cal(E))
=
mat(
  1, -1, 0;
  1, 0, 1;
  1, -1, 1;
).
$

== Proposition 3.1.4 — Formule de changement de coordonnées

Pour tout $v in E$,

$
[v]_(cal(E)')
=
(P_(cal(E) -> cal(E)'))^(-1)
[v]_(cal(E)).
$

Autrement dit,

$
[v]_(cal(E)')
=
P_(cal(E)' -> cal(E))
[v]_(cal(E)).
$

= 3.1.2 — Formules de changement de base

Soient :

- $E$ un $K$-espace vectoriel de dimension $n$, muni de deux bases $cal(E)$ et $cal(E)'$ ;
- $F$ un $K$-espace vectoriel de dimension $m$, muni de deux bases $cal(F)$ et $cal(F)'$ ;
- $phi:E->F$ une application linéaire.

== Théorème 3.1.5 — Changement de base, cas général

La matrice de $phi$ dans les nouvelles bases est donnée par

$
"Mat"_(cal(E)',cal(F'))(phi)
=
(P_(cal(F) -> cal(F)'))^(-1)
"Mat"_(cal(E),cal(F))(phi)
P_(cal(E) -> cal(E)').
$

La démonstration consiste à écrire $phi$ comme composition avec les applications identité correspondant aux changements de base.

== Théorème 3.1.6 — Cas d'un endomorphisme

Si $phi:E->E$ est un endomorphisme, alors

$
"Mat"_(cal(E)')(phi)
=
(P_(cal(E) -> cal(E)'))^(-1)
"Mat"_(cal(E))(phi)
P_(cal(E) -> cal(E)').
$

Ainsi, deux matrices représentant le même endomorphisme dans deux bases différentes sont reliées par une conjugaison.

== Exemple 3.1.7

On reprend

$
P_(cal(E) -> cal(E)')
=
mat(
  1, 1, -1;
  0, 1, -1;
  -1, 0, 1;
)
$

et

$
A
=
"Mat"_(cal(E))(phi)
=
mat(
  4, -3, 2;
  2, -1, 2;
  -3, 3, -1;
).
$

Alors

$
"Mat"_(cal(E)')(phi)
=
P^(-1) A P
=
mat(
  2, 0, 0;
  0, 1, 0;
  0, 0, -1;
).
$

= 3.2 — Rang d'une matrice et matrices rang-équivalentes

== 3.2.1 — Compléments sur les opérations sur les lignes et les colonnes

Soit

$
A in M_n(K).
$

On rappelle les opérations élémentaires :

- multiplier une ligne ou une colonne par un scalaire non nul ;
- ajouter à une ligne ou une colonne un multiple d'une autre ligne ou colonne.

== Définition 3.2.1 — Matrices élémentaires

On note $D_i(alpha)$ la matrice diagonale obtenue à partir de $I_n$ en remplaçant l'entrée $(i,i)$ par $alpha$, avec $alpha != 0$.

On note $T_(i,j)(lambda)$ la matrice obtenue à partir de $I_n$ en plaçant $lambda$ en position $(i,j)$, avec $i != j$.

Ce sont des *matrices élémentaires*.

== Exemples 3.2.2

Pour $n=2$ :

$
D_1(alpha)
=
mat(
  alpha, 0;
  0, 1;
),
quad
D_2(alpha)
=
mat(
  1, 0;
  0, alpha;
).
$

Et

$
T_(1,2)(lambda)
=
mat(
  1, lambda;
  0, 1;
),
quad
T_(2,1)(lambda)
=
mat(
  1, 0;
  lambda, 1;
).
$

== Proposition 3.2.4

Les opérations élémentaires sur les lignes et les colonnes s'interprètent par multiplication par des matrices élémentaires.

En particulier :

- une opération sur les lignes correspond à une multiplication à gauche ;
- une opération sur les colonnes correspond à une multiplication à droite.

Par exemple,

$
D_i(alpha) A
$

multiplie la ligne $i$ de $A$ par $alpha$, tandis que

$
A D_i(alpha)
$

multiplie la colonne $i$ de $A$ par $alpha$.

== Théorème 3.2.7

Soit

$
A in M_n(K).
$

Alors $A$ est inversible si et seulement si $A$ est un produit de matrices élémentaires.

== Remarque 3.2.8

Transformer une matrice $A$ en une matrice échelonnée par des opérations élémentaires sur les lignes revient à multiplier $A$ à gauche par des matrices élémentaires.

Transformer $A$ par des opérations élémentaires sur les colonnes revient à multiplier $A$ à droite par des matrices élémentaires.

= 3.2.2 — Rang d'une matrice

== Proposition 3.2.9

Soit

$
A in M_(n,p)(K),
$

et soient

$
P in "GL"_n(K),
quad
Q in "GL"_p(K).
$

Alors

$
"rg"(P A Q)
=
"rg"(A).
$

=== Idée de la preuve

On associe à $A$ l'application linéaire

$
phi:K^p -> K^n
$

dont la matrice dans les bases canoniques est $A$.

La multiplication à droite par $Q$ correspond à composer avec un isomorphisme du domaine, et la multiplication à gauche par $P$ correspond à composer avec un isomorphisme du codomaine.

Ces compositions ne modifient pas la dimension de l'image.

Donc

$
"rg"(P A Q)
=
"rg"(A).
$

== Définition 3.2.10 — Matrices rang-équivalentes

Soient

$
A,B in M_(n,p)(K).
$

On dit que $A$ et $B$ sont *rang-équivalentes* s'il existe

$
P in "GL"_n(K)
quad "et" quad
Q in "GL"_p(K)
$

telles que

$
B=P A Q.
$

Autrement dit, $B$ s'obtient à partir de $A$ par une suite d'opérations élémentaires sur les lignes et les colonnes.

== Remarque 3.2.12

Si $A$ et $B$ sont rang-équivalentes, alors $A^T$ et $B^T$ sont rang-équivalentes.

Si, de plus, $A$ et $B$ sont inversibles, alors $A^(-1)$ et $B^(-1)$ sont rang-équivalentes.

== Proposition 3.2.14

Soit

$
A in M_(n,p)(K).
$

1. On a

   $
   "rg"(A)=r
   $

   si et seulement si $A$ est rang-équivalente à la matrice canonique

   $
   J_(n,p)(r)
   =
   mat(
     I_r, 0;
     0, 0;
   ).
   $

2. Deux matrices $A$ et $B$ de même format sont rang-équivalentes si et seulement si

   $
   "rg"(A)="rg"(B).
   $
