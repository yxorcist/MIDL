// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

On travaille dans $CC^2$.

== Question 1 — Base canonique de $CC^2$ sur $CC$

La base canonique de $CC^2$ sur $CC$ est

$
C=((1,0),(0,1)).
$

Soit $(x,y) in CC^2$. Il existe $alpha,beta in CC$ tels que

$
(x,y)=alpha(1,0)+beta(0,1),
$

avec

$
alpha=x
quad "et" quad
beta=y.
$

Ainsi, la famille $C$ est génératrice.

Elle est également libre, donc $C$ est une base de $CC^2$ sur $CC$.

Par conséquent,

$
dim_CC(CC^2)=2.
$

== Question 2 — Liberté sur $RR$ et sur $CC$

On considère

$
v_1=(1-i,i)
quad "et" quad
v_2=(2,-1+i).
$

=== Sur $RR$

Soient $alpha,beta in RR$ tels que

$
alpha v_1+beta v_2=(0,0).
$

Alors

$
alpha(1-i,i)+beta(2,-1+i)=(0,0),
$

d'où

$
cases(
alpha+2 beta-alpha i=0,
-beta+(alpha+beta)i=0.
)
$

Comme $alpha$ et $beta$ sont réels, l'annulation des parties réelle et imaginaire donne

$
alpha+2 beta=0,
quad
-alpha=0,
quad
-beta=0,
quad
alpha+beta=0.
$

Ainsi,

$
alpha=beta=0.
$

La famille $(v_1,v_2)$ est donc libre sur $RR$.

=== Sur $CC$

On remarque que

$
(1+i)v_1=v_2.
$

Ainsi $v_2$ est un multiple complexe de $v_1$.

La famille $(v_1,v_2)$ est donc liée sur $CC$.

== Question 3 — Une base de $CC^2$ sur $RR$

On considère

$
B=((1,0),(i,0),(0,1),(0,i)).
$

=== a. Liberté et caractère générateur

Soient $lambda_1,lambda_2,lambda_3,lambda_4 in RR$ tels que

$
lambda_1(1,0)
+lambda_2(i,0)
+lambda_3(0,1)
+lambda_4(0,i)
=(0,0).
$

On obtient

$
cases(
lambda_1+lambda_2 i=0,
lambda_3+lambda_4 i=0.
)
$

Comme les coefficients sont réels,

$
lambda_1=lambda_2=lambda_3=lambda_4=0.
$

Donc $B$ est une famille libre.

Soit maintenant $(x,y) in CC^2$.

Écrivons les parties réelle et imaginaire sous la forme

$
x=alpha_1+alpha_2 i,
quad
y=alpha_3+alpha_4 i,
$

avec $alpha_1,alpha_2,alpha_3,alpha_4 in RR$.

Alors

$
(x,y)
=
alpha_1(1,0)
+alpha_2(i,0)
+alpha_3(0,1)
+alpha_4(0,i).
$

Donc $B$ est génératrice.

Ainsi $B$ est une base de $CC^2$ considéré comme espace vectoriel sur $RR$.

=== b. Dimension

Comme

$
card(B)=4,
$

on a

$
dim_RR(CC^2)=4.
$

=== c. Coordonnées de $v_1$ et $v_2$ dans $B$

Pour

$
v_1=(1-i,i),
$

on a

$
v_1
=
1(1,0)
-1(i,0)
+0(0,1)
+1(0,i).
$

Donc

$
[v_1]_B
=
mat(
1;
-1;
0;
1
).
$

Pour

$
v_2=(2,-1+i),
$

on a

$
v_2
=
2(1,0)
+0(i,0)
-1(0,1)
+1(0,i).
$

Donc

$
[v_2]_B
=
mat(
2;
0;
-1;
1
).
$
