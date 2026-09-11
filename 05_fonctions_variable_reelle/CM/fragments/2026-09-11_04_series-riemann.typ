#import "../style.typ": *

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
