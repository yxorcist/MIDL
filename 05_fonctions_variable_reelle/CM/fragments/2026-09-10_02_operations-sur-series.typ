#import "../style.typ": *

=== Opérations sur les séries

#proposition(title: "Proposition 3")[
  Soient $(u_n)_(n in NN)$ et $(v_n)_(n in NN)$ deux suites de nombres réels.

  1. Si les séries $sum u_n$ et $sum v_n$ convergent, alors la série
     $sum (u_n + v_n)$ converge et, pour tout $lambda in RR$, la série
     $sum lambda u_n$ converge.

  2. Si la série $sum u_n$ converge et si la série $sum v_n$ diverge, alors
     la série $sum (u_n + v_n)$ diverge.
]

#remark[
  L'ensemble des séries convergentes forme un espace vectoriel.
]

#proof[
  Notons $(S_N)_(N in NN)$ et $(T_N)_(N in NN)$ les suites des sommes partielles
  associées respectivement à $sum u_n$ et $sum v_n$.

  *1.* Comme $sum u_n$ et $sum v_n$ convergent, les suites $(S_N)$ et $(T_N)$
  convergent. Alors les suites
  $
    (S_N + T_N)_(N in NN)
    quad "et" quad
    (lambda S_N)_(N in NN)
  $
  convergent pour tout $lambda in RR$.

  Par conséquent, les séries
  $
    sum (u_n + v_n)
    quad "et" quad
    sum lambda u_n
  $
  convergent.

  *2.* Supposons que $sum u_n$ converge et que $sum v_n$ diverge.

  Si $sum (u_n + v_n)$ convergeait, alors $sum (-u_n)$ convergerait d'après le
  point 1. On obtiendrait donc, encore d'après le point 1, que
  $
    sum ((u_n + v_n) - u_n) = sum v_n
  $
  converge, ce qui est une contradiction.
]
