#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

$
E = {u in K^4 | cases(
  2x+y+z-t=0,
  x+y+z=0
)},
$

$
F="Vect"(v), quad v=(1,0,1,0),
quad
G_1="Vect"(w_1), quad w_1=(1,1,0,0).
$

== 1.a — Intersections

=== $E inter F$

Soit $u in F$ :

$
u=lambda(1,0,1,0)=(lambda,0,lambda,0),
quad lambda in K.
$

$u in E$ ?

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

Solution unique triviale.

Donc $E inter F={0}$.

=== $E inter G_1$

Soit $u in G_1$ :

$
u=lambda(1,1,0,0)=(lambda,lambda,0,0),
quad lambda in K.
$

$u in E$ ?

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

Unique solution triviale.

Donc $E inter G_1={0}$.

=== $F inter G_1$

Soit $u in F inter G_1$. On pose $u=alpha v=beta w_1$ avec $alpha,beta in K$.

$
(alpha,0,alpha,0)=(beta,beta,0,0)
arrow
cases(
  alpha=beta,
  beta=0,
  alpha=0
)
arrow
cases(
  alpha=0,
  beta=0
).
$

Solution unique triviale.

Donc $F inter G_1={0}$.

== 1.b — Sommes directes

De (1.a) :

- $E inter F={0}$, donc $E+F$ est somme directe.
- $E inter G_1={0}$, donc $E+G_1$ est somme directe.
- $F inter G_1={0}$, donc $F+G_1$ est somme directe.

=== $E+F+G_1$

(Méthode 2)

$
E+F+G_1 " somme directe "
quad arrow.long.r.double
quad
E inter (F+G_1)={0}
$

puisque $F+G_1$ est une somme directe.

On prend $u in F+G_1$ :

$
u=alpha v+beta w_1
=(alpha+beta,beta,alpha,0),
quad alpha,beta in K.
$

$u in E$ ?

$
cases(
  2alpha+2beta+beta+alpha-0=0,
  alpha+beta+beta+alpha=0
)
arrow
cases(
  3alpha+3beta=0,
  2alpha+2beta=0
)
arrow
cases(
  alpha=-beta,
  beta in K
).
$

Infinité de solutions, dont des solutions non triviales.

Donc $E inter (F+G_1) != {0}$ et $E+F+G_1$ n'est pas une somme directe.

== 2 — Dimensions

$
dim E+dim F+dim G_1=2+1+1=4.
$

(On justifie $dim E=2$ plus bas.)

Pour $dim(E+F+G_1)$ :

On sait que $E inter F={0}$, alors :

$
dim(E+F)=dim E+dim F=3.
$

Donc :

$
3 <= dim(E+F+G_1).
$

Et comme $E+F+G_1$ n'est pas une somme directe, la famille réunissant les bases de $E$, $F$ et $G_1$ est liée. Alors :

$
dim(E+F+G_1)<4.
$

Donc :

$
dim(E+F+G_1)=3.
$

== 3 — $E+F+G_2$

$
G_2="Vect"(w_2),
quad w_2=(1,1,1,0).
$

Soit $u in F+G_2$ :

$
u=alpha v+beta w_2
=(alpha+beta,beta,alpha+beta,0),
quad alpha,beta in K.
$

$u in E$ ?

$
cases(
  2alpha+2beta+beta+alpha+beta-0=0,
  alpha+beta+beta+alpha+beta=0
)
arrow
cases(
  3alpha+4beta=0,
  2alpha+3beta=0
).
$

$
alpha=-4/3 beta
arrow
2(-4/3 beta)+3beta=0
arrow
1/3 beta=0
arrow
beta=0
arrow
alpha=0.
$

Solution unique triviale.

Donc $E inter (F+G_2)={0}$.

Comme $F inter G_2={0}$ (les générateurs ne sont pas colinéaires), $E+F+G_2$ est une somme directe.

== Calcul de $dim E$ (ajout)

$
E={u in K^4 | cases(
  2x+y+z-t=0,
  x+y+z=0
)}.
$

$
cases(
  2x+y+z-t=0,
  x+y+z=0
)
arrow
cases(
  x=-y-z,
  -2y-2z+y+z-t=0
)
arrow
cases(
  x=-y-z,
  t=-y-z
).
$

Pour $y,z in K$ :

$
u=y(-1,1,0,-1)+z(-1,0,1,-1).
$

Donc :

$
E="Vect"((-1,1,0,-1),(-1,0,1,-1)).
$

Ces deux vecteurs sont libres (deuxième et troisième coordonnées), donc $dim E=2$.
