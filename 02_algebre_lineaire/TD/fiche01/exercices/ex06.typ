// source-confidence: high
// source-note: numbering and statements are cross-checked against the official TD01 sheet; the clearer handwritten correction supplied later confirms questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

Les notes utilisent les sous-espaces suivants de $K^4$ :

$
E
=
{(x,y,z,t) in K^4 |
2x+y+z-t=0
" et "
x+y+z=0},
$

$
F="Vect"((1,0,1,0)),
$

et

$
G_1="Vect"((1,1,0,0)).
$

== Question 1.a — Intersections deux à deux

=== Intersection $E inter F$

Soit

$
u=(x,y,z,t) in K^4.
$

Si $u in E$, alors

$
cases(
2x+y+z-t=0,
x+y+z=0.
)
$

Si $u in F$, alors

$
u in "Vect"((1,0,1,0)),
$

donc

$
x=z
quad "et" quad
y=t=0.
$

Ainsi, si $u in E inter F$,

$
cases(
2x+y+z-t=0,
x+y+z=0,
x=z,
y=t=0.
)
$

En remplaçant $z$ par $x$ et $y=t=0$, on obtient

$
cases(
3x=0,
2x=0,
y=t,
t=0.
)
$

Donc

$
u=(0,0,0,0).
$

Ainsi,

$
E inter F={0_(K^4)}.
$

=== Intersection $E inter G_1$

On pose

$
w_1=e_1+e_2=(1,1,0,0),
$

de sorte que

$
G_1="Vect"(w_1).
$

Or $w_1$ n'appartient pas à $E$, puisque

$
2 dot 1+1+0-0 != 0
$

et

$
1+1+0 != 0.
$

Tout vecteur non nul de $G_1$ est un multiple scalaire non nul de $w_1$.
Ainsi, aucun vecteur non nul de $G_1$ n'appartient à $E$.

Donc

$
E inter G_1={0_(K^4)}.
$

=== Intersection $F inter G_1$

Soit $u in F inter G_1$.

Il existe $alpha,beta in K$ tels que

$
u=alpha(1,0,1,0)=beta(1,1,0,0).
$

L'égalité coordonnée par coordonnée donne

$
cases(
alpha=beta,
beta=0,
alpha=0.
)
$

Donc

$
alpha=beta=0,
$

et

$
F inter G_1={0_(K^4)}.
$

== Question 1.b — Sommes directes deux à deux

Comme les intersections précédentes sont réduites au vecteur nul, les sommes

$
E+F,
quad
F+G_1,
quad
E+G_1
$

sont directes.

En revanche, la somme

$
E+F+G_1
$

n'est pas directe.

En effet,

$
(0,-1,1,0)
-
(1,0,1,0)
+
(1,1,0,0)
=
0_(K^4),
$

avec

$
(0,-1,1,0) in E,
quad
(1,0,1,0) in F,
quad
(1,1,0,0) in G_1,
$

et ces trois vecteurs ne sont pas tous nuls.

Les notes donnent aussi une vérification équivalente :

$
(0,-1,1,0)
=
(1,0,1,0)
-
(1,1,0,0).
$

Le membre de gauche appartient à $E$, tandis que le membre de droite appartient
à $F+G_1$. Ainsi,

$
(0,-1,1,0) in E inter (F+G_1)
$

et

$
E inter (F+G_1) != {0_(K^4)}.
$

== Question 2 — Dimensions

Les notes relèvent

$
dim(E)+dim(F)+dim(G_1)
=
2+1+1
=
4.
$

Pour $E$,

$
E
=
{(x,y,z,t) in K^4 |
2x+y+z-t=0
" et "
x+y+z=0}.
$

La correction donne

$
E
=
"Vect"(
(1,-1,0,1),
(0,-1,1,0)
).
$

Ainsi,

$
dim(E)=2.
$

Comme la somme $E+F$ est directe,

$
dim(E+F)
=
dim(E)+dim(F)
=
3.
$

On a donc

$
dim(E+F+G_1) >= 3.
$

D'autre part, la somme $E+F+G_1$ n'est pas directe. Les quatre vecteurs obtenus
en réunissant une base de $E$, une base de $F$ et une base de $G_1$ sont donc
liés. Par conséquent,

$
dim(E+F+G_1) < 4.
$

Ainsi,

$
dim(E+F+G_1)=3.
$

== Question 3 — Somme $E+F+G_2$

On pose

$
G_2="Vect"(w_2),
quad
w_2=e_1+e_2+e_3=(1,1,1,0).
$

On sait déjà que

$
E inter F={0_(K^4)},
$

donc la somme $E+F$ est directe.

On utilise

$
E
=
"Vect"(u_1,u_2)
$

avec

$
u_1=(1,-1,0,1),
quad
u_2=(0,-1,1,0),
$

et

$
F="Vect"(v),
quad
v=(1,0,1,0).
$

Il suffit alors de vérifier que

$
G_2 inter (E+F)
=
{0_(K^4)}.
$

Soit

$
u in G_2 inter (E+F).
$

Comme $u in G_2$, il existe $delta in K$ tel que

$
u=delta w_2.
$

Comme $u in E+F$, il existe $alpha,beta,gamma in K$ tels que

$
u
=
alpha u_1
+
beta u_2
+
gamma v.
$

Ainsi,

$
alpha u_1
+
beta u_2
+
gamma v
=
delta w_2.
$

En identifiant les coordonnées, on obtient

$
cases(
delta=alpha+gamma,
delta=-alpha-beta,
delta=beta+gamma,
alpha=0.
)
$

Donc

$
alpha=0,
quad
delta=gamma,
quad
delta=-beta.
$

La troisième équation donne alors

$
delta
=
beta+gamma
=
-delta+delta
=
0.
$

Ainsi,

$
delta=0,
quad
beta=0,
quad
gamma=0,
quad
alpha=0.
$

Donc

$
u=0_(K^4).
$

Par conséquent,

$
G_2 inter (E+F)
=
{0_(K^4)}.
$

Comme $E+F$ est déjà une somme directe, on conclut que

$
E+F+G_2
$

est une somme directe.
