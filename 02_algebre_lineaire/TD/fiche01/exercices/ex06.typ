#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

On travaille dans $K^4$ avec :

$
E = {u in K^4 | cases(
  2x+y+z-t=0,
  x+y+z=0
)},
$

$
F="Vect"(v), quad v=(1,0,1,0),
$

$
G_1="Vect"(w_1), quad w_1=(1,1,0,0).
$

== Question 1.a — Intersections

=== $E inter F$

Soit $f in F$ :

$
f=lambda(1,0,1,0)=(lambda,0,lambda,0),
quad lambda in K.
$

Testons si $f in E$ :

$
cases(
  2lambda+0+lambda-0=0,
  lambda+0+lambda=0
)
arrow
cases(
  3lambda=0,
  2lambda=0
)
arrow lambda=0.
$

Solution unique triviale, donc :

$
E inter F={0}.
$

=== $E inter G_1$

Soit $g in G_1$ :

$
g=lambda(1,1,0,0)=(lambda,lambda,0,0),
quad lambda in K.
$

Testons si $g in E$ :

$
cases(
  2lambda+lambda+0-0=0,
  lambda+lambda+0=0
)
arrow
cases(
  3lambda=0,
  2lambda=0
)
arrow lambda=0.
$

Solution unique triviale, donc :

$
E inter G_1={0}.
$

=== $F inter G_1$

Soient $f in F$ et $g in G_1$. On pose $f=alpha v$ et $g=beta w_1$, avec $alpha,beta in K$.

$
alpha v = beta w_1
$

C'est-à-dire :

$
alpha(1,0,1,0)=beta(1,1,0,0).
$

On obtient :

$
cases(
  alpha=beta,
  0=beta,
  alpha=0
)
arrow
cases(
  alpha=0,
  beta=0
).
$

Donc :

$
F inter G_1={0}.
$

== Question 1.b — Sommes directes

De la question 1.a, les trois intersections deux à deux sont nulles.

Donc $E+F$, $E+G_1$ et $F+G_1$ sont des sommes directes.

Pour $E+F+G_1$, vérifions si :

$
E inter (F+G_1)={0}.
$

On prend $u in F+G_1$ :

$
u=alpha v+beta w_1
=(alpha+beta,beta,alpha,0),
quad alpha,beta in K.
$

Testons si $u in E$ :

$
cases(
  2(alpha+beta)+beta+alpha=0,
  alpha+beta+beta+alpha=0
)
arrow
cases(
  3alpha+3beta=0,
  2alpha+2beta=0
)
arrow alpha=-beta.
$

Il existe une infinité de solutions. Par exemple, en prenant $alpha=1$ et $beta=-1$, on obtient :

$
u=(0,-1,1,0) != 0.
$

Donc :

$
E inter (F+G_1) != {0}.
$

Ainsi, $E+F+G_1$ n'est *pas* une somme directe.

== Question 2 — Dimensions

Pour $E$, on résout le système :

$
cases(
  2x+y+z-t=0,
  x+y+z=0
)
arrow
cases(
  x=-y-z,
  t=-y-z
).
$

Avec $y,z in K$ :

$
u=y(-1,1,0,-1)+z(-1,0,1,-1).
$

Les deux vecteurs sont libres, donc :

$
dim E=2.
$

Comme $F$ et $G_1$ sont engendrés chacun par un vecteur non nul :

$
dim F=1, quad dim G_1=1.
$

Ainsi :

$
dim E+dim F+dim G_1=2+1+1=4.
$

On sait que $E inter F={0}$, donc :

$
dim(E+F)=dim E+dim F=3.
$

Par conséquent :

$
3 <= dim(E+F+G_1).
$

Mais $E+F+G_1$ n'est pas une somme directe : les quatre générateurs obtenus à partir des bases de $E$, $F$ et $G_1$ sont liés. Donc :

$
dim(E+F+G_1)<4.
$

Finalement :

$
dim(E+F+G_1)=3.
$

== Question 3 — Somme avec $G_2$

On pose :

$
G_2="Vect"(w_2),
quad w_2=(1,1,1,0).
$

Vérifions si $E inter (F+G_2)={0}$.

Soit $u in F+G_2$ :

$
u=alpha v+beta w_2
=(alpha+beta,beta,alpha+beta,0),
quad alpha,beta in K.
$

Testons si $u in E$ :

$
cases(
  2(alpha+beta)+beta+(alpha+beta)=0,
  (alpha+beta)+beta+(alpha+beta)=0
)
arrow
cases(
  3alpha+4beta=0,
  2alpha+3beta=0
).
$

On a :

$
alpha=-4/3 beta
$

si $3 != 0$ dans $K$ ; plus généralement, le déterminant du système vaut $9-8=1 != 0$ dans tout corps $K$.

Donc la solution unique est :

$
cases(
  alpha=0,
  beta=0
).
$

Ainsi :

$
E inter (F+G_2)={0}.
$

Les vecteurs $v$ et $w_2$ sont non colinéaires, donc :

$
F inter G_2={0}.
$

Par conséquent, $E+F+G_2$ est une somme directe.

De plus :

$
dim E+dim F+dim G_2=2+1+1=4=dim(K^4).
$

Donc :

$
K^4=E+F+G_2
$

et la somme est directe.
