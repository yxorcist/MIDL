#import "../style.typ": *

== Preuve par cas

Pour démontrer une proposition sur un domaine $D$, on peut découper $D$ en plusieurs cas

$
D_1, D_2, dots, D_r
$

qui couvrent tout le domaine, puis démontrer le résultat séparément dans chaque cas.

Autrement dit, si tout élément de $D$ appartient à au moins un des cas et si

$
forall x in D_i, P(x) => Q(x)
$

est vraie pour chaque cas $D_i$, alors le résultat est vrai sur tout $D$.

=== Exemple — $m^3 + m$ est toujours pair

Montrons que

$
forall m in NN, m^3 + m " est pair".
$

Soit $m in NN$. On distingue deux cas.

*Cas 1 : $m$ est pair.*

Il existe $k in ZZ$ tel que

$
m = 2k.
$

Alors

$
m^3 + m
= (2k)^3 + 2k
= 8k^3 + 2k
= 2(4k^3 + k).
$

Donc $m^3 + m$ est pair.

*Cas 2 : $m$ est impair.*

Il existe $k in ZZ$ tel que

$
m = 2k + 1.
$

Alors

$
m^3 + m
= (2k + 1)^3 + (2k + 1)
$

$
= 8k^3 + 12k^2 + 6k + 1 + 2k + 1
$

$
= 8k^3 + 12k^2 + 8k + 2
$

$
= 2(4k^3 + 6k^2 + 4k + 1).
$

Donc $m^3 + m$ est également pair.

Les deux cas couvrent tous les entiers naturels. Ainsi,

$
forall m in NN, m^3 + m " est pair".
$

