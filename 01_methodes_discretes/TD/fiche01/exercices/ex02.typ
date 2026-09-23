#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 2

Montrons que, pour tout $n in NN$,

$
n^3+5 " impair" => n " pair".
$

On raisonne par contraposition.

La contraposée est :

$
n " impair" => n^3+5 " pair".
$

Supposons donc $n$ impair. Il existe $k in NN$ tel que

$
n=2k+1.
$

Alors

$
n^3+5
=(2k+1)^3+5
=8k^3+12k^2+6k+6
$

$
=2(4k^3+6k^2+3k+3).
$

En posant

$
r=4k^3+6k^2+3k+3 in NN,
$

on obtient

$
n^3+5=2r.
$

Ainsi $n^3+5$ est pair.

La contraposée étant vraie, on conclut que

$
n^3+5 " impair" => n " pair".
$
