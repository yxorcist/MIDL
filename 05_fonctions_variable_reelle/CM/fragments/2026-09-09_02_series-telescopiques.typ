#import "../style.typ": *

=== Séries télescopiques

Soit $(a_n)_(n in NN)$ une suite de nombres réels.

Pour tout $n in NN$, on pose
$
  u_n = a_n - a_(n+1).
$

Calculons la $N$-ième somme partielle de la série $sum u_n$.

Pour $N in NN$,
$
  S_N
  &= sum_(k=0)^N (a_k - a_(k+1)) \
  &= sum_(k=0)^N a_k - sum_(k=0)^N a_(k+1) \
  &= sum_(k=0)^N a_k - sum_(k=1)^(N+1) a_k \
  &= a_0 - a_(N+1).
$

Ainsi, la suite $(S_N)_(N in NN)$ converge si et seulement si la suite $(a_(N+1))_(N in NN)$ converge.

#example(title: "Exemple — Série télescopique")[
  Prenons, pour $n in NN^*$,
  $
    u_n = 1 / (n(n+1)) = 1/n - 1/(n+1).
  $

  Pour $N in NN^*$,
  $
    S_N
    &= sum_(k=1)^N u_k \
    &= sum_(k=1)^N 1/k - sum_(k=1)^N 1/(k+1) \
    &= sum_(k=1)^N 1/k - sum_(k=2)^(N+1) 1/k \
    &= 1 - 1/(N+1).
  $

  La suite $(S_N)_(N >= 1)$ converge vers $1$. La série $sum u_n$ est donc convergente et
  $
    sum_(k=1)^infinity u_k = lim_(N -> infinity) sum_(k=1)^N u_k = 1.
  $
]
