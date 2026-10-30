// source-confidence: high
// study-validation: 2026-10-30 — TD01 ex07 question 2 validée sur copie manuscrite indépendante (10/10) : factorisation de v_n=sqrt(n)/2^(n+1)(2-sqrt(1+1/n)), limite du facteur vers 1, puis u_n ~ 2v_n et alpha=2 ; rédaction condensée, Q1 et Q3 inchangées.
// study-validation: 2026-10-30 — TD01 ex07 question 1 validée (10/10) : preuve manuscrite directe par epsilon, encadrement de u_n/v_n, multiplication par v_n>0, sommation des restes convergents puis encadrement de R_N^u/R_N^v ; correction raccourcie, Q2/Q3 préservées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

== Question 1 — Équivalence des restes

On suppose $u_n ~ v_n$, avec $(u_n)$ et $(v_n)$ positives et
$sum_(n>=0) u_n$, $sum_(n>=0) v_n$ convergentes. On pose

$
R_N^u=sum_(n=N+1)^infinity u_n
quad "et" quad
R_N^v=sum_(n=N+1)^infinity v_n.
$

Comme $u_n/v_n -> 1$, pour tout $epsilon>0$, il existe $N_epsilon$
tel que, pour tout $n>=N_epsilon$,

$
abs(u_n/v_n-1)<epsilon
quad <=> quad
1-epsilon < u_n/v_n < 1+epsilon.
$

Puisque $v_n>0$ à partir d'un certain rang, on multiplie par $v_n$,
puis on somme de $n=N+1$ à $+infinity$, pour $N$ assez grand :

$
(1-epsilon) R_N^v <= R_N^u <= (1+epsilon) R_N^v.
$

Comme $R_N^v>0$, on divise :

$
1-epsilon <= R_N^u/R_N^v <= 1+epsilon.
$

Cet encadrement valant pour tout $epsilon>0$ à partir d'un certain rang,
$R_N^u/R_N^v -> 1$. Donc $R_N^u ~ R_N^v$.

== Question 2

On pose $u_n=sqrt(n)/2^n$ et $v_n=u_n-u_(n+1)$.

En factorisant,

$
v_n
= sqrt(n)/2^n - sqrt(n+1)/2^(n+1)
= sqrt(n)/2^(n+1) (2-sqrt(1+1/n)).
$

Or $1/n -> 0$, donc $2-sqrt(1+1/n) -> 1$. Ainsi,

$
v_n ~ sqrt(n)/2^(n+1) = u_n/2.
$

Par conséquent,

$
u_n ~ 2v_n
quad "et donc" quad
alpha=2.
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
