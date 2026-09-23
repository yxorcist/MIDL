#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= TD 1 — Exercice 1

== 1. Produits matriciels

(a)

$
mat(1; -6)^T mat(1,6; -3,5)
=
(19,-24).
$

(b)

$
(mat(1,6; -3,5)+mat(4,2; 2,1))^2
=
mat(5,8; -1,6)^2
=
mat(17,88; -11,28).
$

(c)

$
(2,-1) mat(1; -6)
=
8.
$

(d)

$
mat(1;6)(3,2)
=
mat(3,2;18,12).
$

== 2. Symétrie et inversibilité

=== (a)

$
A=mat(0,1,0;0,0,1;1,0,0).
$

La matrice n'est pas symétrique.

Ses colonnes sont les vecteurs de la base canonique de $RR^3$ dans un ordre différent. Elles forment donc une base de $RR^3$, et $A$ est inversible.

=== (b)

$
B=mat(0,1,1;1,1,1;1,1,0).
$

On a $B=B^T$, donc $B$ est symétrique.

De plus,

$
det(B)=1 != 0,
$

donc $B$ est inversible.

=== (c)

$
C=mat(1,1,1;0,1,0;1,0,1).
$

La matrice n'est pas symétrique.

Son déterminant est nul :

$
det(C)=0.
$

Donc $C$ n'est pas inversible.
