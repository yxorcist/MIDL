#import "../style.typ": *

= Méthode de calcul du rang

Soit

$
U = (u_1, ..., u_k)
$

une famille de vecteurs de $E$, et posons

$
V = "Vect"(U).
$

On choisit une base

$
B
$

de $E$. Pour chaque $u_i$, on considère son vecteur de coordonnées

$
[u_i]_B in M_(n,1)(K),
$

où $n = dim_K(E)$.

On construit la matrice

$
M =
mat(
  [u_1]_B^T;
  dots.v;
  [u_k]_B^T
)
in M_(k,n)(K).
$

Les lignes de $M$ sont donc les coordonnées des vecteurs $u_i$ dans la base $B$.

Les opérations élémentaires sur les lignes de $M$ correspondent aux opérations élémentaires effectuées sur la famille $(u_i)$. Les lignes d'une matrice obtenue après ces opérations sont encore les coordonnées d'une famille génératrice de $V$.

== Matrice presque échelonnée

Une matrice est dite *presque échelonnée* si le premier coefficient non nul d'une ligne se trouve strictement à droite du premier coefficient non nul de la ligne précédente.

Le premier coefficient non nul n'est pas nécessairement égal à $1$.

On applique la méthode de Gauss à $M$ pour obtenir une matrice $M'$ presque échelonnée.

Les lignes non nulles de $M'$ forment une famille libre et correspondent aux coordonnées des vecteurs d'une base de $V$.

Ainsi,

$
"rg"(U)
=
"nombre de lignes non nulles de " M'.
$

== Exemple 1.8.4

On considère

$
E = K_3[X]
$

muni de la base

$
B = (1, X, X^2, X^3).
$

Soit la famille

$
U = (P_1, P_2, P_3, P_4),
$

avec

$
P_1 = 1 + 2X - X^2 + 4X^3,
$

$
P_2 = -1 + X + 3X^2 + 5X^3,
$

$
P_3 = 2 + X - 4X^2 - X^3,
$

et

$
P_4 = 2 + 7X + 17X^3.
$

Leurs coordonnées dans $B$ sont

$
[P_1]_B = mat(1; 2; -1; 4),
quad
[P_2]_B = mat(-1; 1; 3; 5),
$

$
[P_3]_B = mat(2; 1; -4; -1),
quad
[P_4]_B = mat(2; 7; 0; 17).
$

On forme donc

$
M =
mat(
  1, 2, -1, 4;
  -1, 1, 3, 5;
  2, 1, -4, -1;
  2, 7, 0, 17
).
$

On effectue les opérations

$
L_2 <- L_2 + L_1,
quad
L_3 <- L_3 - 2L_1,
quad
L_4 <- L_4 - 2L_1.
$

On obtient

$
mat(
  1, 2, -1, 4;
  0, 3, 2, 9;
  0, -3, -2, -9;
  0, 3, 2, 9
).
$

Puis

$
L_3 <- L_3 + L_2,
quad
L_4 <- L_4 - L_2,
$

d'où la matrice presque échelonnée

$
M' =
mat(
  1, 2, -1, 4;
  0, 3, 2, 9;
  0, 0, 0, 0;
  0, 0, 0, 0
).
$

Il reste deux lignes non nulles. Donc

$
"rg"(U) = 2.
$

Les deux lignes non nulles sont les coordonnées dans $B$ de deux vecteurs formant une base de $"Vect"(U)$ :

$
1 + 2X - X^2 + 4X^3
$

et

$
3X + 2X^2 + 9X^3.
$

Ainsi,

$
(1 + 2X - X^2 + 4X^3, 3X + 2X^2 + 9X^3)
$

est une base de $"Vect"(U)$.
