#import "../style.typ": *

= Séries de Riemann — preuve complète

#proposition(title: "Théorème (séries de Riemann).", [
  Soit $alpha in RR$. La série

  $
  sum_(n >= 1) 1 / n^alpha
  $

  converge si et seulement si

  $
  alpha > 1.
  $
])

== Preuve

=== Cas $alpha < 0$

Dans ce cas,

$
1 / n^alpha = n^(-alpha),
$

avec $-alpha > 0$. Le terme général ne tend donc pas vers $0$ ; la série diverge.

=== Cas $alpha = 0$

Pour tout $n in NN^*$,

$
1 / n^alpha = 1.
$

Le terme général ne tend pas vers $0$ ; la série diverge.

=== Cas $alpha = 1$ : série harmonique

Pour $N in NN^*$, on considère

$
S_N = sum_(n=1)^N 1 / n.
$

La fonction

$
x mapsto 1 / x
$

est décroissante sur $]0, +oo[$. Pour tout $n >= 1$, sur l'intervalle $[n, n+1]$,

$
1 / x <= 1 / n.
$

Ainsi,

$
1 / n >= integral_n^(n+1) 1 / x dif x.
$

En sommant de $n=1$ à $n=N$ et en utilisant la relation de Chasles,

$
S_N
= sum_(n=1)^N 1 / n
>= sum_(n=1)^N integral_n^(n+1) 1 / x dif x
= integral_1^(N+1) 1 / x dif x.
$

Donc

$
S_N >= [ln(x)]_1^(N+1) = ln(N+1),
$

car $ln(1)=0$.

Or

$
lim_(N -> +oo) ln(N+1) = +oo.
$

On en déduit que $(S_N)$ tend vers $+oo$ et que

$
sum_(n >= 1) 1 / n
$

diverge.

#remark(title: "Interprétation graphique.", [
  Le tableau compare les rectangles de hauteur $1/n$ aux aires sous la courbe $y=1/x$ sur les intervalles $[n,n+1]$. Comme $1/x$ est décroissante, chaque rectangle est au-dessus de l'aire correspondante.
])

=== Cas $0 < alpha < 1$

Pour tout $n >= 1$, on a $ln(n) >= 0$. Comme $0 < alpha < 1$,

$
alpha ln(n) <= ln(n).
$

En exponentiant,

$
n^alpha = e^(alpha ln(n)) <= e^(ln(n)) = n.
$

Donc

$
1 / n^alpha >= 1 / n.
$

La série harmonique diverge et les termes sont positifs. Le théorème de comparaison donne alors

$
sum_(n >= 1) 1 / n^alpha " diverge".
$

=== Cas $alpha > 1$

On considère à nouveau les sommes partielles

$
S_N = sum_(n=1)^N 1 / n^alpha.
$

La fonction

$
x mapsto 1 / x^alpha
$

est décroissante sur $]0,+oo[$ puisque

$
(1 / x^alpha)' = -alpha x^(-alpha-1) < 0
$

pour $x>0$.

Pour tout $n >= 2$, sur $[n-1,n]$,

$
1 / n^alpha <= integral_(n-1)^n 1 / x^alpha dif x.
$

En sommant de $n=2$ à $n=N$,

$
sum_(n=2)^N 1 / n^alpha
<= integral_1^N 1 / x^alpha dif x.
$

Par la relation de Chasles et le calcul d'une primitive,

$
integral_1^N 1 / x^alpha dif x
= [x^(-alpha+1) / (1-alpha)]_1^N
= (N^(-alpha+1)-1)/(1-alpha).
$

On réécrit

$
(N^(-alpha+1)-1)/(1-alpha)
= 1/(alpha-1) - N^(-alpha+1)/(alpha-1)
<= 1/(alpha-1),
$

car $alpha-1>0$ et $N^(-alpha+1)>0$.

Ainsi, pour $N>=2$,

$
S_N
= 1 + sum_(n=2)^N 1 / n^alpha
<= 1 + 1/(alpha-1).
$

La suite $(S_N)$ est croissante puisque ses termes sont positifs, et elle est majorée. Elle converge donc. Par conséquent,

$
sum_(n >= 1) 1 / n^alpha
$

converge pour $alpha>1$.
