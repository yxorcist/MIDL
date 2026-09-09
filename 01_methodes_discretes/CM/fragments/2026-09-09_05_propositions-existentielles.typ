#import "../style.typ": *

== Propositions existentielles

Pour démontrer une proposition de la forme

$
exists x in D, P(x),
$

il suffit de fournir un élément précis du domaine $D$ pour lequel $P(x)$ est vraie.

=== Exemple 1

Il existe des entiers naturels $a$, $b$ et $x$ tels que

$
x^2 = a^2 + b^2.
$

En effet,

$
3^2 + 4^2
= 9 + 16
= 25
= 5^2.
$

On peut donc prendre

$
a = 3,
quad
b = 4,
quad
x = 5.
$

=== Exemple 2

Montrons qu'il existe $x in NN$ tel que

$
x^2 = 15129.
$

Il suffit de constater que

$
123^2 = 15129.
$

Donc $x = 123$ convient.

=== Exemple 3 — Deux irrationnels dont une puissance est rationnelle

On veut montrer qu'il existe deux nombres irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

Considérons

$
alpha = sqrt(2)^sqrt(2).
$

On distingue deux cas.

*Cas 1 :* $alpha$ est rationnel.

Alors on choisit

$
x = sqrt(2)
quad "et"
quad
y = sqrt(2).
$

Les deux nombres sont irrationnels et

$
x^y = sqrt(2)^sqrt(2) = alpha,
$

qui est rationnel dans ce cas.

*Cas 2 :* $alpha$ est irrationnel.

On choisit alors

$
x = sqrt(2)^sqrt(2)
quad "et"
quad
y = sqrt(2).
$

Les deux nombres sont irrationnels et

$
x^y
= (sqrt(2)^sqrt(2))^sqrt(2)
= sqrt(2)^2
= 2,
$

qui est rationnel.

Dans tous les cas, il existe donc deux irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

