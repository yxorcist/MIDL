#import "../style.typ": *

== Premier exemple de preuve

=== Théorème

Si $n$ et $m$ sont deux entiers pairs, alors $n + m$ est pair.

=== Preuve

Supposons que $n$ et $m$ soient pairs.

Par définition d'un entier pair, il existe $k in ZZ$ et $k' in ZZ$ tels que

$
n = 2k
quad "et"
quad
m = 2k'.
$

Alors

$
n + m
= 2k + 2k'
= 2(k + k').
$

Posons

$
k'' = k + k'.
$

Comme $k, k' in ZZ$, on a $k'' in ZZ$. Donc

$
n + m = 2k'',
$

et ainsi $n + m$ est pair.

