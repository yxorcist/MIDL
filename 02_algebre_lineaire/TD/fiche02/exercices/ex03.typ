// source-confidence: high
// source-note: numbering and full statement cross-checked against the official TD02 sheet; the supplied handwritten correction covers questions 1 to 4.c.
// source-note: two handwritten methods are visible for question 4.c; both are preserved.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

On considère les applications linéaires

$
phi:RR^3 -> RR^2,
quad
(x,y,z) -> (2x-y+z,-3x+y-3z),
$

et

$
psi:RR^2 -> RR^3,
quad
(x,y) -> (2x-4y,3x-6y,2y-x).
$

== Question 1

=== a) Montrer sans calculs que $phi$ n'est pas injective

On a

$
"rg"(phi) <= dim(RR^2)=2<3=dim(RR^3).
$

D'après le théorème du rang,

$
dim(RR^3)
=
"rg"(phi)+dim("Ker"(phi)).
$

Ainsi,

$
dim("Ker"(phi))>=1,
$

donc $phi$ n'est pas injective.

=== b) Noyau de $phi$ et surjectivité

Soit

$
(x,y,z) in "Ker"(phi).
$

Alors

$
cases(
2x-y+z=0,
-3x+y-3z=0.
)
$

La résolution donne

$
y=-3z
quad "et" quad
x=-2z.
$

Donc

$
(x,y,z)
=
z(-2,-3,1).
$

Ainsi,

$
"Ker"(phi)
=
"Vect"((-2,-3,1)),
$

et

$
dim("Ker"(phi))=1.
$

D'après le théorème du rang,

$
"rg"(phi)
=
3-1
=
2.
$

Comme

$
dim(RR^2)=2,
$

on obtient

$
"Im"(phi)=RR^2.
$

Donc $phi$ est surjective.

== Question 2

=== a) $psi$ n'est pas surjective et calcul de son image

Comme

$
psi:RR^2 -> RR^3,
$

on a

$
dim("Im"(psi))
<=
dim(RR^2)
=
2
<
3
=
dim(RR^3).
$

Donc $psi$ n'est pas surjective.

Pour tout $(x,y) in RR^2$,

$
psi(x,y)
=
(2x-4y,3x-6y,2y-x).
$

On factorise :

$
psi(x,y)
=
(x-2y)(2,3,-1).
$

Ainsi,

$
"Im"(psi)
=
"Vect"((2,3,-1)).
$

Donc

$
"rg"(psi)=1.
$

=== b) $psi$ n'est pas injective

D'après le théorème du rang,

$
dim(RR^2)
=
"rg"(psi)+dim("Ker"(psi)).
$

Donc

$
2=1+dim("Ker"(psi)),
$

et ainsi

$
dim("Ker"(psi))=1.
$

Par conséquent, $psi$ n'est pas injective.

== Question 3

=== a) Matrices de $phi$ et $psi$ dans les bases canoniques

Soit $(e_1,e_2,e_3)$ la base canonique de $RR^3$.

On a

$
phi(e_1)=(2,-3),
quad
phi(e_2)=(-1,1),
quad
phi(e_3)=(1,-3).
$

Donc

$
"Mat"(phi)
=
mat(
  2, -1, 1;
  -3, 1, -3;
).
$

Pour la base canonique $(e_1,e_2)$ de $RR^2$,

$
psi(e_1)=(2,3,-1),
quad
psi(e_2)=(-4,-6,2).
$

Donc

$
"Mat"(psi)
=
mat(
  2, -4;
  3, -6;
  -1, 2;
).
$

=== b) Matrice de $psi compose phi$

On utilise

$
"Mat"(psi compose phi)
=
"Mat"(psi)
"Mat"(phi).
$

Ainsi,

$
"Mat"(psi compose phi)
=
mat(
  2, -4;
  3, -6;
  -1, 2;
)
mat(
  2, -1, 1;
  -3, 1, -3;
)
=
mat(
  16, -6, 14;
  24, -9, 21;
  -8, 3, -7;
).
$

=== c) Expression de $(psi compose phi)(x,y,z)$

On en déduit

$
(psi compose phi)(x,y,z)
=
(
16x-6y+14z,
24x-9y+21z,
-8x+3y-7z
).
$

=== d) Inclusion $"Im"(psi) subset.eq "Ker"(phi)$ et calcul de $phi compose psi$

On a

$
"Im"(psi)
=
"Vect"((2,3,-1)).
$

Or

$
"Ker"(phi)
=
"Vect"((-2,-3,1)).
$

Comme

$
(2,3,-1)
=
-(-2,-3,1),
$

on a même

$
"Im"(psi)
=
"Ker"(phi).
$

En particulier,

$
"Im"(psi)
subset.eq
"Ker"(phi).
$

Donc, pour tout $(x,y) in RR^2$,

$
psi(x,y) in "Ker"(phi),
$

et ainsi

$
phi(psi(x,y))
=
(0,0).
$

Par conséquent,

$
(phi compose psi = 0_(RR^2)).
$

== Question 4

=== a) Vérifier que $phi compose f=id_(RR^2)$

Soit $a in RR$ et

$
f:RR^2 -> RR^3
$

définie par

$
f(x,y)
=
((2a-1)x-y,3(a-1)x-2y,-a x).
$

Sa matrice dans les bases canoniques est

$
"Mat"(f)
=
mat(
  2a-1, -1;
  3(a-1), -2;
  -a, 0;
).
$

Ainsi,

$
"Mat"(phi compose f)
=
mat(
  2, -1, 1;
  -3, 1, -3;
)
mat(
  2a-1, -1;
  3(a-1), -2;
  -a, 0;
).
$

Le produit vaut

$
mat(
  1, 0;
  0, 1;
)
=
I_2.
$

Par unicité de l'application linéaire associée à une matrice,

$
(phi compose f=id_(RR^2)).
$

=== b) Deux inclusions générales

Soient

$
h:E->F
quad "et" quad
k:F->G
$

deux applications linéaires.

==== i) $"Ker"(h) subset.eq "Ker"(k compose h)$

Soit

$
u in "Ker"(h).
$

Alors

$
h(u)=0_F.
$

Donc

$
(k compose h)(u)
=
k(h(u))
=
k(0_F)
=
0_G.
$

Ainsi,

$
u in "Ker"(k compose h).
$

Par conséquent,

$
("Ker"(h) subset.eq "Ker"(k compose h)).
$

==== ii) $"Im"(k compose h) subset.eq "Im"(k)$

Soit

$
w in "Im"(k compose h).
$

Il existe $v in E$ tel que

$
(k compose h)(v)=w.
$

En posant

$
u=h(v) in F,
$

on obtient

$
w=k(u).
$

Donc

$
w in "Im"(k).
$

Ainsi,

$
("Im"(k compose h) subset.eq "Im"(k)).
$

=== c) Montrer que $g compose phi != id_(RR^3)$

Soit

$
g:RR^2->RR^3
$

une application linéaire.

La correction donne deux méthodes.

==== Première méthode — par les images et le rang

D'après la question précédente,

$
"Im"(g compose phi)
subset.eq
"Im"(g).
$

Supposons par l'absurde que

$
g compose phi=id_(RR^3).
$

Alors

$
"Im"(g compose phi)
=
RR^3,
$

donc

$
"rg"(g compose phi)=3.
$

Mais

$
"rg"(g)
<=
dim(RR^2)
=
2,
$

alors que l'inclusion précédente impose

$
"rg"(g compose phi)
<=
"rg"(g).
$

On obtiendrait

$
3<=2,
$

ce qui est impossible.

Donc

$
(g compose phi != id_(RR^3)).
$

==== Deuxième méthode — par les noyaux

D'après la question précédente,

$
"Ker"(phi)
subset.eq
"Ker"(g compose phi).
$

Or

$
"Ker"(phi)
=
"Vect"((-2,-3,1)),
$

donc

$
"Ker"(phi)
!=
{0_(RR^3)}.
$

Ainsi,

$
"Ker"(g compose phi)
!=
{0_(RR^3)}.
$

Mais

$
"Ker"(id_(RR^3))
=
{0_(RR^3)}.
$

Donc, là encore,

$
(g compose phi != id_(RR^3)).
$
