#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

On considère, pour $n >= 1$,

$
u_n = 1/sqrt(n) - 1/sqrt(n+1).
$

== 1. Positivité

Pour $n >= 1$,

$
sqrt(n+1) > sqrt(n),
$

donc

$
1/sqrt(n) > 1/sqrt(n+1).
$

Ainsi,

$
u_n > 0.
$

== 2. Somme de la série

Pour $N >= 1$,

$
S_N
=
sum_(k=1)^N u_k
=
sum_(k=1)^N
(1/sqrt(k)-1/sqrt(k+1)).
$

La somme est télescopique :

$
S_N
=
1-1/sqrt(N+1).
$

Comme

$
1/sqrt(N+1) -> 0,
$

on obtient

$
S_N -> 1.
$

Donc la série converge et

$
sum_(k=1)^infinity
(1/sqrt(k)-1/sqrt(k+1))
=
1.
$
