#import "../style.typ": *

=== Théorème de comparaison — version majoration

#proposition(title: "Théorème de comparaison — version majoration 1")[
  Soient $(u_n)_(n in NN)$ et $(v_n)_(n in NN)$ deux suites telles que, pour tout
  $n in NN$,
  $
    0 <= u_n <= v_n.
  $

  1. Si la série $sum v_n$ converge, alors la série $sum u_n$ converge et
     $
       0 <= sum_(n=0)^infinity u_n <= sum_(n=0)^infinity v_n.
     $

  2. Si la série $sum u_n$ diverge, alors la série $sum v_n$ diverge.
]

#proof[
  Notons, pour tout $N in NN$,
  $
    S_N = sum_(k=0)^N u_k
    quad "et" quad
    T_N = sum_(k=0)^N v_k.
  $

  *1.* Supposons que $sum v_n$ converge. D'après la proposition 4, la suite
  $(T_N)_(N in NN)$ est majorée : il existe $M in RR$ tel que, pour tout
  $N in NN$,
  $
    T_N <= M.
  $

  Comme $0 <= u_n <= v_n$ pour tout $n in NN$, en sommant ces inégalités de
  $n=0$ à $n=N$, on obtient
  $
    0 <= sum_(n=0)^N u_n <= sum_(n=0)^N v_n,
  $
  soit
  $
    0 <= S_N <= T_N <= M.
  $

  La suite $(S_N)$ est donc majorée. D'après la proposition 4, la série
  $sum u_n$ converge.

  En passant à la limite quand $N -> infinity$, on obtient
  $
    0 <= sum_(n=0)^infinity u_n <= sum_(n=0)^infinity v_n.
  $

  *2.* C'est la contraposée du point 1.
]

#remark[
  Le résultat reste valable si les suites $(u_n)$ et $(v_n)$ vérifient
  $
    0 <= u_n <= v_n
  $
  seulement à partir d'un certain rang, sauf pour l'inégalité portant sur les sommes.
]
