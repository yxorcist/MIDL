// source-confidence: medium
// source-uncertainty: the full printed statement is not visible in the supplied photographs; the correction is transcribed from the handwritten notes.
// source-uncertainty: question 2 stops mid-calculation in the supplied source, so no missing conclusion is reconstructed.

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

La dernière ligne visible de la correction est

$
dim(E+F+G_1) >= dim(E).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  La photographie s'arrête à ce stade de la question 2. La suite de la
  correction n'est pas reconstruite.
]
