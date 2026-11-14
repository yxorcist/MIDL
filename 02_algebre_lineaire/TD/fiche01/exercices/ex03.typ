// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

On considère dans $RR^4$

$
v_1=(0,-1,1,1),
quad
v_2=(2,1,-1,1),
quad
v_3=(1,1,-1,0),
$

et

$
F="Vect"(v_1,v_2,v_3).
$

== Question 1.a — Extraire une base de $F$

Soient $alpha,beta,gamma in RR$. On pose :

$
alpha v_1 + beta v_2 + gamma v_3 = 0.
$

On obtient :

$
cases(
  2 beta + gamma = 0,
  -alpha + beta + gamma = 0,
  alpha - beta - gamma = 0,
  alpha + beta = 0
).
$

Donc :

$
cases(
  gamma = -2 beta,
  -alpha + beta - 2 beta = 0,
  alpha - beta + 2 beta = 0,
  alpha = -beta
)
$

soit :

$
cases(
  alpha = -beta,
  beta in RR,
  gamma = -2 beta
).
$

On a une infinité de solutions pour $alpha v_1 + beta v_2 + gamma v_3 = 0$.

On fixe $beta = 1$, alors :

$
cases(
  alpha = -1,
  beta = 1,
  gamma = -2
).
$

Ainsi :

$
-v_1 + v_2 - 2v_3 = 0,
$

donc :

$
v_2 = v_1 + 2v_3.
$

Par conséquent, $F = "Vect"(v_1,v_3)$. Comme $v_1$ et $v_3$ sont non colinéaires, on obtient :

$
B_F = (v_1,v_3),
quad dim(F)=2.
$

== Question 1.b — Équations cartésiennes de $F$

On pose $alpha,beta in RR$, $alpha v_1 + beta v_3 = u$, avec $u in F$ et $u=(x,y,z,t)$.

$
cases(
  x = beta,
  y = -alpha + beta,
  z = alpha - beta,
  t = alpha
)
arrow
cases(
  x = beta,
  t = alpha,
  y = -t + x,
  z = t - x
).
$

Donc :

$
F = {u in RR^4 | cases(
  x - y - t = 0,
  x + z - t = 0
)}.
$

== Question 2.a — Montrer que $F=F'$

$
F' = "Vect"(w_1,w_2),
quad w_1=(1,0,0,1),
quad w_2=(2,-1,1,3).
$

=== Méthode 1 — Inclusion et dimensions

De la question 1, on sait que $dim F=2$. On vérifie $dim F'$.

On pose $alpha,beta in RR$, $alpha w_1 + beta w_2 = 0$.

$
cases(
  alpha + 2beta = 0,
  -beta = 0,
  beta = 0,
  alpha + 3beta = 0
)
arrow
cases(
  alpha = 0,
  beta = 0
).
$

Donc $dim F'=2$. On a $dim F=dim F'$.

Vérifions $F' subset.eq F$ :

Pour $w_1=(1,0,0,1)$ :

$
1 - 0 - 1 = 0,
quad 1 + 0 - 1 = 0,
$

donc $w_1 in F$.

Pour $w_2=(2,-1,1,3)$ :

$
2 + 1 - 3 = 0,
quad 2 + 1 - 3 = 0,
$

donc $w_2 in F$.

Ainsi $F' subset.eq F$ et $dim F=dim F'$, donc $F'=F$.

=== Méthode 2 — Double inclusion

$
F'=F iff F' subset.eq F " et " F subset.eq F'.
$

On sait déjà que $F' subset.eq F$.

Vérifions $F subset.eq F'$.

On pose $v_1 = alpha w_1 + beta w_2$, avec $alpha,beta in RR$ :

$
cases(
  alpha + 2beta = 0,
  -beta = -1,
  beta = 1,
  alpha + 3beta = 1
)
arrow
cases(
  alpha = -2,
  beta = 1
).
$

Solution : $(-2,1)$, donc $v_1 in F'$.

On pose $v_3 = alpha w_1 + beta w_2$ :

$
cases(
  alpha + 2beta = 1,
  -beta = 1,
  beta = -1,
  alpha + 3beta = 0
)
arrow
cases(
  alpha = 3,
  beta = -1
).
$

Solution : $(3,-1)$, donc $v_3 in F'$.

Comme $F="Vect"(v_1,v_3)$, on obtient $F subset.eq F'$.

Donc $F=F'$.

== Question 2.b — Supplémentaire de $F$ dans $RR^4$

Par le théorème de la base incomplète, on peut compléter une famille libre de $F$ en une base de $RR^4$.

Considérons la famille $(e_1,e_2,v_3,v_1)$, où $e_1,e_2$ sont les deux premiers vecteurs de la base canonique.

$
M = mat(
  1, 0,  1,  0;
  0, 1,  1, -1;
  0, 0, -1,  1;
  0, 0,  0,  1
).
$

La matrice est triangulaire supérieure, avec quatre pivots non nuls : $"rg"(M)=4$.

On pose alors :

$
G="Vect"(e_1,e_2).
$

On obtient $F + G = RR^4$ et $F inter G = {0}$.

Donc $G$ est un supplémentaire de $F$ dans $RR^4$.

== Question 3.a — Inclusion dans un hyperplan

Soit

$
H
=
{(x,y,z,t) in RR^4 | x-2y-z=t}.
$

On vérifie que les vecteurs d'une base de $F$ appartiennent à $H$.

Pour

$
v_1=(0,-1,1,1),
$

on a

$
0-2(-1)-1=1.
$

Donc

$
v_1 in H.
$

Pour

$
v_3=(1,1,-1,0),
$

on a

$
1-2+1=0.
$

Donc

$
v_3 in H.
$

Ainsi,

$
F subset.eq H.
$

== Question 3.b — Détermination de $I$

Les notes introduisent

$
C
=
{(x,y,z,t) in RR^4 |
x=0 " et " z+t=0}
$

et déterminent

$
I=H inter C.
$

Un vecteur $(x,y,z,t)$ appartient à $I$ si et seulement si

$
cases(
x=0,
z+t=0,
x-2y-z-t=0.
)
$

De $z+t=0$, on obtient

$
z=-t.
$

En utilisant $x=0$ dans l'équation de $H$,

$
-2y-z-t=0.
$

Comme $z=-t$,

$
-2y=0,
$

donc

$
y=0.
$

Ainsi,

$
I
=
{(0,0,-t,t) : t in RR}.
$

Donc

$
I="Vect"((0,0,-1,1)).
$

Une base de $I$ est

$
B_I=((0,0,-1,1)).
$

== Question 3.c — Montrer que $H=F ⊕ I$

L'équation de $H$ s'écrit

$
x=2y+z+t.
$

Ainsi,

$
(x,y,z,t)
=
y(2,1,0,0)
+
z(1,0,1,0)
+
t(1,0,0,1).
$

La famille

$
((2,1,0,0),(1,0,1,0),(1,0,0,1))
$

est libre, donc

$
dim(H)=3.
$

Or

$
dim(F)+dim(I)=2+1=3.
$

Il reste à vérifier que

$
F inter I={0}.
$

Soit $(x,y,z,t) in F inter I$.

Comme le vecteur appartient à $F$,

$
cases(
y+z=0,
x-y-t=0.
)
$

Et comme il appartient à $I$,

$
cases(
x=0,
y=0,
z=-t.
)
$

On obtient alors successivement

$
x=0,
quad
y=0,
quad
z=0,
quad
t=0.
$

Donc

$
F inter I={0}.
$

Par conséquent,

$
H=F ⊕ I.
$

== Question 3.d — Décomposition d'un vecteur

On considère

$
u=(1,0,1,0).
$

On vérifie

$
1-2 dot 0-1=0,
$

donc

$
u in H.
$

Les notes donnent la décomposition

$
u
=
-(0,0,-1,1)
+
(1,0,0,1).
$

Le premier terme appartient à $I$ et le second appartient à $F$.

Ainsi $u$ est bien décomposé suivant

$
H=F ⊕ I.
$
