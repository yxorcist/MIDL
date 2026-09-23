#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

Dans $E = RR^4$, on considère

$
F = {(x,y,z,t) in RR^4 | x - 2y + a z^2 = 0 " et " y - 3z + 4t = b}.
$

== Question 1

Pour que $F$ soit un sous-espace vectoriel, il faut d'abord que le vecteur nul appartienne à $F$.

En substituant $(0,0,0,0)$,

$
0 = 0
quad "et" quad
0 = b,
$

donc nécessairement

$
b = 0.
$

Supposons maintenant que $F$ soit stable par addition. Pour $u,v in F$, le terme quadratique donne, dans la première équation,

$
a(z_u+z_v)^2
=
a z_u^2 + 2a z_u z_v + a z_v^2.
$

Comme les équations de $u$ et de $v$ annulent déjà les autres termes, la stabilité impose

$
2a z_u z_v = 0.
$

Les notes choisissent des vecteurs de $F$ pour lesquels $z_u != 0$ et $z_v != 0$ ; on obtient donc

$
a = 0.
$

Ainsi,

$
F " est un sous-espace vectoriel"
iff
a=0 " et " b=0.
$

Dans la suite, on prend donc $a=b=0$.

== Question 2 — Base de $F$

Le système devient

$
cases(
  x - 2y = 0,
  y - 3z + 4t = 0,
).
$

On a

$
y = x/2
$

et

$
z = y/3 + 4t/3
= x/6 + 4t/3.
$

Ainsi,

$
(x,y,z,t)
=
x(1,1/2,1/6,0)
+
t(0,0,4/3,1).
$

Donc

$
F
=
"Vect"(
  (1,1/2,1/6,0),
  (0,0,4/3,1)
).
$

Les deux vecteurs étant non colinéaires, ils forment une base :

$
B_F
=
(
  (1,1/2,1/6,0),
  (0,0,4/3,1)
).
$

== Question 3 — Coordonnées de $w$

On considère

$
w=(4,2,2,1).
$

On vérifie

$
4 - 2 dot 2 = 0
$

et

$
2 - 3 dot 2 + 4 dot 1 = 0,
$

donc $w in F$.

Écrivons

$
w
=
alpha(1,1/2,1/6,0)
+
beta(0,0,4/3,1).
$

La première et la quatrième coordonnées donnent

$
alpha=4,
quad
beta=1.
$

On vérifie alors la troisième coordonnée :

$
4/6 + 4/3 = 2.
$

Ainsi

$
[w]_(B_F)
=
mat(4; 1).
$

== Question 4 — Supplémentarité avec $G$

Soient

$
v_1=(4,0,0,1),
quad
v_2=(0,1,1,0),
$

et

$
G="Vect"(v_1,v_2).
$

Les notes recherchent une relation entre une base de $F$ et $(v_1,v_2)$ par réduction de Gauss.

Elles exhibent notamment

$
w=v_1+2v_2=(4,2,2,1).
$

Or $w in F$ d'après la question précédente, et $w in G$ par construction.

Donc

$
w in F inter G
$

avec $w != 0$.

Ainsi

$
F inter G != {0},
$

donc $F$ et $G$ ne sont pas supplémentaires dans $E$.
