// source-confidence: high
// study-validation: 2026-10-29 — TD01 ex03 question 13 résolue sur copie manuscrite : cas alpha != 2 divergent, alpha = 2 convergent ; conclusion vérifiée et justification rendue rigoureuse par le conjugué, sans notation grand O.
// study-validation: 2026-10-28 — TD01 ex03 question 12 vérifiée sur copie manuscrite : DL du logarithme et de l'exponentielle, équivalent u_n ~ e/(2n), divergence par équivalence avec la série harmonique multipliée par e/2 > 0.
// study-validation: 2026-10-28 — TD01 ex03 question 11 vérifiée sur copie manuscrite : cas alpha>0 par DL et Riemann (seuil alpha=2), cas alpha<=0 par comparaison avec (1/ln(2)) (1/n - sin(1/n)) ; erreur initiale de coefficient dans la majoration corrigée.
// study-validation: 2026-10-28 — TD01 ex03 question 10 vérifiée sur copie manuscrite : 0 < sin(1/n) < 1/n, puissance n, majoration par 1/n² pour n >= 2, convergence par comparaison avec Riemann alpha=2.
// study-validation: 2026-10-28 — TD01 ex03 question 9 vérifiée sur copie manuscrite : comparaison 1/(n cos²(n)) >= 1/n, divergence de la série harmonique et théorème de comparaison des séries positives.
// study-validation: 2026-10-28 — TD01 ex03 question 8 vérifiée sur copie manuscrite : factorisation, DL, reste o(1/n) et équivalent -6/(5n^(2/5)), divergence par Riemann.
// study-validation: 2026-10-28 — TD01 ex03 question 7 vérifiée sur copie manuscrite : DL jusqu'à 1/n², équivalent 7/(24n²), positivité éventuelle et convergence par Riemann.
// study-validation: 2026-10-28 — TD01 ex03 question 6 vérifiée sur copie manuscrite : DL de sin en 0, u_n = pi + o(1), divergence grossière de la série.
// study-validation: 2026-10-28 — TD01 ex03 question 5 vérifiée sur copie manuscrite : DL, terme dominant, comparaison à Riemann alpha=9/8 et positivité à partir d'un certain rang.
// study-validation: 2026-10-28 — TD01 ex03 question 4 vérifiée sur copie manuscrite : comparaison à la série géométrique de raison e^(-1/4) et justification de sa convergence.
// study-validation: 2026-10-28 — TD01 ex03 question 3 vérifiée sur copie manuscrite : équivalence à 1/n², série de Riemann alpha=2 et positivité explicite.
// study-validation: 2026-10-28 — TD01 ex03 question 2 vérifiée sur copie manuscrite : équivalence avec la série harmonique et positivité explicite.
// source-note: questions 8 to 12 were rechecked against the newly supplied handwritten correction and the official TD01 statement.
// source-note: question 13 apparaît sur la fiche officielle, n'a pas été traitée en classe, puis a été résolue en travail personnel (méthode du conjugué).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Rappel — comparaison des séries positives

Pour comparer deux séries à termes positifs : si $0<=u_n<=v_n$ à partir d'un certain rang et si $sum v_n$ converge, alors $sum u_n$ converge. Si $u_n>=v_n>=0$ et $sum v_n$ diverge, alors $sum u_n$ diverge.

Si $u_n ~ v_n$ et si ces termes sont positifs à partir d'un certain rang, les deux séries ont la même nature. Enfin, lorsque $u_n=o(v_n)$ avec $u_n>=0$ et $v_n>0$, la limite $u_n/v_n -> 0$ permet d'obtenir $0<=u_n<=v_n$ à partir d'un certain rang.

== 1.

On considère $u_n=n^4/e^n$. On choisit, comme sur la copie, $v_n=1/(sqrt(e))^n=e^(-n/2)$. On étudie le quotient :

$
u_n/v_n &= (n^4/e^n)/(e^(-n/2)) \
        &= n^4/e^(n/2) -> 0 quad (n -> +infinity).
$

Par croissance comparée, $u_n=o(v_n)$. Comme $u_n>=0$ et $v_n>0$, il existe un rang à partir duquel $0<=u_n<=v_n$.

Or $sum v_n$ est une série géométrique de raison $q=1/sqrt(e)=e^(-1/2)$. Puisque $0<q<1$, elle converge. Par le théorème de comparaison des séries à termes positifs, *$sum u_n$ converge.*

== 2.

On considère $u_n=n/(n^2+1)$ et on pose $v_n=1/n$. On divise numérateur et dénominateur par $n^2$, ou on calcule directement le quotient :

$
u_n/v_n &= (n/(n^2+1))/(1/n) \
        &= n^2/(n^2+1)=1/(1+1/n^2) -> 1.
$

Puisque $1/n^2 -> 0$, on obtient $u_n ~ 1/n$. Les deux suites sont strictement positives pour $n>=1$.

Or $sum 1/n$ est la série harmonique, divergente. Par équivalence des séries à termes positifs, *$sum u_n$ diverge.*

== 3.

On considère $u_n=(n-1)/(n^3+2)$. Pour comparer à la série de Riemann d'exposant $2$, on pose $v_n=1/n^2$ :

$
u_n/v_n &= (n^2(n-1))/(n^3+2) \
        &= (1-1/n)/(1+2/n^3) -> 1.
$

En effet, $1/n -> 0$ et $2/n^3 -> 0$. Ainsi $u_n ~ 1/n^2$. On a $u_n>=0$ pour $n>=1$ et $v_n>0$.

La série $sum 1/n^2$ converge par le critère de Riemann ($alpha=2>1$). Par équivalence des séries à termes positifs, *$sum u_n$ converge.*

== 4.

On considère $u_n=n^819/e^(n/2)$ et on choisit $v_n=e^(-n/4)=1/e^(n/4)$, comme dans la démonstration manuscrite. Alors :

$
u_n/v_n &= (n^819/e^(n/2))/(e^(-n/4)) \
        &= n^819/e^(n/4) -> 0.
$

La limite vaut $0$ par croissance comparée : l'exponentielle domine toute puissance de $n$. On a donc $u_n=o(v_n)$ et, puisque les termes sont positifs, $0<=u_n<=v_n$ à partir d'un certain rang.

La série $sum v_n$ est géométrique de raison $q=e^(-1/4)$. Comme $0<q<1$, elle converge. Par comparaison des séries positives, *$sum u_n$ converge.*

== 5.

On considère :

$
u_n=(sqrt(n+1) ln(n)-sqrt(n) ln(n+1))/n^(3/4).
$

On étudie d'abord le numérateur $N_n$. Puisque $ln(n+1)=ln(n)+ln(1+1/n)$ et $sqrt(n+1)=sqrt(n)sqrt(1+1/n)$, on factorise :

$
N_n &= sqrt(n+1)ln(n)-sqrt(n)ln(n+1) \
    &= sqrt(n)[(sqrt(1+1/n)-1)ln(n)-ln(1+1/n)].
$

Comme $1/n -> 0$, on applique les DL en $0$ :

$
sqrt(1+1/n)-1 &= 1/(2n)+o(1/n), \
ln(1+1/n) &= 1/n-1/(2n^2)+o(1/n^2).
$

En remplaçant dans $N_n$ :

$
N_n
&=sqrt(n)[ln(n)/(2n)-1/n+1/(2n^2)+o(ln(n)/n)].
$

Or $1/n=o(ln(n)/n)$ et $1/n^2=o(ln(n)/n)$ puisque $ln(n) -> +infinity$. Le terme dominant est donc $ln(n)/(2n)$ à l'intérieur des crochets, d'où :

$
N_n ~ ln(n)/(2sqrt(n)),
quad
u_n ~ ln(n)/(2n^(5/4)).
$

Pour conclure par comparaison, on choisit $v_n=1/n^(9/8)$. On calcule :

$
u_n/v_n ~ (ln(n)/(2n^(5/4)))/(1/n^(9/8))
        = ln(n)/(2n^(1/8)) -> 0.
$

Cette limite est nulle par croissance comparée. L'équivalent montre aussi que $u_n>0$ à partir d'un certain rang. Comme $sum v_n$ converge par Riemann ($9/8>1$), on a finalement *$sum u_n$ convergente par comparaison des séries positives.*

== 6.

On considère $u_n=n sin(pi/n)$. Comme $pi/n -> 0$ lorsque $n -> +infinity$, on peut utiliser le DL de $sin$ en $0$ : $sin(x)=x+o(x)$.

$
sin(pi/n) &= pi/n+o(1/n), \
u_n &= n(pi/n+o(1/n))=pi+o(1).
$

Donc $u_n -> pi != 0$. Or, si une série $sum u_n$ converge, son terme général doit nécessairement tendre vers $0$. Cette condition n'est pas satisfaite : *$sum u_n$ diverge grossièrement.* Il faut distinguer la convergence de la suite $(u_n)$, qui tend vers $pi$, de celle de la série.

== 7.

On considère $u_n=n ln(1+1/n)-cos(1/sqrt(n))$. Puisque $1/n -> 0$ et $1/sqrt(n) -> 0$, on applique les DL du logarithme et du cosinus en $0$. Il faut aller assez loin car les constantes et les termes en $1/n$ vont se compenser :

$
ln(1+x) &= x-x^2/2+x^3/3+o(x^3), \
cos(x) &= 1-x^2/2+x^4/24+o(x^4).
$

En remplaçant $x$ respectivement par $1/n$ et $1/sqrt(n)$ :

$
n ln(1+1/n) &= 1-1/(2n)+1/(3n^2)+o(1/n^2), \
cos(1/sqrt(n)) &= 1-1/(2n)+1/(24n^2)+o(1/n^2).
$

On soustrait les deux expressions ; les termes en $1$ et en $1/n$ s'annulent :

$
u_n &= (1/3-1/24)/n^2+o(1/n^2) \
    &= 7/(24n^2)+o(1/n^2).
$

Ainsi $u_n ~ 7/(24n^2)$. Comme $7/24>0$, $u_n$ est positif à partir d'un certain rang. La série $sum 1/n^2$ converge par Riemann ($alpha=2>1$), donc *$sum u_n$ converge par équivalence des séries positives.*

== 8.

On considère :

$
u_n=(n^3+2n+1)^(1/5)-(n+2)^(3/5).
$

On met $n^(3/5)$ en facteur dans les deux termes :

$
u_n
&=n^(3/5)(1+2/n^2+1/n^3)^(1/5)-n^(3/5)(1+2/n)^(3/5) \
&=n^(3/5)[(1+2/n^2+1/n^3)^(1/5)-(1+2/n)^(3/5)].
$

Comme $2/n^2+1/n^3 -> 0$ et $2/n -> 0$, on utilise les DL en $0$ de $(1+x)^beta$. On rappelle que $(1+x)^beta=1+beta x+beta(beta-1)x^2/2+o(x^2)$.

Pour le premier terme, avec $x=2/n^2+1/n^3$, les puissances en $x^2$ sont d'ordre $1/n^4$, donc négligeables devant $1/n^3$ :

$
(1+2/n^2+1/n^3)^(1/5)
&=1+(1/5)(2/n^2+1/n^3)+o(1/n^3) \
&=1+2/(5n^2)+1/(5n^3)+o(1/n^3).
$

Pour le second terme, avec $x=2/n$ :

$
(1+2/n)^(3/5)
&=1+(3/5)(2/n)+((3/5)(-2/5))/2 (2/n)^2+o(1/n^2) \
&=1+6/(5n)-12/(25n^2)+o(1/n^2).
$

Dans la différence, les constantes s'annulent. Les contributions d'ordre $1/n^2$ et les restes sont négligeables devant $1/n$, donc :

$
u_n &= n^(3/5)[-6/(5n)+o(1/n)] \
    &= -6/(5n^(2/5))+o(1/n^(2/5)).
$

Par conséquent $u_n ~ -6/(5n^(2/5))$. Le coefficient est négatif : $u_n<0$ à partir d'un certain rang. Comme $sum 1/n^(2/5)$ diverge par Riemann ($2/5<1$), *$sum u_n$ diverge* (vers $-infinity$) par équivalence de séries de signe constant.

== 9.

On considère $u_n=1/(n cos^2(n))$. Pour $n>=1$, on a $0<cos^2(n)<=1$. En multipliant par $n>0$ puis en passant aux inverses (les membres sont strictement positifs), le sens de l'inégalité s'inverse :

$
0<n cos^2(n)<=n
quad => quad
u_n=1/(n cos^2(n))>=1/n>0.
$

Or $sum 1/n$ est la série harmonique, qui diverge. Comme les termes de $sum u_n$ sont positifs et majorent ceux de la série harmonique, *$sum u_n$ diverge par le théorème de comparaison des séries positives.*

== 10.

On considère $u_n=(sin(1/n))^n$. Pour tout $n>=1$, on a $0<1/n<=1<pi$, donc $1/n in ]0,pi[$ et $sin(1/n)>0$. De plus, l'inégalité classique $sin(x)<x$ pour $x>0$ donne :

$
0<sin(1/n)<1/n<=1.
$

En élevant les trois membres positifs à la puissance entière $n$, on conserve l'ordre :

$
0<u_n=(sin(1/n))^n<(1/n)^n<=1.
$

Cette dernière majoration par $1$ ne suffit pas à prouver la convergence d'une série. Pour $n>=2$, on utilise $n^n>=n^2$, d'où :

$
0<u_n<(1/n)^n<=1/n^2 quad (n>=2).
$

Or $sum_(n>=2) 1/n^2$ converge par le critère de Riemann ($alpha=2>1$). Le terme initial $n=1$ n'affecte pas la nature d'une série. *Par comparaison des séries à termes positifs, $sum u_n$ converge.*

== 11.

On étudie, pour $alpha in RR$ :

$
u_n=(1/n-sin(1/n))/ln(1+1/n^alpha).
$

Comme $1/n -> 0$, le DL $sin(x)=x-x^3/6+o(x^3)$ au voisinage de $0$ donne :

$
sin(1/n) &= 1/n-1/(6n^3)+o(1/n^3), \
1/n-sin(1/n) &= 1/(6n^3)+o(1/n^3).
$

Le numérateur est strictement positif pour $n>=1$ car $sin(x)<x$ pour $x>0$. Le dénominateur est lui aussi positif. On sépare les cas, car $1/n^alpha -> 0$ seulement lorsque $alpha>0$.

=== Cas $alpha>0$

Dans ce cas, $1/n^alpha -> 0$. On applique le DL $ln(1+x)=x+o(x)$ au voisinage de $0$ :

$
ln(1+1/n^alpha)
&=1/n^alpha+o(1/n^alpha) \
&~1/n^alpha.
$

Par quotient des équivalents positifs :

$
u_n ~ (1/(6n^3))/(1/n^alpha)
    = 1/(6n^(3-alpha)).
$

Il s'agit d'une série de Riemann multipliée par la constante positive $1/6$, avec exposant $p=3-alpha$. Pour qu'elle converge, il faut $p>1$, soit :

$
3-alpha>1 quad "équivaut à" quad alpha<2.
$

Ainsi, dans le cas $alpha>0$, *$sum u_n$ converge pour $0<alpha<2$ et diverge pour $alpha>=2$* (y compris pour $alpha=2$, où l'on retrouve la série harmonique).

=== Cas $alpha<=0$

Pour $n>=1$, on a $n^alpha<=1$, donc $1/n^alpha>=1$. Par croissance de $ln$ :

$
1+1/n^alpha>=2
quad => quad
ln(1+1/n^alpha)>=ln(2)>0.
$

En prenant les inverses et en multipliant par le numérateur positif :

$
0<u_n
<= (1/ln(2))(1/n-sin(1/n)).
$

Or on a déjà montré $1/n-sin(1/n) ~ 1/(6n^3)$. La série de ce numérateur converge par équivalence avec la série de Riemann d'exposant $3>1$ ; la multiplication par $1/ln(2)>0$ ne change pas sa nature. Par comparaison des séries positives, *$sum u_n$ converge pour $alpha<=0$.*

En réunissant les deux cas : *$sum u_n$ converge pour $alpha<2$ et diverge pour $alpha>=2$.*

== 12.

On considère $u_n=e-(1+1/n)^n$. On commence par transformer la puissance, comme sur la copie :

$
(1+1/n)^n=exp(n ln(1+1/n)).
$

Puisque $1/n -> 0$, on peut appliquer le DL de $ln(1+x)$ en $0$ à l'ordre $2$ :

$
ln(1+1/n)
=1/n-1/(2n^2)+o(1/n^2).
$

Après multiplication par $n$ :

$
n ln(1+1/n)
=n(1/n-1/(2n^2)+o(1/n^2))
=1-1/(2n)+o(1/n).
$

On utilise $e^(a+b)=e^a e^b$ pour faire apparaître le facteur $e$ :

$
u_n &= e-e^(1-1/(2n)+o(1/n)) \
    &= e-e exp(-1/(2n)+o(1/n)) \
    &= e[1-exp(-1/(2n)+o(1/n))].
$

On pose $x_n=-1/(2n)+o(1/n)$. Comme $x_n -> 0$, on applique le DL de l'exponentielle en $0$ : $exp(x)=1+x+o(x)$. Comme $x_n ~ -1/(2n)$, le reste $o(x_n)$ est aussi un $o(1/n)$. Ainsi :

$
exp(-1/(2n)+o(1/n))
=1-1/(2n)+o(1/n).
$

On remplace dans l'expression de $u_n$ et on simplifie :

$
u_n &= e[1-(1-1/(2n)+o(1/n))] \
    &= e[1/(2n)+o(1/n)] \
    &= e/(2n)+o(1/n).
$

Donc $u_n ~ e/(2n)$. La série $sum e/(2n)$ est la série harmonique multipliée par une constante strictement positive $e/2$ : elle diverge. L'équivalent montre que $u_n>0$ à partir d'un certain rang. Par équivalence des séries positives, *$sum u_n$ diverge*, bien que la suite $(u_n)$ tende vers $0$.

== 13.

On considère, pour $alpha in RR$ et $n$ assez grand pour que les racines soient définies :

$
u_n=sqrt(n^4+2n+1)-sqrt(n^4+alpha n).
$

*Méthode du conjugué* (sans développement limité supplémentaire).

On multiplie par la somme des deux racines :

$
u_n
&= ((n^4+2n+1)-(n^4+alpha n)) /
   (sqrt(n^4+2n+1)+sqrt(n^4+alpha n)) \
&= ((2-alpha)n+1) /
   (sqrt(n^4+2n+1)+sqrt(n^4+alpha n)).
$

En factorisant $n^2$ au dénominateur :

$
sqrt(n^4+2n+1)+sqrt(n^4+alpha n)
= n^2[sqrt(1+2/n^3+1/n^4)+sqrt(1+alpha/n^3)].
$

Comme $2/n^3+1/n^4 -> 0$ et $alpha/n^3 -> 0$, les deux racines entre crochets tendent vers $1$. Ainsi :

$
sqrt(n^4+2n+1)+sqrt(n^4+alpha n) ~ 2n^2.
$

=== Si $alpha != 2$

Le numérateur vérifie $((2-alpha)n+1) ~ (2-alpha)n$, donc :

$
u_n ~ (2-alpha)/(2n).
$

Si $alpha<2$, le coefficient est positif et la série diverge par équivalence avec la série harmonique. Si $alpha>2$, $u_n$ est négatif à partir d'un certain rang et $-u_n ~ (alpha-2)/(2n)$ : la série de terme général $-u_n$ diverge par comparaison avec la série harmonique. Ainsi, *$sum u_n$ diverge pour $alpha != 2$*.

=== Si $alpha = 2$

Le numérateur est exactement $1$, donc :

$
u_n = 1/(sqrt(n^4+2n+1)+sqrt(n^4+2n))
~ 1/(2n^2).
$

La série de Riemann $sum 1/n^2$ converge ($p=2>1$). Par équivalence des séries positives, *$sum u_n$ converge pour $alpha=2$*.

Finalement :

$
sum u_n " converge si " alpha=2,
$

et diverge pour $alpha != 2$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Non traité en classe.* Cette question figure sur la fiche officielle et a été
  résolue en travail personnel, avec distinction des cas $alpha=2$ et $alpha != 2$.
]
