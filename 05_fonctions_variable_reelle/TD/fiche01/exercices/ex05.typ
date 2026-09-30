// source-confidence: high
// source-note: statement cross-checked against the official TD01 sheet; handwritten correction supplied for questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5 — Examen Terminal Janvier 2026

On considère des suites $(u_n)_(n>=1)$ et $(v_n)_(n>=1)$ de nombres réels positifs.

== Question 1

Montrer que, pour tous réels $x$ et $y$ positifs,

$
sqrt(x y) <= 1/2 (x+y).
$

Comme

$
(sqrt(x)-sqrt(y))^2 >= 0,
$

on a

$
x+y-2sqrt(x y) >= 0.
$

Donc

$
2sqrt(x y) <= x+y,
$

d'où

$
sqrt(x y) <= 1/2 (x+y).
$

== Question 2

Supposons que les séries

$
sum_(n>=1) u_n
quad "et" quad
sum_(n>=1) v_n
$

soient convergentes.

Par opérations arithmétiques sur les séries convergentes,

$
sum_(n>=1) 1/2 (u_n+v_n)
$

est convergente.

D'après la question 1, pour tout $n>=1$,

$
0 <= sqrt(u_n v_n) <= 1/2 (u_n+v_n).
$

Par comparaison de séries à termes positifs,

$
sum_(n>=1) sqrt(u_n v_n)
$

est convergente.

== Question 3

On suppose que

$
sum_(n>=1) u_n
$

est convergente et que $u_n>=0$.

Soit

$
beta>1/2.
$

Alors

$
2beta>1.
$

D'après le critère de Riemann,

$
sum_(n>=1) 1/n^(2beta)
$

est convergente.

On applique la question 2 aux suites

$
u_n
quad "et" quad
v_n=1/n^(2beta).
$

On obtient la convergence de

$
sum_(n>=1) sqrt(u_n v_n).
$

Or

$
sqrt(u_n v_n)
=
sqrt(u_n/n^(2beta))
=
sqrt(u_n)/n^beta.
$

Ainsi,

$
sum_(n>=1) sqrt(u_n)/n^beta
$

est convergente.
