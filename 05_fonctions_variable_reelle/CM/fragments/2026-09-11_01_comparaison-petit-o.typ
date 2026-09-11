#import "../style.typ": *

== Théorème de comparaison — version avec petit $o$

#proposition(title: "Théorème de comparaison — version 2")[
  Soient $(u_n)_(n in NN)$ et $(v_n)_(n in NN)$ deux suites positives telles que
  $
    u_n = o(v_n),
  $
  et supposons que la suite $(v_n)_(n in NN)$ ne s'annule pas à partir d'un certain rang.

  Si la série
  $
    sum v_n
  $
  converge, alors la série
  $
    sum u_n
  $
  converge.
]

#proof[
  Comme
  $
    u_n = o(v_n)
  $
  et comme $(v_n)$ ne s'annule pas à partir d'un certain rang,
  $
    lim_(n -> infinity) u_n / v_n = 0.
  $

  Ainsi,
  $
    forall epsilon > 0,
    exists N_0 in NN,
    forall n >= N_0,
    abs(u_n / v_n) < epsilon.
  $

  On prend $epsilon = 1$. Il existe donc $N_0 in NN$ tel que, pour tout $n >= N_0$,
  $
    abs(u_n / v_n) < 1.
  $

  Comme les suites $(u_n)$ et $(v_n)$ sont positives, on peut enlever les valeurs absolues et obtenir, pour tout $n >= N_0$,
  $
    0 <= u_n / v_n < 1.
  $

  Donc, pour tout $n >= N_0$,
  $
    0 <= u_n <= v_n.
  $

  On se retrouve dans les hypothèses du théorème de comparaison précédent. Si
  $
    sum v_n
  $
  converge, alors
  $
    sum u_n
  $
  converge.
]

=== Exemple

On s'intéresse à la série de terme général
$
  n^4 e^(-n).
$

D'après les puissances comparées,
$
  lim_(n -> infinity) n^6 e^(-n) = 0.
$

Or
$
  (n^4 e^(-n)) / (1/n^2)
  = n^6 e^(-n),
$

donc
$
  n^4 e^(-n) = o(1/n^2).
$

On sait que la série
$
  sum 1/n^2
$
converge. D'après le théorème de comparaison, la série de terme général
$
  n^4 e^(-n)
$
converge.

#remark[
  On a également
  $
    n^4 e^(-n) = o(1/n),
  $
  mais ce résultat ne permet pas de déduire la nature de la série de terme général $n^4 e^(-n)$, car
  $
    sum 1/n
  $
  diverge.
]
