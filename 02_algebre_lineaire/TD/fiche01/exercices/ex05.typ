#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

On travaille dans $E=CC^2$, sur $RR$ ou $CC$.

== Question 1 — Base canonique de $CC^2$

$
B_(CC^2)=((1,0),(0,1)).
$

*Libre :*

Soient $alpha,beta in CC$, avec :

$
alpha(1,0)+beta(0,1)=(0,0).
$

On obtient :

$
cases(alpha=0, beta=0).
$

*Génératrice :*

Soit $(x,y) in CC^2$. On cherche $alpha,beta in CC$ tels que :

$
alpha(1,0)+beta(0,1)=(x,y).
$

Alors :

$
cases(x=alpha, y=beta).
$

Donc $((1,0),(0,1))$ est une base de $CC^2$ sur $CC$.

== Question 2 — Liberté de $(v_1,v_2)$ sur $RR$ et $CC$

$
v_1=(1-i,i),
quad v_2=(2,-1+i).
$

=== Sur $RR$

Soient $alpha,beta in RR$ tels que :

$
alpha v_1 + beta v_2=(0,0).
$

On obtient :

$
cases(
  alpha - i alpha + 2 beta = 0,
  alpha i - beta + beta i = 0
).
$

En séparant les parties réelles et imaginaires :

$
cases(
  alpha + 2beta = 0,
  -alpha = 0,
  -beta = 0,
  alpha + beta = 0
)
arrow
cases(alpha=0, beta=0).
$

La solution est unique : la famille $(v_1,v_2)$ est *libre sur $RR$*.

=== Sur $CC$

Soient $alpha,beta in CC$ tels que :

$
alpha v_1 + beta v_2=(0,0).
$

On a :

$
cases(
  alpha(1-i)+2beta=0,
  alpha i+beta(-1+i)=0
).
$

La première équation donne :

$
alpha=-2/(1-i) beta
=- (2(1+i))/((1-i)(1+i)) beta
=-(1+i) beta.
$

En remplaçant dans la seconde :

$
-(1+i)beta i + beta(-1+i)=0.
$

Cette égalité est vérifiée pour tout $beta in CC$.

On obtient donc :

$
cases(
  alpha=-(1+i)beta,
  beta in CC
).
$

Il existe une infinité de solutions. La famille $(v_1,v_2)$ est *liée sur $CC$*.

En particulier, $v_2=(1+i)v_1$.

== Question 3.a — Une base de $CC^2$ sur $RR$

On considère :

$
B=((1,0),(i,0),(0,1),(0,i)).
$

*Liberté :*

Soient $alpha,beta,gamma,delta in RR$ tels que :

$
alpha(1,0)+beta(i,0)+gamma(0,1)+delta(0,i)=(0,0).
$

Alors :

$
cases(
  alpha+beta i=0,
  gamma+delta i=0
).
$

Comme les coefficients sont réels :

$
alpha=beta=gamma=delta=0.
$

La solution est unique : la famille est libre sur $RR$.

*Génératrice :*

Soit $(x,y) in CC^2$.

On pose :

$
alpha(1,0)+beta(i,0)+gamma(0,1)+delta(0,i)=(x,y)
$

avec $alpha,beta,gamma,delta in RR$.

Le système est :

$
cases(
  x=alpha+beta i,
  y=gamma+delta i
).
$

Pour tout $x,y in CC$, les parties réelles et imaginaires fournissent de tels réels $alpha,beta,gamma,delta$.

La famille est génératrice de $CC^2$ sur $RR$.

Donc $B$ est une base de $CC^2$ sur $RR$.

== Question 3.b — Dimensions

$
dim_RR(CC^2)=4,
quad dim_CC(CC^2)=2.
$

== Question 3.c — Coordonnées dans $B$

$
[v_1]_B=mat(1; -1; 0; 1),
quad
[v_2]_B=mat(2; 0; -1; 1).
$
