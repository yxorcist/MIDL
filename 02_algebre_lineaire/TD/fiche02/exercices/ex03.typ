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

On isole $y$ dans la première équation :

$
cases(
y=2x+z,
-3x+2x+z-3z=0
)
arrow
cases(
-x-2z=0,
y=2x+z
)
arrow
cases(
x=-2z,
y=-3z,
z in RR
).
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

Soit $(a,b,c) in RR^3$. On résout $psi(x,y)=(a,b,c)$ :

$
cases(
2x-4y=a,
3x-6y=b,
2y-x=c
)
arrow
cases(
x=2y-c,
4y-2c-4y=a,
6y-3c-6y=b
)
arrow
cases(
a=-2c,
b=-3c,
x=2y-c
).
$

Ainsi, tout vecteur de l'image est de la forme

$
(a,b,c)=c(-2,-3,1).
$

Réciproquement, pour tout $c in RR$, on peut prendre $y=0$ et $x=-c$. Donc

$
"Im"(psi)="Vect"((-2,-3,1)).
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

D'après les questions 1.b et 2.a,

$
"Ker"(phi)="Vect"((-2,-3,1))
quad "et" quad
"Im"(psi)="Vect"((-2,-3,1)).
$

Les deux sous-espaces ont la même base, donc

$
"Im"(psi)="Ker"(phi).
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
phi compose psi = 0_(cal(L)(RR^2)).
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

En développant les coefficients du produit, on obtient

$
mat(
  4a-2-3a+3-a, -2+2;
  -6a+3+3a-3+3a, 3-2;
)
=
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

==== Première méthode — par le noyau

D'après la question 4.b.i,

$
"Ker"(phi) subset.eq "Ker"(g compose phi).
$

On sait, d'après la question 1.b, que

$
dim("Ker"(phi))=1.
$

Donc

$
dim("Ker"(g compose phi))>=1.
$

Or

$
"Ker"(id_(RR^3))={0_(RR^3)}
quad "et" quad
dim("Ker"(id_(RR^3)))=0.
$

Les noyaux sont différents. Ainsi,

$
g compose phi != id_(RR^3).
$

==== Deuxième méthode — par l'image

D'après la question 4.b.ii,

$
"Im"(g compose phi) subset.eq "Im"(g).
$

Comme $g:RR^2 -> RR^3$, on sait que

$
"rg"(g)<=dim(RR^2)=2.
$

Donc

$
"rg"(g compose phi)<= "rg"(g)<=2<3.
$

Mais

$
"rg"(id_(RR^3))=3.
$

Les rangs sont différents. Ainsi,

$
g compose phi != id_(RR^3).
$
