#import "../style.typ": *

== Conséquences du théorème de comparaison

#proposition(title: "Corollaire")[
  Soient $(u_n)_(n in NN)$, $(v_n)_(n in NN)$ et $(w_n)_(n in NN)$ trois suites positives.

  Supposons qu'il existe $N_0 in NN$ tel que, pour tout $n >= N_0$,
  $
    u_n <= v_n <= w_n.
  $

  Si les séries
  $
    sum u_n
    quad "et" quad
    sum w_n
  $
  sont de même nature, alors les trois séries
  $
    sum u_n,
    quad
    sum v_n,
    quad
    sum w_n
  $
  sont de même nature.
]

#proof[
  Si les séries $sum u_n$ et $sum w_n$ convergent, alors, d'après le théorème de comparaison et l'inégalité
  $
    0 <= v_n <= w_n,
  $
  la série $sum v_n$ converge.

  Si les séries $sum u_n$ et $sum w_n$ divergent, alors la série $sum v_n$ ne peut pas converger : sinon, comme
  $
    0 <= u_n <= v_n,
  $
  le théorème de comparaison impliquerait que $sum u_n$ converge, contradiction.
]

== Théorème de comparaison — version équivalente

#proposition(title: "Théorème de comparaison — version équivalente")[
  Soient $(u_n)_(n in NN)$ et $(v_n)_(n in NN)$ deux suites positives, au moins à partir d'un certain rang, et supposons que $(v_n)$ ne s'annule pas à partir d'un certain rang.

  Si
  $
    u_n ∼ v_n,
  $
  alors les séries
  $
    sum u_n
    quad "et" quad
    sum v_n
  $
  sont de même nature.
]

#proof[
  Comme
  $
    u_n ∼ v_n
  $
  et comme $(v_n)$ ne s'annule pas à partir d'un certain rang,
  $
    lim_(n -> infinity) u_n / v_n = 1.
  $

  Ainsi,
  $
    forall epsilon > 0,
    exists N_0 in NN,
    forall n >= N_0,
    abs(u_n / v_n - 1) < epsilon.
  $

  On prend $epsilon = 1/2$. Il existe donc $N_0 in NN$ tel que, pour tout $n >= N_0$,
  $
    abs(u_n / v_n - 1) < 1/2.
  $

  On en déduit
  $
    -1/2 < u_n / v_n - 1 < 1/2,
  $
  donc
  $
    1/2 < u_n / v_n < 3/2.
  $

  À partir d'un certain rang, $v_n > 0$. On peut donc multiplier par $v_n$ :
  $
    1/2 v_n < u_n < 3/2 v_n.
  $

  Les séries
  $
    sum v_n,
    quad
    sum (1/2 v_n),
    quad
    sum (3/2 v_n)
  $
  sont de même nature. D'après le corollaire précédent, la série $sum u_n$ est donc de même nature que la série $sum v_n$.
]

#remark[
  1. Les développements limités permettent souvent d'obtenir des équivalents entre suites.

  2. Il suffit de vérifier que l'une des deux suites est positive et ne s'annule pas à partir d'un certain rang. Par exemple, si $v_n > 0$ à partir d'un certain rang et si
  $
    u_n / v_n -> 1,
  $
  alors $u_n > 0$ à partir d'un certain rang également.
]
