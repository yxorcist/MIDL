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

== Question 3.a — Montrer que $F subset.eq H$

$
H = {u in RR^4 | x - 2y - z - t = 0}.
$

Soit $u in F$, $u = alpha v_1 + beta v_3$, avec $alpha,beta in RR$.

$
u = (beta, -alpha + beta, alpha - beta, alpha).
$

Testons si $u in H$ :

$
beta - 2(-alpha + beta) - (alpha - beta) - alpha
= beta + 2alpha - 2beta - alpha + beta - alpha
= 0.
$

Donc $u in H$, et $F subset.eq H$.

== Question 3.b — Déterminer $I = G inter H$

$
G = {u in RR^4 | cases(
  x = 0,
  z + t = 0
)}.
$

Comme $I=G inter H$, on rassemble les équations :

$
I = {u in RR^4 | cases(
  x = 0,
  z + t = 0,
  x - 2y - z - t = 0
)}.
$

$
cases(
  x = 0,
  z = -t,
  -2y + t - t = 0
)
arrow
cases(
  x = 0,
  y = 0,
  z = -t,
  t in RR
).
$

On fixe $t=1$, on obtient $(0,0,-1,1)$.

Ainsi :

$
B_I = ((0,0,-1,1)),
quad dim I = 1.
$

== Question 3.c — Montrer que $H=F o.plus I$

Pour montrer que $H=F o.plus I$, on vérifie :

- $F inter I = {0_E}$ ;
- $F subset.eq H$ et $I subset.eq H$ ;
- $dim F + dim I = dim H$.

De la question 3.a, $F subset.eq H$. Par définition de $I=G inter H$, on a $I subset.eq H$.

Des questions précédentes :

$
dim F = 2,
quad dim I = 1,
quad dim H = 3.
$

Donc $dim F + dim I = dim H$.

Testons $F inter I = {0_E}$.

On prend $u in I$, $u=(0,0,-alpha,alpha)$, avec $alpha in RR$.

Testons si $u in F$ avec les équations cartésiennes de $F$ :

$
cases(
  x - y - t = 0,
  x + z - t = 0
)
arrow
cases(
  -alpha = 0,
  -2alpha = 0
).
$

L'unique solution est $alpha=0$, donc $u=0_E$.

Ainsi :

$
F inter I = {0_E}.
$

Donc :

$
H=F o.plus I.
$

== Question 3.d — Décomposer $u$ suivant $H=F o.plus I$

$
u=(1,0,1,0).
$

Testons $u in H$ :

$
1 - 2 dot 0 - 1 - 0 = 0.
$

Donc $u in H$.

On cherche $u=f+i$ avec $f in F$ et $i in I$.

On pose $j=(0,0,-1,1)$ et :

$
u=alpha v_1 + beta v_3 + gamma j.
$

Cela donne :

$
cases(
  1 = beta,
  0 = -alpha + beta,
  1 = alpha - beta - gamma,
  0 = alpha + gamma
)
arrow
cases(
  alpha = 1,
  beta = 1,
  gamma = -1
).
$

Donc :

$
u=v_1+v_3-j.
$

Avec :

$
f=v_1+v_3=(1,0,0,1) in F
$

et

$
i=-j=(0,0,1,-1) in I.
$

On obtient :

$
u=f+i=(1,0,0,1)+(0,0,1,-1)=(1,0,1,0).
$
