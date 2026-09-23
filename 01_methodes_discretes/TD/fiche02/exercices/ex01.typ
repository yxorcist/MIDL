#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

Montrons par récurrence que, pour tout $n in NN$,

$
sum_(i=0)^n floor(i/2)
=
cases(
n^2/4 & "si " n " est pair",
(n^2-1)/4 & "si " n " est impair".
)
$

== Initialisation

Pour $n=0$,

$
sum_(i=0)^0 floor(i/2)
=
floor(0/2)
=
0
=
0^2/4.
$

La propriété est vraie au rang $0$.

Pour $n=1$,

$
sum_(i=0)^1 floor(i/2)
=
floor(0/2)+floor(1/2)
=
0
=
(1^2-1)/4.
$

La propriété est vraie au rang $1$.

== Hérédité

Supposons la propriété vraie au rang $n$.

On a

$
sum_(i=0)^(n+1) floor(i/2)
=
sum_(i=0)^n floor(i/2)
+
floor((n+1)/2).
$

On distingue deux cas.

=== Cas 1 : $n+1$ est impair

Il existe $k in NN$ tel que

$
n+1=2k+1.
$

Alors $n=2k$ est pair. Par hypothèse de récurrence,

$
sum_(i=0)^n floor(i/2)
=
n^2/4.
$

De plus,

$
floor((n+1)/2)
=
floor(k+1/2)
=
k
=
n/2.
$

Ainsi,

$
sum_(i=0)^(n+1) floor(i/2)
=
n^2/4+n/2
=
(n^2+2n)/4
=
((n+1)^2-1)/4.
$

La formule est donc vérifiée pour $n+1$ impair.

=== Cas 2 : $n+1$ est pair

Alors $n$ est impair. Par hypothèse de récurrence,

$
sum_(i=0)^n floor(i/2)
=
(n^2-1)/4.
$

Comme

$
floor((n+1)/2)=(n+1)/2,
$

on obtient

$
sum_(i=0)^(n+1) floor(i/2)
=
(n^2-1)/4+(n+1)/2
$

$
=
(n^2+2n+1)/4
=
(n+1)^2/4.
$

La formule est donc vérifiée pour $n+1$ pair.

Par récurrence, la propriété est vraie pour tout $n in NN$.
