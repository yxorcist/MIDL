#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 11/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Comparaison asymptotique et séries de Riemann]
]
#line(length: 100%)
#v(0.7em)

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

== Exemple avec un développement limité

#example[
  Considérons la suite $(u_n)_(n in NN)$ définie par
  $
    u_n = 1 - cos(1/n).
  $

  Pour tout $x in RR$,
  $
    cos(x) <= 1,
  $
  donc
  $
    1 - cos(x) >= 0.
  $
  Ainsi, pour tout $n >= 1$,
  $
    u_n >= 0.
  $

  Au voisinage de $0$,
  $
    cos(x) = 1 - x^2/2 + o(x^2).
  $
  Donc
  $
    1 - cos(x) = x^2/2 + o(x^2).
  $

  Comme
  $
    lim_(n -> infinity) 1/n = 0,
  $
  on en déduit
  $
    u_n
    = 1 - cos(1/n)
    = 1/(2 n^2) + o(1/n^2).
  $

  D'où
  $
    u_n ∼ 1/(2 n^2).
  $

  Comme la série
  $
    sum 1/n^2
  $
  converge, la série
  $
    sum 1/(2 n^2)
  $
  converge également.

  On déduit du théorème de comparaison, version équivalente, que la série
  $
    sum u_n
  $
  converge.
]

== Séries de Riemann

#definition(title: "Définition 7 — Série de Riemann")[
  On appelle *série de Riemann* toute série de terme général
  $
    1/n^alpha,
  $
  avec $alpha in RR$.
]

#proposition(title: "Théorème — Riemann")[
  Soit $alpha in RR$.

  La série de terme général
  $
    1/n^alpha
  $
  converge si et seulement si
  $
    alpha > 1.
  $
]

=== Début de la démonstration — cas $alpha < 0$

Supposons
$
  alpha < 0.
$

On a
$
  1/n^alpha
  = n^(-alpha)
  = e^(-alpha ln(n)).
$

Or
$
  lim_(n -> infinity) ln(n) = +infinity.
$

Comme
$
  -alpha > 0,
$
on obtient
$
  lim_(n -> infinity) -alpha ln(n) = +infinity.
$

Ainsi,
$
  lim_(n -> infinity) 1/n^alpha
  = +infinity,
$
car
$
  lim_(y -> infinity) e^y = +infinity.
$

En particulier, le terme général $1/n^alpha$ ne tend pas vers $0$ lorsque $n$ tend vers $+infinity$.

La série
$
  sum 1/n^alpha
$
diverge donc.
