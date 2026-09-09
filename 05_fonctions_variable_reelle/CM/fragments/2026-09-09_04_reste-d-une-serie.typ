#import "../style.typ": *

=== Reste d'ordre $N$ d'une série convergente

#definition(title: "Définition 5 — Reste d'ordre N")[
  On suppose que la série $sum u_n$ converge.

  Notons $(S_N)_(N in NN)$ la suite de ses sommes partielles et
  $
    S = sum_(n=0)^infinity u_n
  $
  la somme de cette série.

  On pose
  $
    R_N = S - S_N = sum_(n=N+1)^infinity u_n.
  $

  Le nombre $R_N$ est appelé *reste d'ordre $N$* de la série $sum u_n$.
]

#remark[
  On a
  $
    lim_(N -> infinity) R_N = 0.
  $

  Le reste $R_N$ est utilisé pour estimer l'erreur commise en approchant $S$ par $S_N$.
]

Reprenons les deux exemples précédents.

==== Série $sum 1/(n(n+1))$

On a
$
  S = 1
  quad "et" quad
  S_N = 1 - 1/(N+1).
$

Ainsi, pour $N in NN^*$,
$
  R_N
  = S - S_N
  = 1 - (1 - 1/(N+1))
  = 1/(N+1).
$

La convergence de cette série n'est pas très rapide. Pour avoir
$
  abs(R_N) < 10^(-3),
$
il faut prendre $N > 999$.

==== Série géométrique

Pour la série $sum_(n >= 0) a^n$, dans le cas où $abs(a) < 1$,
$
  S = 1/(1-a)
  quad "et" quad
  S_N = (1-a^(N+1))/(1-a).
$

Ainsi, pour $N in NN$,
$
  R_N
  &= S - S_N \
  &= 1/(1-a) - (1-a^(N+1))/(1-a) \
  &= a^(N+1)/(1-a).
$

Pour $a = 1/2$, il suffit de prendre $N >= 10$ pour garantir
$
  abs(R_N)
  = abs((1/2)^(N+1)/(1/2))
  = (1/2)^N
  < 10^(-3).
$

La convergence est donc beaucoup plus rapide dans cet exemple.

#remark(title: "Parenthèse notée dans le cours")[
  $
    sum_(n=1)^infinity 1/n^2 = pi^2/6.
  $
]
