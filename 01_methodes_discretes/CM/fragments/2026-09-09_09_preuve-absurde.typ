#import "../style.typ": *

== Preuve indirecte par l'absurde

Pour démontrer

$
P => Q,
$

par l'absurde, on suppose simultanément

$
P
quad "et"
quad
not Q,
$

puis on montre que ces deux hypothèses conduisent à une contradiction.

Ainsi, la situation

$
P and not Q
$

est impossible, ce qui prouve $P => Q$.

=== Exemple — Si $n^2$ est pair, alors $n$ est pair

Supposons, pour obtenir une contradiction, que

$
n^2 " est pair"
$

mais que

$
n " est impair".
$

Comme $n$ est impair, il existe $k in ZZ$ tel que

$
n = 2k + 1.
$

Alors

$
n^2
= (2k + 1)^2
= 4k^2 + 4k + 1
= 2(2k^2 + 2k) + 1.
$

Donc $n^2$ est impair.

Cela contredit l'hypothèse selon laquelle $n^2$ est pair.

Par conséquent,

$
n^2 " pair" => n " pair".
$

