#import "../style.typ": *

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
