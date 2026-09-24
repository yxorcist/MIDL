#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 10/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Séries positives et théorème de comparaison]
]
#line(length: 100%)
#v(0.7em)

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

=== Séries positives

#definition(title: "Définition 6 — Série positive")[
  On dit que la série de terme général $u_n$ est *positive* (ou *à termes positifs*)
  si, pour tout $n in NN$,
  $
    u_n >= 0.
  $

  On dit que la série de terme général $u_n$ est *positive à partir d'un certain rang*
  s'il existe $N_0 in NN$ tel que, pour tout $n >= N_0$,
  $
    u_n >= 0.
  $
]

#warning[
  Tous les résultats de cette partie ne s'appliquent qu'aux séries positives.
]

#remark[
  Pour une série $sum u_n$ positive, la suite de ses sommes partielles
  $(S_N)_(N in NN)$ est croissante.

  En effet, pour tout $N in NN$,
  $
    S_(N+1) - S_N
    = sum_(k=0)^(N+1) u_k - sum_(k=0)^N u_k
    = u_(N+1)
    >= 0.
  $

  On a donc deux possibilités : soit $(S_N)$ converge, soit
  $
    lim_(N -> infinity) S_N = +infinity,
  $
  selon que la suite $(S_N)$ est majorée ou non.
]

#proposition(title: "Proposition 4 — Critère pour une série positive")[
  Soit $sum u_n$ une série positive à partir d'un certain rang.

  La série de terme général $u_n$ converge si et seulement si la suite de ses
  sommes partielles est majorée.
]

#proof[
  *Sens réciproque.* Supposons que la suite des sommes partielles soit majorée.
  À partir du rang où les termes sont positifs, cette suite est croissante.
  D'après la remarque précédente, elle converge. Ainsi, la série converge.

  *Sens direct.* Supposons que la série $sum u_n$ converge. Si la suite de ses
  sommes partielles n'était pas majorée, elle tendrait vers $+infinity$ puisqu'elle
  est croissante à partir d'un certain rang. Cela contredirait sa convergence.
]

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

=== Exemples d'application

==== Série de terme général $1/n^2$

Considérons la série de terme général $1/n^2$ pour $n >= 2$.

Pour tout $n >= 2$,
$
  0 <= 1/n^2 <= 1/(n(n-1)),
$
car
$
  n^2 >= n(n-1).
$

On a
$
  1/(n(n-1)) = 1/(n-1) - 1/n.
$

La série
$
  sum_(n=2)^infinity 1/(n(n-1))
$
est donc une série télescopique. En reprenant l'exemple de la série
$sum_(n >= 1) 1/(n(n+1))$, on montre qu'elle converge et que
$
  sum_(n=2)^infinity 1/(n(n-1)) = 1.
$

D'après le théorème de comparaison, la série
$
  sum_(n=2)^infinity 1/n^2
$
converge. De plus,
$
  0
  <= sum_(n=2)^infinity 1/n^2
  <= sum_(n=2)^infinity 1/(n(n-1))
  = 1.
$

Ainsi,
$
  sum_(n=1)^infinity 1/n^2
  = 1 + sum_(n=2)^infinity 1/n^2
  <= 1 + 1
  = 2.
$

#remark[
  En réalité,
  $
    sum_(n=1)^infinity 1/n^2 = pi^2/6.
  $
  Ce résultat est plus difficile.
]

==== Développement décimal

Soit $(x_n)_(n >= 1)$ une suite de chiffres vérifiant, pour tout $n >= 1$,
$
  0 <= x_n <= 9.
$

Considérons la série
$
  sum_(n=1)^infinity x_n/10^n.
$

Pour tout $n >= 1$,
$
  0 <= x_n/10^n <= 9/10^n.
$

La série
$
  sum_(n=1)^infinity 1/10^n
$
converge car c'est une série géométrique de raison $a = 1/10$, avec
$abs(a) < 1$.

Par conséquent, la série
$
  sum_(n=1)^infinity 9/10^n
$
converge. On a également
$
  sum_(n=1)^infinity 9/10^n
  = 9/10 times 1/(1 - 1/10)
  = 1.
$

D'après le théorème de comparaison, la série
$
  sum_(n=1)^infinity x_n/10^n
$
converge et
$
  0 <= sum_(n=1)^infinity x_n/10^n <= 1.
$

#remark[
  Pour $a != 1$,
  $
    sum_(k=1)^N a^k = a (1-a^N)/(1-a).
  $
]

Tout nombre $y in [0,1]$ s'écrit sous forme décimale
$
  y = 0,x_1 x_2 x_3 dots
  = sum_(n=1)^infinity x_n/10^n.
$
