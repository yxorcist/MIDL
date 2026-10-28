// source-confidence: high
// source: TD01_series-positives.pdf, exercice 1.
// study-validation: 2026-10-28 — questions 1 et 2 résolues à la main et vérifiées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD01 — Exercice 1

== Question 1

Pour $n >= 1$, on pose $u_n = 1/sqrt(n) - 1/sqrt(n+1)$.

Comme $sqrt(n) < sqrt(n+1)$ et que les deux termes sont positifs,
$
1/sqrt(n) > 1/sqrt(n+1) quad => quad u_n > 0.
$

Posons $a_n = 1/sqrt(n)$. Alors $u_n = a_n - a_(n+1)$.

Pour $N >= 1$, la somme est télescopique :
$
S_N &= sum_(n=1)^N (a_n-a_(n+1)) \
    &= a_1-a_(N+1) \
    &= 1-1/sqrt(N+1) -> 1.
$

Donc la série converge et
$
sum_(n=1)^infinity u_n = 1.
$

== Question 2

Pour $n >= 2$,
$
u_n &= 1/sqrt(n-1)-2/sqrt(n)+1/sqrt(n+1) \
    &= (1/sqrt(n-1)-1/sqrt(n)) - (1/sqrt(n)-1/sqrt(n+1)).
$

Posons
$
v_n = 1/sqrt(n-1)-1/sqrt(n).
$
Alors $v_(n+1) = 1/sqrt(n)-1/sqrt(n+1)$, d'où $u_n = v_n-v_(n+1)$.

Pour $N >= 2$,
$
S_N &= sum_(n=2)^N (v_n-v_(n+1)) \
    &= v_2-v_(N+1) \
    &= 1-1/sqrt(2)-1/sqrt(N)+1/sqrt(N+1).
$

Or $v_(N+1) = 1/sqrt(N)-1/sqrt(N+1) -> 0$.

Donc la série converge et
$
sum_(n=2)^infinity u_n = 1-1/sqrt(2).
$
