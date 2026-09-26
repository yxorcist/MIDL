// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

== Question 1 — Équivalence des restes

Soient $(u_n)$ et $(v_n)$ deux suites positives telles que

$
u_n ~ v_n.
$

On suppose que les deux séries

$
sum_(n>=0) u_n
quad "et" quad
sum_(n>=0) v_n
$

convergent.

Les notes montrent que les restes correspondants sont équivalents :

$
sum_(n=N+1)^infinity u_n
~
sum_(n=N+1)^infinity v_n.
$

Comme

$
u_n ~ v_n,
$

on a

$
abs(u_n-v_n)=o(v_n).
$

Ainsi, pour tout $epsilon>0$, il existe $N_epsilon in NN$ tel que, pour tout
$n>=N_epsilon$,

$
abs(u_n-v_n)<epsilon v_n.
$

Soient $n<=n'$ avec $n>=N_epsilon$. Alors

$
abs(
  sum_(k=n)^(n') u_k
  -
  sum_(k=n)^(n') v_k
)
<=
sum_(k=n)^(n') abs(u_k-v_k)
<
epsilon
sum_(k=n)^(n') v_k.
$

En faisant tendre $n'$ vers $+infinity$,

$
abs(
  sum_(k=n)^infinity u_k
  -
  sum_(k=n)^infinity v_k
)
<=
epsilon
sum_(k=n)^infinity v_k.
$

Donc

$
sum_(k=n)^infinity u_k
-
sum_(k=n)^infinity v_k
=
o(
  sum_(k=n)^infinity v_k
).
$

Par conséquent,

$
sum_(k=n)^infinity u_k
~
sum_(k=n)^infinity v_k.
$

== Question 2

On considère

$
u_n=sqrt(n)/2^n
$

et on pose

$
v_n=u_n-u_(n+1).
$

Alors

$
v_n
=
sqrt(n)/2^n
-
sqrt(n+1)/2^(n+1).
$

On factorise :

$
v_n
=
sqrt(n)/2^(n+1)
(
  2-sqrt((n+1)/n)
).
$

Or

$
sqrt((n+1)/n)
=
sqrt(1+1/n)
->1.
$

Donc

$
2-sqrt((n+1)/n)
->1.
$

Ainsi,

$
v_n
~
sqrt(n)/2^(n+1).
$

Comme

$
u_n=sqrt(n)/2^n,
$

on obtient

$
v_n ~ u_n/2,
$

c'est-à-dire

$
u_n ~ 2v_n.
$

== Question 3 — Équivalent du reste

On pose

$
R_N
=
sum_(k=N+1)^infinity u_k,
$

où

$
u_k=sqrt(k)/2^k.
$

Les notes remarquent que

$
u_n=o((2/3)^n).
$

La série géométrique

$
sum (2/3)^n
$

converge. Par comparaison des séries positives,

$
sum u_n
$

converge, donc $R_N$ est bien défini.

D'après la question 2,

$
u_n ~ 2v_n.
$

En appliquant la question 1,

$
R_N
~
sum_(k=N+1)^infinity 2v_k.
$

Or

$
v_k=u_k-u_(k+1),
$

donc la somme est télescopique :

$
sum_(k=N+1)^infinity 2v_k
=
2
sum_(k=N+1)^infinity
(u_k-u_(k+1)).
$

Pour $K>N$,

$
sum_(k=N+1)^K
(u_k-u_(k+1))
=
u_(N+1)-u_(K+1).
$

Comme

$
u_(K+1)->0,
$

on obtient

$
sum_(k=N+1)^infinity
(u_k-u_(k+1))
=
u_(N+1).
$

Ainsi,

$
R_N ~ 2u_(N+1).
$

Enfin,

$
2u_(N+1)
=
2 sqrt(N+1)/2^(N+1)
=
sqrt(N+1)/2^N
~
sqrt(N)/2^N.
$

Donc

$
R_N
~
sqrt(N)/2^N
=
u_N.
$
