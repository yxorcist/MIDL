#import "../style.typ": *

=== Condition nécessaire de convergence

#proposition(title: "Proposition 2 — Condition nécessaire de convergence")[
  Si la série de terme général $u_n$ converge, alors
  $
    lim_(n -> infinity) u_n = 0.
  $
]

#warning[
  La réciproque est fausse.
]

#proof[
  Pour tout $n >= 1$,
  $
    u_n = S_n - S_(n-1),
  $
  puisque
  $
    S_n = sum_(k=0)^n u_k
    quad "et" quad
    S_(n-1) = sum_(k=0)^(n-1) u_k.
  $

  Comme la série de terme général $u_n$ converge, la suite de ses sommes partielles
  $(S_n)_(n in NN)$ converge. Notons $S$ sa limite.

  La suite $(S_(n-1))$ converge également vers $S$. Ainsi,
  $
    lim_(n -> infinity) u_n
    = lim_(n -> infinity) S_n - lim_(n -> infinity) S_(n-1)
    = S - S
    = 0.
  $
]

La contraposée donne le corollaire suivant.

#proposition(title: "Corollaire — Critère de divergence")[
  Si la suite $(u_n)_(n in NN)$ ne tend pas vers $0$, alors la série
  $sum u_n$ ne converge pas.
]

#example[
  La série de terme général $1$ ne converge pas.
]
