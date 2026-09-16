#import "../style.typ": *

= Comparaison avec les séries de Riemann

#proposition(title: "Résultats pratiques.", [
  Soit $(u_n)$ une suite réelle.

  1. Si

     $
     u_n ~ A / n^alpha
     $

     avec $A>0$, alors $u_n >= 0$ à partir d'un certain rang et

     $
     sum u_n " converge" <=> alpha > 1.
     $

  2. S'il existe $alpha>1$ tel que

     $
     n^alpha u_n -> 0
     $

     et $u_n >= 0$ à partir d'un certain rang, alors

     $
     sum u_n
     $

     converge.

  3. Si

     $
     lim_(n -> +oo) n u_n = +oo,
     $

     alors

     $
     sum u_n
     $

     diverge.
])

== Justification du premier résultat

Si

$
u_n ~ A / n^alpha
$

avec $A>0$, alors $u_n$ est positif à partir d'un certain rang. Le théorème de comparaison par équivalence donne que

$
sum u_n
$

et

$
sum A / n^alpha
$

sont de même nature. Comme multiplier une série par le scalaire positif $A$ ne change pas sa nature, le résultat découle du théorème sur les séries de Riemann :

$
sum 1 / n^alpha " converge" <=> alpha > 1.
$

== Justification du deuxième résultat

La condition

$
n^alpha u_n -> 0
$

signifie

$
u_n = o(1 / n^alpha).
$

Comme $alpha>1$, la série de Riemann

$
sum 1 / n^alpha
$

converge. Le théorème de comparaison pour les séries positives permet donc de conclure que

$
sum u_n
$

converge.

== Justification du troisième résultat

Supposons

$
lim_(n -> +oo) n u_n = +oo.
$

Prenons $A=1$. Il existe alors $N in NN$ tel que, pour tout $n>=N$,

$
n u_n >= 1.
$

Ainsi,

$
u_n >= 1/n
$

pour tout $n>=N$.

Or la série harmonique

$
sum_(n>=1) 1/n
$

diverge. Les deux suites étant positives à partir d'un certain rang, le théorème de comparaison par minoration donne que

$
sum u_n
$

diverge.
