#import "../style.typ": *

=== Séries géométriques

Considérons, pour $n in NN$,
$
  u_n = a^n,
$
où $a in RR$.

On sait calculer les sommes partielles de la série $sum u_n$. Pour $N in NN$,
$
  S_N = sum_(k=0)^N a^k
  =
  cases(
    (1 - a^(N+1)) / (1-a) & "si " a != 1,
    N+1 & "si " a = 1.
  )
$

#proof[
  Pour $a != 1$,
  $
    (1-a) sum_(k=0)^N a^k
    &= sum_(k=0)^N a^k - sum_(k=0)^N a^(k+1) \
    &= sum_(k=0)^N a^k - sum_(k=1)^(N+1) a^k \
    &= 1 - a^(N+1).
  $

  Donc
  $
    sum_(k=0)^N a^k = (1-a^(N+1))/(1-a).
  $
]

Si $a = 1$, la suite $(S_N)_(N in NN)$ diverge ; la série $sum a^n$ diverge donc.

Si $a != 1$, la suite $(S_N)_(N in NN)$ est convergente si et seulement si la suite $(a^(N+1))_(N in NN)$ converge, c'est-à-dire si et seulement si
$
  abs(a) < 1.
$

#proposition(title: "Conclusion — Nature d'une série géométrique")[
  - Si $abs(a) >= 1$, la série $sum a^n$ est divergente.
  - Si $abs(a) < 1$, la série $sum a^n$ est convergente et
    $
      sum_(n=0)^infinity a^n
      =
      lim_(N -> infinity) (1-a^(N+1))/(1-a)
      =
      1/(1-a).
    $
]
