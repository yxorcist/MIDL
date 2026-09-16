#import "../style.typ": *

= Exemple — étude d'une série selon un paramètre

On considère

$
u_n = (n^2 + 1)^alpha - (n^2 - 1)^alpha
$

et on étudie la nature de

$
sum u_n
$

en fonction de $alpha in RR_+$.

Pour tout $n>=1$,

$
u_n
= n^(2 alpha) (1 + 1/n^2)^alpha
- n^(2 alpha) (1 - 1/n^2)^alpha
$

puis

$
u_n
= n^(2 alpha) [(1 + 1/n^2)^alpha - (1 - 1/n^2)^alpha].
$

On utilise le développement limité

$
(1+x)^alpha = 1 + alpha x + o(x)
$

au voisinage de $0$.

Comme

$
1/n^2 -> 0,
$

on obtient

$
(1 + 1/n^2)^alpha
= 1 + alpha/n^2 + o(1/n^2)
$

et

$
(1 - 1/n^2)^alpha
= 1 - alpha/n^2 + o(1/n^2).
$

Ainsi,

$
u_n
= n^(2 alpha) [2 alpha/n^2 + o(1/n^2)].
$

Donc

$
u_n
= 2 alpha / n^(2(1-alpha))
+ o(1 / n^(2(1-alpha))).
$

Si $alpha != 0$,

$
u_n ~ 2 alpha / n^(2(1-alpha)).
$

Comme $alpha>0$, le coefficient $2 alpha$ est positif. On compare alors avec une série de Riemann d'exposant

$
beta = 2(1-alpha).
$

La série converge lorsque

$
2(1-alpha) > 1,
$

c'est-à-dire

$
alpha < 1/2.
$

On distingue finalement :

- si $alpha=0$, alors $u_n = 1-1=0$ et la série converge ;
- si $0<alpha<1/2$, la série $sum u_n$ converge ;
- si $alpha>=1/2$, la série $sum u_n$ diverge.
