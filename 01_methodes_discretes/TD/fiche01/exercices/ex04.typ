// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 4

Montrons que, pour tout $n in NN$,

$
ceil(n/2)
=
cases(
n/2 & "si " n " est pair",
(n+1)/2 & "si " n " est impair".
)
$

On distingue deux cas.

== Cas 1 : $n$ est pair

Il existe $k in NN$ tel que

$
n=2k.
$

Alors

$
ceil(n/2)
=
ceil((2k)/2)
=
ceil(k)
=
k
=
n/2.
$

== Cas 2 : $n$ est impair

Il existe $k in NN$ tel que

$
n=2k+1.
$

Alors

$
ceil(n/2)
=
ceil((2k+1)/2)
=
ceil(k+1/2)
=
k+1.
$

Or

$
k+1
=
(n+1)/2.
$

Donc

$
ceil(n/2)
=
(n+1)/2.
$

Ainsi,

$
ceil(n/2)
=
cases(
n/2 & "si " n " est pair",
(n+1)/2 & "si " n " est impair".
)
$
