#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 17

== (a) Factorisation de $180$

On décompose successivement :

$
180
=2 dot 90
=2^2 dot 45
=2^2 dot 3^2 dot 5.
$

Donc

$
180=2^2 dot 3^2 dot 5.
$

== (b) Il existe une infinité de nombres premiers

Raisonnons par l'absurde.

Supposons qu'il n'existe qu'un nombre fini de nombres premiers :

$
p_1,p_2,...,p_m.
$

Posons

$
N=p_1 p_2 cdots p_m + 1.
$

Alors $N>1$, donc $N$ admet un diviseur premier $p_i$ parmi la liste.

Ainsi,

$
p_i divides N
$

et

$
p_i divides p_1 p_2 cdots p_m.
$

Par conséquent,

$
p_i divides (N-p_1 p_2 cdots p_m)=1,
$

ce qui est impossible puisque $p_i>1$.

Il existe donc une infinité de nombres premiers.

== (c) Le nombre $m^2-n^2$ est-il toujours décomposable ?

Soient $m,n in NN$ avec $m>n$.

On factorise :

$
m^2-n^2=(m-n)(m+n).
$

Il est possible que $m-n=1$.

Par exemple, pour

$
m=4,
quad
n=3,
$

on obtient

$
m^2-n^2=16-9=7,
$

qui est premier.

Donc $m^2-n^2$ n'est pas toujours décomposable.

En revanche, si

$
m-n>1,
$

alors les deux facteurs $(m-n)$ et $(m+n)$ sont strictement supérieurs à $1$, donc $m^2-n^2$ est décomposable.

== (d) Un entier décomposable admet un diviseur premier inférieur ou égal à $sqrt(n)$

Soit $n$ un entier positif décomposable.

Il existe alors des entiers $a,b>1$ tels que

$
n=ab.
$

Supposons que

$
a>sqrt(n)
quad "et" quad
b>sqrt(n).
$

Alors

$
n=ab>sqrt(n)sqrt(n)=n,
$

contradiction.

Donc au moins l'un des deux facteurs vérifie

$
a<=sqrt(n)
quad "ou" quad
b<=sqrt(n).
$

Sans perte de généralité, supposons

$
a<=sqrt(n).
$

Si $a$ est premier, c'est terminé.

Sinon, par le théorème de factorisation en nombres premiers, $a$ possède un diviseur premier $p$ tel que

$
p<=a<=sqrt(n).
$

Comme $p$ divise $a$ et $a$ divise $n$, on a également

$
p divides n.
$

Ainsi tout entier décomposable $n$ admet un diviseur premier inférieur ou égal à $sqrt(n)$.
