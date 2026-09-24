#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 16/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Séries de Riemann et comparaisons]
]
#line(length: 100%)
#v(0.7em)

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

= Exemples intermédiaires notés au tableau

== Suite alternant selon la parité

Le tableau introduit la suite $(u_n)_(n in NN)$ définie par

$
u_n = cases(
  0 & "si " n " est impair",
  1 & "si " n " est pair",
)
$

Aucune conclusion supplémentaire concernant cette suite n'est lisible sur les photographies fournies ; elle est conservée ici telle qu'elle apparaît au tableau.

== Cas $u_n = 1/(n ln(n))$

Le tableau considère ensuite, pour $n>=2$,

$
u_n = 1/(n ln(n)).
$

Pour $alpha>1$,

$
n^alpha u_n
= n^(alpha-1)/ln(n)
-> +oo.
$

Cette observation figure au tableau à côté de la question portant sur la nature de la série

$
sum u_n.
$

Les photographies ne contiennent pas de conclusion complète pour cet exemple ; aucune conclusion supplémentaire n'est ajoutée ici.

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
