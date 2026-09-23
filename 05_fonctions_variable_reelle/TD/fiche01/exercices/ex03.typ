#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Rappel : condition nécessaire de convergence

Si la série

$
sum u_n
$

converge, alors nécessairement

$
u_n -> 0.
$

La réciproque est fausse.

== 1.

On considère

$
u_n=1/(n^2+1).
$

Pour $n>=1$,

$
0 < u_n <= 1/n^2.
$

Comme la série de Riemann

$
sum 1/n^2
$

converge, le théorème de comparaison des séries positives donne la convergence de

$
sum 1/(n^2+1).
$

== 2.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *À compléter.* La question 2 n'apparaît pas de manière suffisamment lisible
  dans les photographies fournies.
]

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

Les notes utilisent le critère de comparaison avec une série de Riemann en
montrant que

$
n^2 u_n -> 0.
$

Ainsi,

$
u_n=o(1/n^2).
$

Comme

$
sum 1/n^2
$

converge, la série de terme général $u_n$ converge.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  L'expression exacte de $u_n$ pour cette question n'est pas suffisamment
  lisible sur la photographie. Seule la méthode clairement écrite a été
  conservée.
]

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

On utilise les développements

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

Ainsi le numérateur vérifie

$
sqrt(n+1)ln(n)-sqrt(n)ln(n+1)
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

En particulier, les notes concluent que $u_n$ est dominé par une série de
Riemann convergente, donc

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

Les termes principaux se compensent, et les notes obtiennent un terme général
négligeable devant une série de Riemann convergente.

On conclut donc que

$
sum u_n
$

converge.

== 8.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *À compléter.* La correction de la question 8 n'est pas présente dans les
  photographies fournies.
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

Les deux membres étant strictement positifs, le passage à l'inverse renverse l'inégalité :

$
u_n = 1/(n cos^2(n)) >= 1/n.
$

Or la série harmonique

$
sum_(n>=1) 1/n
$

diverge. Par comparaison de séries positives,

$
sum_(n>=1) u_n
$

diverge.

== 10.

On considère

$
u_n = (sin(1/n))^n.
$

Au voisinage de $0$,

$
sin(x) = x + o(x).
$

Ainsi,

$
sin(1/n) = 1/n + o(1/n),
$

donc

$
u_n ~ (1/n)^n = 1/n^n.
$

Pour $n >= 2$,

$
0 <= 1/n^n <= 1/n^2.
$

Comme

$
sum_(n>=1) 1/n^2
$

converge, la série de terme général $u_n$ converge par comparaison.

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

