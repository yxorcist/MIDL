// source-confidence: high
// study-validation: 2026-10-30 — TD01 ex07 question 3 validée sur copie manuscrite (9,5/10) : comparaison u_n/(2/3)^n=sqrt(n)(3/4)^n -> 0, convergence de la série, positivité et télescopage de v_n, application de Q1 à u_n ~ 2v_n, équivalent R_N ~ sqrt(N)/2^N. Calcul télescopique rigoureux avec borne finie M. Exercice 7 terminé (3/3).
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

On pose $R_N=sum_(k=N+1)^infinity u_k$, avec $u_n=sqrt(n)/2^n$.

Vérifions la convergence de $sum_(n>=1) u_n$. On a

$
u_n/(2/3)^n
= sqrt(n) (3/4)^n -> 0.
$

Donc $u_n=o((2/3)^n)$. Comme $sum_(n>=1) (2/3)^n$ converge,
$sum_(n>=1) u_n$ converge par comparaison des séries positives.

D'après la factorisation de la question 2,
$v_n=u_n-u_(n+1)=sqrt(n)/2^(n+1) (2-sqrt(1+1/n))>0$ pour $n>=1$.
De plus, pour $M>=1$,

$
sum_(n=1)^M v_n=u_1-u_(M+1) -> u_1,
$

puisque $u_n->0$. Ainsi $sum_(n>=1) v_n$ converge.

La question 2 donne $u_n ~ 2v_n$ ; on applique donc la question 1 :

$
R_N ~ 2 sum_(k=N+1)^infinity v_k.
$

Pour $M>N$, par télescopage,

$
sum_(k=N+1)^M v_k
=sum_(k=N+1)^M (u_k-u_(k+1))
=u_(N+1)-u_(M+1).
$

En faisant tendre $M$ vers $+infinity$,

$
sum_(k=N+1)^infinity v_k=u_(N+1).
$

Finalement,

$
R_N ~ 2u_(N+1)
= sqrt(N+1)/2^N
~ sqrt(N)/2^N.
$

