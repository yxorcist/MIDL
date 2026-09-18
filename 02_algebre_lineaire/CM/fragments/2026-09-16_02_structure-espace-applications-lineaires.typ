#import "../style.typ": *

= Exemples et structure de $"ℒ"_K(E,F)$

== Remarque 2.1.5

=== Formes linéaires sur $K^p$

Soit $p in NN^*$ et soient $a_1, ..., a_p in K$ des scalaires fixés.

L'application

$
K^p -> K,
quad
(x_1, ..., x_p)
-> a_1 x_1 + ... + a_p x_p
$

est une forme linéaire.

=== Applications à valeurs dans un produit

Soient $F_1, ..., F_m$ des $K$-espaces vectoriels et, pour chaque
$j in {1, ..., m}$,

$
phi_j : E -> F_j
$

une application linéaire.

Alors l'application

$
phi : E -> F_1 times F_2 times ... times F_m,
$

définie par

$
phi(u)
=
(phi_1(u), phi_2(u), ..., phi_m(u)),
$

est linéaire.

En particulier, une application

$
phi : K^p -> K^m
$

définie par

$
phi(x_1, ..., x_p)
=
(
a_(1,1)x_1 + ... + a_(1,p)x_p,
...,
a_(m,1)x_1 + ... + a_(m,p)x_p
)
$

est linéaire.

== Théorème 2.1.6

L'ensemble

$
"ℒ"_K(E,F)
$

est un sous-espace vectoriel de $"ℱ"(E,F)$.

=== Démonstration

L'application nulle $tilde(0)_(E,F)$ appartient à $"ℒ"_K(E,F)$.

Soient maintenant

$
phi, psi in "ℒ"_K(E,F)
$

et

$
lambda in K.
$

Il faut montrer que

$
lambda phi + psi
$

est linéaire.

Soient $u,v in E$ et $alpha in K$. Alors

$
(lambda phi + psi)(alpha u + v)
$

$
= (lambda phi)(alpha u + v) + psi(alpha u + v)
$

$
= lambda phi(alpha u + v) + psi(alpha u + v)
$

$
= lambda (alpha phi(u) + phi(v))
  + (alpha psi(u) + psi(v))
$

$
= alpha (lambda phi(u) + psi(u))
  + (lambda phi(v) + psi(v))
$

$
= alpha (lambda phi + psi)(u)
  + (lambda phi + psi)(v).
$

Donc $lambda phi + psi$ est linéaire.

Ainsi, $"ℒ"_K(E,F)$ est stable par combinaison linéaire et est donc un
sous-espace vectoriel de $"ℱ"(E,F)$.
