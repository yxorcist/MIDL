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

Ces expressions ne sont pas égales en général : le terme croisé $2lambda P(0)Q(0)$ apparaît, et $lambda^2$ n'est pas toujours égal à $lambda$.

Pour donner un contre-exemple explicite, on prend $P=1$, $Q=0$ et $lambda=2$ :

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

Comme $P'$ est de degré au plus $2$ (ou nul), $phi_4$ est bien définie de $RR_3[X]$ dans $RR_2[X]$.

Donc $phi_4$ est une application linéaire.

== Question 2 — Isomorphisme $phi_1$

La matrice de $phi_1$ dans les bases canoniques est :

$
A=mat(
  1, 2;
  -2, -3;
).
$

Les deux espaces sont de dimension $2$ et :

$
det(A)=1 dot (-3)-2 dot (-2)=-3+4=1 != 0.
$

Donc $phi_1$ est un isomorphisme.

Pour calculer sa réciproque, on applique Gauss-Jordan à la matrice augmentée :

$
mat(
  1, 2, 1, 0;
  -2, -3, 0, 1;
)
$

Avec $L_2 <- L_2+2L_1$ :

$
mat(
  1, 2, 1, 0;
  0, 1, 2, 1;
)
$

Puis avec $L_1 <- L_1-2L_2$ :

$
mat(
  1, 0, -3, -2;
  0, 1, 2, 1;
).
$

Ainsi :

$
A^(-1)=mat(
  -3, -2;
  2, 1;
).
$

Donc :

$
phi_1^(-1)(x,y)=(-3x-2y,2x+y).
$

== Question 3 — Linéarité sur $CC$ et sur $RR$

=== $psi_1$ — Conjugaison

On considère :

$
psi_1:CC -> CC,
quad z -> overline(z).
$

Sur $CC$, soient $z,u,lambda in CC$. On a :

$
psi_1(lambda z+u)
=overline(lambda z+u)
=overline(lambda) overline(z)+overline(u).
$

Or :

$
lambda psi_1(z)+psi_1(u)
=lambda overline(z)+overline(u).
$

Ces expressions ne sont pas toujours égales. Contre-exemple : $lambda=i$, $z=1$ et $u=0$ :

$
psi_1(i)=-i != i=i psi_1(1).
$

Donc $psi_1$ n'est pas $CC$-linéaire.

Sur $RR$, si $lambda in RR$, alors $overline(lambda)=lambda$. Donc :

$
psi_1(lambda z+u)
=lambda overline(z)+overline(u)
=lambda psi_1(z)+psi_1(u).
$

Ainsi, $psi_1$ est $RR$-linéaire.

=== $psi_2$ — Partie réelle

On considère :

$
psi_2:CC -> CC,
quad z -> "Re"(z).
$

Sur $CC$, pour $z,u,lambda in CC$ :

$
psi_2(lambda z+u)="Re"(lambda z)+"Re"(u).
$

Or :

$
"Re"(lambda z)
="Re"(lambda)"Re"(z)-"Im"(lambda)"Im"(z).
$

Cette expression n'est pas toujours égale à $lambda "Re"(z)$.

Contre-exemple : pour $lambda=i$, $z=1$ et $u=0$ :

$
psi_2(i)=0 != i=i psi_2(1).
$

Donc $psi_2$ n'est pas $CC$-linéaire.

Sur $RR$, pour $lambda in RR$ :

$
psi_2(lambda z+u)
="Re"(lambda z+u)
=lambda "Re"(z)+"Re"(u)
=lambda psi_2(z)+psi_2(u).
$

Donc $psi_2$ est $RR$-linéaire.

=== $psi_3$

On considère :

$
psi_3:CC^2 -> CC,
quad (z,w) -> i z-(3+2i)w.
$

Sur $CC$, soient $u=(x,y)$, $v=(a,b)$ dans $CC^2$ et $lambda in CC$.

$
psi_3(lambda u+v)
=psi_3(lambda x+a,lambda y+b)
$

$
=i(lambda x+a)-(3+2i)(lambda y+b)
$

$
=lambda(i x-(3+2i)y)+(i a-(3+2i)b)
$

$
=lambda psi_3(u)+psi_3(v).
$

Donc $psi_3$ est $CC$-linéaire.

Comme $RR subset.eq CC$, cette égalité est également vraie pour tout $lambda in RR$. Ainsi $psi_3$ est aussi $RR$-linéaire.
