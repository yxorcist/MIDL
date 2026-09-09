#import "../style.typ": *

== Théorème — Irrationalité de $sqrt(2)$

Le nombre $sqrt(2)$ est irrationnel.

=== Preuve par l'absurde

Supposons au contraire que

$
sqrt(2) in QQ.
$

On peut alors écrire

$
sqrt(2) = a / b,
$

avec $a in ZZ$, $b in ZZ$, $b != 0$, et en choisissant la fraction $a/b$ sous forme irréductible.

En élevant au carré :

$
2 = a^2 / b^2,
$

donc

$
a^2 = 2b^2.
$

Ainsi, $a^2$ est pair.

D'après le résultat précédent, si le carré d'un entier est pair, alors l'entier lui-même est pair. Donc $a$ est pair.

Il existe alors $k in ZZ$ tel que

$
a = 2k.
$

En remplaçant dans $a^2 = 2b^2$ :

$
(2k)^2 = 2b^2,
$

donc

$
4k^2 = 2b^2
$

et donc

$
b^2 = 2k^2.
$

Ainsi, $b^2$ est pair, donc $b$ est également pair.

Par conséquent, $a$ et $b$ sont tous les deux divisibles par $2$.

Cela contredit le fait que la fraction $a/b$ a été choisie irréductible.

Donc l'hypothèse

$
sqrt(2) in QQ
$

est fausse, et ainsi

$
sqrt(2) " est irrationnel".
$

