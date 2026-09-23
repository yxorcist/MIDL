#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3 — correction partielle

Les photographies fournies contiennent les corrections des questions 9 à 12.

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
