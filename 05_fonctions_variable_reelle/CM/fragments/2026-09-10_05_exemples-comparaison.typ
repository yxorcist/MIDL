#import "../style.typ": *

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
