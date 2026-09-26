// source-confidence: medium
// source-uncertainty: the handwritten correction of question 8 stops before the final comparison; the completion is explicitly marked as supplemental.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Rappel — comparaison des séries positives

Pour deux suites positives $(u_n)$ et $(v_n)$, si à partir d'un certain rang

$
0 <= u_n <= v_n,
$

alors la convergence de

$
sum v_n
$

entraîne celle de

$
sum u_n.
$

En particulier, si

$
u_n=o(v_n)
$

et si $sum v_n$ converge, alors $sum u_n$ converge.

== 1.

On considère

$
u_n=n^4 exp(-n).
$

On compare avec

$
v_n=exp(-n/2).
$

On a

$
u_n/v_n
=
n^4 exp(-n/2)
->0
$

par croissance comparée. Ainsi,

$
u_n=o(exp(-n/2)).
$

La série de terme général $exp(-n/2)$ est géométrique de raison

$
exp(-1/2)<1,
$

donc elle converge. Par comparaison des séries positives,

$
sum n^4 exp(-n)
$

converge.

== 2.

On considère

$
u_n=n/(n^2+1).
$

On a

$
u_n
=
1/n dot 1/(1+1/n^2)
~

1/n.
$

La série harmonique

$
sum 1/n
$

diverge. Comme les termes sont positifs et équivalents,

$
sum n/(n^2+1)
$

diverge.

== 3.

On considère

$
u_n=(n-1)/(n^3+2).
$

On a

$
u_n ~ 1/n^2.
$

Comme

$
sum 1/n^2
$

converge, la série de terme général $u_n$ converge par comparaison des séries
positives.

== 4.

On considère

$
u_n=n^819 exp(-n/2).
$

Pour $n>=1$,

$
n^2 u_n
=
n^821 exp(-n/2).
$

Par croissance comparée,

$
n^821 exp(-n/2)->0.
$

Donc

$
u_n=o(1/n^2).
$

Comme $u_n>=0$ et que

$
sum 1/n^2
$

converge, le théorème de comparaison des séries positives donne

$
sum u_n
$

convergente.

== 5.

On considère

$
u_n
=
(
sqrt(n+1) ln(n)
-
sqrt(n) ln(n+1)
)
/n^(3/4).
$

Les notes étudient d'abord le numérateur

$
N_n
=
sqrt(n+1) ln(n)
-
sqrt(n) ln(n+1).
$

On utilise

$
sqrt(n+1)
=
sqrt(n) sqrt(1+1/n)
=
sqrt(n)
(
1+1/(2n)+o(1/n)
)
$

et

$
ln(n+1)
=
ln(n)+ln(1+1/n)
=
ln(n)+1/n+o(1/n).
$

Ainsi,

$
N_n
=
ln(n)/(2sqrt(n))
-
1/sqrt(n)
+
o(ln(n)/sqrt(n)).
$

Après division par $n^(3/4)$,

$
u_n
=
ln(n)/(2n^(5/4))
+
o(ln(n)/n^(5/4)).
$

Le terme général est donc dominé, à partir d'un certain rang, par une série de
Riemann convergente. On conclut que

$
sum u_n
$

converge.

== 6.

On considère

$
u_n=n sin(pi/n).
$

Comme

$
sin(pi/n) ~ pi/n,
$

on a

$
u_n ~ pi.
$

Donc

$
u_n -> pi != 0.
$

La condition nécessaire de convergence n'est pas satisfaite. Par conséquent,

$
sum u_n
$

diverge grossièrement.

== 7.

Pour $n>=1$, on considère

$
u_n
=
n ln(1+1/n)
-
cos(1/sqrt(n)).
$

On utilise

$
ln(1+x)
=
x-x^2/2+x^3/3+o(x^3)
$

et

$
cos(x)
=
1-x^2/2+o(x^3).
$

Ainsi,

$
n ln(1+1/n)
=
1-1/(2n)+1/(3n^2)+o(1/n^2)
$

et

$
cos(1/sqrt(n))
=
1-1/(2n)+o(1/n^(3/2)).
$

Les termes principaux se compensent. Les notes concluent que le terme général
est négligeable devant une série de Riemann convergente, donc

$
sum u_n
$

converge.

== 8.

Les notes considèrent

$
u_n
=
(n^3+2n+1)^(1/5)
-
(n+2)^(3/5).
$

On factorise $n^(3/5)$ :

$
u_n
=
n^(3/5)
[
(1+2/n^2+1/n^3)^(1/5)
-
(1+2/n)^(3/5)
].
$

Pour le premier facteur, le développement limité écrit dans les notes donne

$
(1+2/n^2+1/n^3)^(1/5)
=
1
+
1/5(2/n^2+1/n^3)
+
o(1/n^3).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Complément pour conclure.* La photographie s'arrête ici pour cette
  question. En poursuivant exactement le même développement limité,

  $
  (1+2/n)^(3/5)
  =
  1+6/(5n)-12/(25n^2)+o(1/n^2).
  $

  Ainsi,

  $
  u_n ~ -6/(5 n^(2/5)).
  $

  La série a donc le même comportement qu'une série de Riemann d'exposant
  $2/5<1$ et diverge.
]

== 9.

On considère

$
u_n = 1 / (n cos^2(n)).
$

Comme

$
cos^2(n) <= 1,
$

on a

$
n cos^2(n) <= n.
$

Les deux membres étant strictement positifs, le passage à l'inverse renverse
l'inégalité :

$
u_n = 1/(n cos^2(n)) >= 1/n.
$

Or la série harmonique

$
sum_(n>=1) 1/n
$

diverge. Par comparaison des séries positives,

$
sum_(n>=1) u_n
$

diverge.

== 10.

On considère

$
u_n=(sin(1/n))^n.
$

Pour $n>=1$,

$
0<sin(1/n)<1/n.
$

Donc, pour $n>=2$,

$
0<u_n<(1/n)^n<=1/n^2.
$

Comme

$
sum 1/n^2
$

converge, le théorème de comparaison des séries positives donne

$
sum u_n
$

convergente.

== 11.

On considère, pour $alpha in RR$,

$
u_n =
(1/n - sin(1/n))
/
ln(1 + 1/n^alpha).
$

Au voisinage de $0$,

$
sin(x)
=
x - x^3/6 + o(x^3).
$

Donc

$
1/n - sin(1/n)
=
1/(6n^3) + o(1/n^3).
$

=== Cas $alpha > 0$

On a

$
ln(1+x)=x+o(x)
$

au voisinage de $0$. Avec $x=1/n^alpha$,

$
ln(1+1/n^alpha)
~
1/n^alpha.
$

Par conséquent,

$
u_n
~
1/(6 n^(3-alpha)).
$

La série de Riemann associée converge si

$
3-alpha > 1,
$

c'est-à-dire si

$
alpha < 2.
$

Elle diverge si

$
alpha >= 2.
$

=== Cas $alpha <= 0$

Pour $n >= 1$,

$
1/n^alpha >= 1,
$

donc

$
ln(1+1/n^alpha) >= ln(2).
$

Ainsi,

$
0 <= u_n
<=
(1/ln(2)) (1/n - sin(1/n)).
$

Or

$
1/n - sin(1/n)
~
1/(6n^3),
$

donc la série de terme général $u_n$ converge.

Finalement,

$
sum u_n " converge si " alpha < 2,
$

et diverge si

$
alpha >= 2.
$

== 12.

On considère

$
u_n = e - (1 + 1/n)^n.
$

On écrit

$
(1+1/n)^n
=
exp(n ln(1+1/n)).
$

Or

$
ln(1+x)
=
x - x^2/2 + o(x^2),
$

donc

$
n ln(1+1/n)
=
1 - 1/(2n) + o(1/n).
$

Ainsi,

$
(1+1/n)^n
=
e exp(-1/(2n)+o(1/n)).
$

Puis, avec $exp(x)=1+x+o(x)$,

$
(1+1/n)^n
=
e (1 - 1/(2n) + o(1/n)).
$

Par conséquent,

$
u_n
=
e/(2n)+o(1/n),
$

donc

$
u_n ~ e/(2n).
$

Par comparaison avec la série harmonique,

$
sum u_n
$

diverge.
