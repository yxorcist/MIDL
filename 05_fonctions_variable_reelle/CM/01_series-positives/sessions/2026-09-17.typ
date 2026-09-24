#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 17/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Fin du chapitre 1 — série logarithmique]
]
#line(length: 100%)
#v(0.7em)

= Exemple — série logarithmique

Les notes considèrent la série de terme général

$
u_n = 1 / (n (ln n)^2).
$

On utilise une comparaison série-intégrale.

== Décroissance de la fonction associée

Pour $x>1$, on pose

$
f(x) = 1 / (x (ln x)^2).
$

La dérivée relevée dans les notes est

$
f'(x)
= - (1 / (x^2 (ln x)^2) + 2 / (x^2 (ln x)^3))
< 0.
$

La fonction $f$ est donc décroissante sur $]1,+oo[$.

Pour $n>=3$, la décroissance donne, sur l'intervalle $[n-1,n]$,

$
1 / (n (ln n)^2)
<= integral_(n-1)^n 1 / (x (ln x)^2) dif x.
$

== Sommation des inégalités

Soit $N>=3$. En sommant de $n=3$ à $n=N$,

$
sum_(n=3)^N 1 / (n (ln n)^2)
<=
sum_(n=3)^N integral_(n-1)^n 1 / (x (ln x)^2) dif x.
$

Les intégrales se recollent :

$
sum_(n=3)^N 1 / (n (ln n)^2)
<=
integral_2^N 1 / (x (ln x)^2) dif x.
$

Avec le changement de variable implicite $u=ln x$,

$
integral_2^N 1 / (x (ln x)^2) dif x
=
[-1 / ln x]_2^N
=
-1 / ln N + 1 / ln 2
<=
1 / ln 2.
$

Ainsi, pour

$
S_N = sum_(n=2)^N 1 / (n (ln n)^2),
$

on obtient

$
S_N
=
1 / (2 (ln 2)^2)
+
sum_(n=3)^N 1 / (n (ln n)^2)
<=
1 / (2 (ln 2)^2) + 1 / ln 2.
$

La suite des sommes partielles $(S_N)_(N>=2)$ est donc majorée. Comme les termes sont positifs, elle est croissante. On en déduit que

$
sum_(n>=2) 1 / (n (ln n)^2)
$

converge.

== Forme générale de la comparaison intégrale

La dernière ligne des notes rappelle le mécanisme utilisé. Si $f$ est décroissante, alors pour $x in [n-1,n]$,

$
f(n) <= f(x).
$

En intégrant entre $n-1$ et $n$,

$
f(n)
=
integral_(n-1)^n f(n) dif x
<=
integral_(n-1)^n f(x) dif x.
$
