// source-confidence: high
// source-note: statement cross-checked against the official TD01 sheet; handwritten correction supplied through question 3.d.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 8 — Examen terminal Juin 2026

Soient $(u_n)_(n in NN^*)$ et $(v_n)_(n in NN^*)$ des suites à termes
strictement positifs.

== Question 1

On suppose qu'il existe $n_0 in NN^*$ tel que, pour tout $n>=n_0$,

$
u_(n+1)/u_n
<=
v_(n+1)/v_n.
$

Comme tous les termes sont strictement positifs,

$
u_(n+1)/v_(n+1)
<=
u_n/v_n.
$

Donc la suite

$
(u_n/v_n)_(n>=n_0)
$

est décroissante.

Ainsi, pour tout $n>=n_0$,

$
0
<
u_n/v_n
<=
u_(n_0)/v_(n_0).
$

En multipliant par $v_n>0$,

$
0
<=
u_n
<=
(u_(n_0)/v_(n_0)) v_n.
$

On suppose dorénavant que

$
u_n=1/n^alpha,
quad
alpha in RR.
$

== Question 2

On a

$
u_(n+1)/u_n
=
(1/(n+1)^alpha)/(1/n^alpha)
=
(n/(n+1))^alpha
=
(1+1/n)^(-alpha).
$

Comme $1/n -> 0$, le développement limité de $(1+x)^(-alpha)$ en $0$ donne

$
(1+1/n)^(-alpha)
=
1-alpha/n+o(1/n).
$

Donc

$
u_(n+1)/u_n
=
1-alpha/n+o(1/n).
$

== Question 3

Pour tout $n in NN^*$, on pose

$
v_n
=
(1 dot 3 dot 5 dots (2n-1))
/
(2 dot 4 dot 6 dots (2n)).
$

=== 3.a

On calcule

$
v_(n+1)/v_n
=
(2n+1)/(2n+2).
$

Puis

$
(2n+1)/(2n+2)
=
1-1/(2n+2).
$

Or

$
1/(2n+2)
=
1/(2n) 1/(1+1/n)
=
1/(2n)+o(1/n).
$

Ainsi,

$
v_(n+1)/v_n
=
1-1/(2n)+o(1/n).
$

On obtient donc

$
beta=1/2.
$

=== 3.b

Supposons

$
alpha != beta.
$

D'après les développements précédents,

$
v_(n+1)/v_n-u_(n+1)/u_n
=
(1-beta/n+o(1/n))
-
(1-alpha/n+o(1/n)).
$

Donc

$
v_(n+1)/v_n-u_(n+1)/u_n
=
(alpha-beta)/n+o(1/n).
$

Comme $alpha-beta != 0$,

$
v_(n+1)/v_n-u_(n+1)/u_n
~
(alpha-beta)/n.
$

=== 3.c

Supposons

$
alpha>1/2.
$

Comme

$
beta=1/2,
$

on a

$
alpha-beta>0.
$

D'après l'équivalent précédent,

$
(v_(n+1)/v_n-u_(n+1)/u_n)
/((alpha-beta)/n)
->
1.
$

En prenant par exemple $epsilon=1/2$, il existe $N in NN$ tel que, pour tout
$n>=N$,

$
1/2
<
(v_(n+1)/v_n-u_(n+1)/u_n)
/((alpha-beta)/n)
<
3/2.
$

Comme

$
(alpha-beta)/n>0,
$

on obtient, pour tout $n>=N$,

$
v_(n+1)/v_n-u_(n+1)/u_n
>
0.
$

Ainsi,

$
u_(n+1)/u_n
<=
v_(n+1)/v_n
$

à partir d'un certain rang.

=== 3.d

Prenons

$
alpha=3/4.
$

On est alors dans la situation de la question 1 à partir d'un certain rang.
Il existe donc une constante $C>0$ telle que

$
0<=u_n<=C v_n
$

pour tout $n$ assez grand.

Or

$
u_n=1/n^(3/4).
$

D'après le critère de Riemann,

$
sum_(n>=1) u_n
$

diverge.

Par comparaison de séries à termes positifs, la série

$
sum_(n>=1) v_n
$

diverge également.
