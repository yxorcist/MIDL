#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 1

Montrons que, pour tout $n in NN$, le carré $n^2$ s'écrit sous l'une des deux formes

$
4k
quad "ou" quad
4k+1,
$

avec $k in NN$.

On distingue deux cas.

== Cas 1 : $n$ est pair

Il existe $k in NN$ tel que

$
n=2k.
$

Alors

$
n^2=(2k)^2=4k^2.
$

Comme $k^2 in NN$, $n^2$ est de la forme $4K$ avec $K=k^2$.

== Cas 2 : $n$ est impair

Il existe $k in NN$ tel que

$
n=2k+1.
$

Alors

$
n^2
=(2k+1)^2
=4k^2+4k+1
=4(k^2+k)+1.
$

Comme $k^2+k in NN$, $n^2$ est de la forme $4K+1$.

Ainsi, pour tout $n in NN$, $n^2$ est de la forme $4k$ ou $4k+1$.
