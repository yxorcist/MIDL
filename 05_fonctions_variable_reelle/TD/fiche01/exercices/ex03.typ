// source-confidence: high
// study-validation: 2026-10-28 — TD01 ex03 question 8 vérifiée sur copie manuscrite : factorisation, DL, reste o(1/n) et équivalent -6/(5n^(2/5)), divergence par Riemann.
// study-validation: 2026-10-28 — TD01 ex03 question 7 vérifiée sur copie manuscrite : DL jusqu'à 1/n², équivalent 7/(24n²), positivité éventuelle et convergence par Riemann.
// study-validation: 2026-10-28 — TD01 ex03 question 6 vérifiée sur copie manuscrite : DL de sin en 0, u_n = pi + o(1), divergence grossière de la série.
// study-validation: 2026-10-28 — TD01 ex03 question 5 vérifiée sur copie manuscrite : DL, terme dominant, comparaison à Riemann alpha=9/8 et positivité à partir d'un certain rang.
// study-validation: 2026-10-28 — TD01 ex03 question 4 vérifiée sur copie manuscrite : comparaison à la série géométrique de raison e^(-1/4) et justification de sa convergence.
// study-validation: 2026-10-28 — TD01 ex03 question 3 vérifiée sur copie manuscrite : équivalence à 1/n², série de Riemann alpha=2 et positivité explicite.
// study-validation: 2026-10-28 — TD01 ex03 question 2 vérifiée sur copie manuscrite : équivalence avec la série harmonique et positivité explicite.
// source-note: questions 8 to 12 were rechecked against the newly supplied handwritten correction and the official TD01 statement.
// source-note: question 13 appears on the official TD sheet but was not treated in class, so no correction is expected in these notes.

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

On pose $u_n = n^4 / e^n$ et $v_n = 1 / (sqrt(e))^n$.

Par croissance comparée,

$
u_n / v_n = n^4 / e^(n/2) -> 0.
$

Comme $u_n >= 0$ et $v_n > 0$, on en déduit qu'à partir d'un certain rang,

$
0 <= u_n <= v_n.
$

Or, $sum v_n$ est une série géométrique convergente de raison
$q = 1 / sqrt(e) < 1$.

Par le théorème de comparaison des séries à termes positifs,

$
sum u_n " converge."
$

== 2.

On pose $u_n = n/(n^2+1) = 1/(n+1/n)$ et $v_n=1/n$.

On calcule :

$
u_n/v_n
= n/(n+1/n)
= 1/(1+1/n^2)
-> 1 quad (n -> +infinity).
$

Donc $u_n ~ v_n$.

Or $sum v_n = sum 1/n$ diverge (série harmonique).

Comme $u_n > 0$ et $v_n > 0$ pour $n >= 1$, le théorème d'équivalence
des séries à termes positifs donne :

$
sum u_n " diverge."
$

== 3.

On pose $u_n=(n-1)/(n^3+2)$ et $v_n=1/n^2$.

On calcule :

$
u_n/v_n
= (n^2(n-1))/(n^3+2)
= (1-1/n)/(1+2/n^3)
-> 1 quad (n -> +infinity).
$

Donc $u_n ~ v_n$.

Or $sum v_n = sum 1/n^2$ converge (série de Riemann,
$alpha=2>1$).

Comme $u_n >= 0$ et $v_n > 0$ pour $n>=1$, le théorème
d'équivalence des séries à termes positifs donne :

$
sum u_n " converge."
$

== 4.

On pose $u_n = n^819 / e^(n/2)$ et $v_n = 1 / e^(n/4)$.

Par croissance comparée,

$
u_n / v_n
= n^819 / e^(n/4)
-> 0 quad (n -> +infinity).
$

Donc $u_n = o(v_n)$. Comme $u_n >= 0$ et $v_n > 0$,
on a $0 <= u_n <= v_n$ à partir d'un certain rang.

Or $sum v_n$ est une série géométrique de raison
$q = 1 / e^(1/4)$, avec $0 < q < 1$ : elle converge.

Par le théorème de comparaison des séries à termes positifs,

$
sum u_n " converge."
$

== 5.

On pose

$
u_n = (sqrt(n+1) ln(n) - sqrt(n) ln(n+1)) / n^(3/4)
$

et on étudie d'abord le numérateur $N_n$.

Comme $ln(n+1)=ln(n)+ln(1+1/n)$, on factorise :

$
N_n = sqrt(n) [
  (sqrt(1+1/n)-1) ln(n) - ln(1+1/n)
].
$

Par développement limité au voisinage de $0$,

$
sqrt(1+1/n) &= 1+1/(2n)+o(1/n), \
ln(1+1/n) &= 1/n-1/(2n^2)+o(1/n^2).
$

Donc

$
N_n
= sqrt(n) [
  ln(n)/(2n)-1/n+1/(2n^2)+o(ln(n)/n)
].
$

Comme $1/n = o(ln(n)/n)$, le terme dominant donne

$
N_n ~ ln(n)/(2sqrt(n)), quad
u_n ~ ln(n)/(2n^(5/4)).
$

On pose $v_n=1/n^(9/8)$. Par croissance comparée,

$
u_n/v_n ~ ln(n)/(2n^(1/8)) -> 0.
$

Ainsi $u_n=o(v_n)$. Or $sum v_n$ converge : c'est une série
de Riemann de paramètre $alpha=9/8>1$.

Comme $u_n >= 0$ à partir d'un certain rang et $v_n>0$,
le théorème de comparaison des séries à termes positifs donne :

$
sum u_n " converge."
$

== 6.

On pose $u_n = n sin(pi/n)$.

Comme $pi/n -> 0$, par DL en $0$,

$
sin(pi/n) = pi/n + o(1/n).
$

Donc

$
u_n = n (pi/n + o(1/n)) = pi + o(1).
$

Ainsi, $u_n -> pi != 0$.

La condition nécessaire de convergence d'une série n'est donc
pas satisfaite :

$
sum u_n " diverge grossièrement."
$

== 7.

Pour $n>=1$, on considère

$
u_n
=
n ln(1+1/n)
-
cos(1/sqrt(n)).
$

Par développements limités en $0$,

$
ln(1+x)
=
x-x^2/2+x^3/3+o(x^3)
$

et

$
cos(x)
=
1-x^2/2+x^4/24+o(x^4).
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
1-1/(2n)+1/(24n^2)+o(1/n^2).
$

En soustrayant, les termes constants et les termes en $1/n$ s'annulent :

$
u_n
=
(1/3-1/24)/n^2+o(1/n^2)
=
7/(24n^2)+o(1/n^2).
$

D'où

$
u_n ~ 7/(24n^2).
$

Comme $7/24>0$, les termes $u_n$ sont positifs à partir d'un certain
rang. La série de Riemann $sum 1/n^2$ converge ($alpha=2>1$).

Par équivalence des séries à termes positifs à partir d'un certain rang,

$
sum u_n " converge."
$

== 8.

On considère

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

On utilise le développement limité

$
(1+x)^alpha
=
1+alpha x
+
(alpha(alpha-1))/2 x^2
+
o(x^2).
$

Pour le premier terme,

$
(1+2/n^2+1/n^3)^(1/5)
=
1
+
1/5(2/n^2+1/n^3)
+
o(1/n^2).
$

Donc

$
(1+2/n^2+1/n^3)^(1/5)
=
1+2/(5n^2)+o(1/n^2).
$

Pour le second terme,

$
(1+2/n)^(3/5)
=
1
+
6/(5n)
-
12/(25n^2)
+
o(1/n^2).
$

Comme $1/n^2=o(1/n)$, les contributions d'ordre $1/n^2$ et les
restes $o(1/n^2)$ peuvent être absorbés dans $o(1/n)$.

Ainsi,

$
u_n
=
n^(3/5)
[
-6/(5n)
+
o(1/n)
].
$

Après multiplication par $n^(3/5)$,

$
u_n
=
-6/(5n^(2/5))
+
o(1/n^(2/5)).
$

Par conséquent,

$
u_n
~
-6/(5n^(2/5)).
$

La série de terme général

$
6/(5n^(2/5))
$

diverge par le critère de Riemann.

Comme $u_n$ est de signe constant à partir d'un certain rang et équivalent à

$
-6/(5n^(2/5)),
$

la série

$
sum u_n
$

diverge.

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


== 13.

Le sujet officiel donne, pour $alpha in RR$,

$
u_n
=
sqrt(n^4+2n+1)
-
sqrt(n^4+alpha n).
$

Il faut déterminer la nature de la série de terme général $u_n$ selon les
valeurs de $alpha$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Non traité en classe.* La question 13 figure sur la fiche TD officielle,
  mais elle n'a pas été faite en séance.
]
