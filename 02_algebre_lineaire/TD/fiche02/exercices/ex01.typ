// source-confidence: high
// source-note: numbering and statement cross-checked against official TD02; handwritten correction covers questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 1

== Question 1 — Linéarité

=== $phi_1$

On considère :

$
phi_1: RR^2 -> RR^2,
quad
(x,y) -> (x+2y,-2x-3y).
$

Soient $u=(x,y)$, $v=(a,b)$ et $lambda in RR$.

$
phi_1(lambda u+v)
=phi_1(lambda x+a,lambda y+b)
$

$
=(lambda x+a+2lambda y+2b,
-2lambda x-2a-3lambda y-3b)
$

$
=(lambda(x+2y)+(a+2b),
lambda(-2x-3y)+(-2a-3b))
$

$
=lambda phi_1(u)+phi_1(v).
$

Donc $phi_1$ est une application linéaire.

=== $phi_2$

On considère :

$
phi_2:cal(C)(RR) -> RR,
quad
f -> f(0)+2f(1).
$

Soient $u,v in cal(C)(RR)$ et $lambda in RR$.

$
phi_2(lambda u+v)
=(lambda u+v)(0)+2(lambda u+v)(1)
$

$
=lambda u(0)+v(0)+2lambda u(1)+2v(1)
$

$
=lambda (u(0)+2u(1))+(v(0)+2v(1))
$

$
=lambda phi_2(u)+phi_2(v).
$

Donc $phi_2$ est une application linéaire.

=== $phi_3$

On considère :

$
phi_3:RR[X] -> RR,
quad
P -> (P(0))^2.
$

Soient $P,Q in RR[X]$ et $lambda in RR$.

$
phi_3(lambda P+Q)
=((lambda P+Q)(0))^2
=(lambda P(0)+Q(0))^2
$

$
=lambda^2(P(0))^2+2lambda P(0)Q(0)+(Q(0))^2.
$

Or :

$
lambda phi_3(P)+phi_3(Q)
=lambda (P(0))^2+(Q(0))^2.
$

Ces expressions ne sont pas toujours égales. Par exemple, pour $P=1$, $Q=0$ et $lambda=2$ :

$
phi_3(2P+Q)=4 != 2=lambda phi_3(P)+phi_3(Q).
$

Donc $phi_3$ n'est pas linéaire.

=== $phi_4$

On considère :

$
phi_4:RR_3[X] -> RR_2[X],
quad
P -> P'.
$

Soient $P,Q in RR_3[X]$ et $lambda in RR$.

$
phi_4(lambda P+Q)
=(lambda P+Q)'
=lambda P'+Q'
=lambda phi_4(P)+phi_4(Q).
$

Donc $phi_4$ est une application linéaire.

== Question 2 — Isomorphisme $phi_1$

La matrice de $phi_1$ dans les bases canoniques est

$
A=
mat(
  1, 2;
  -2, -3;
).
$

Son déterminant vaut $1$, donc $A$ est inversible et $phi_1$ est un isomorphisme.

Pour déterminer la réciproque, on pose

$
(X,Y)=phi_1(x,y).
$

On résout

$
cases(
X=x+2y,
Y=-2x-3y.
)
$

et on obtient

$
x=-3X-2Y,
quad
y=2X+Y.
$

Ainsi,

$
phi_1^(-1)(X,Y)
=
(-3X-2Y,2X+Y).
$

== Question 3 — Linéarité sur $CC$ et sur $RR$

=== $psi_1$

La première application est la conjugaison complexe.

Elle n'est pas $CC$-linéaire : la correction utilise le scalaire $i$ pour montrer que la compatibilité avec la multiplication scalaire complexe échoue.

En revanche, la conjugaison respecte l'addition et la multiplication par un scalaire réel.

Donc $psi_1$ est $RR$-linéaire mais pas $CC$-linéaire.

=== $psi_2$

On a
$
psi_2(z)="Re"(z).
$

Elle n'est pas $CC$-linéaire. Par exemple,

$
psi_2(3i)=0
$

alors que

$
i psi_2(3)=3i.
$

Pour un scalaire réel $lambda$,

$
"Re"(lambda z+z')
=
lambda "Re"(z)+"Re"(z').
$

Donc $psi_2$ est $RR$-linéaire.

=== $psi_3$

On considère
$
psi_3(z_1,z_2)
=
i z_1-(3+2i)z_2.
$

Cette expression est une combinaison linéaire complexe des coordonnées.

Ainsi $psi_3$ est $CC$-linéaire, donc aussi $RR$-linéaire.
