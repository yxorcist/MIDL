// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 6

Soit

$
f:[1,+oo[ -> [0,+oo[
$

une fonction continue et décroissante. Pour $n$ et $N$ entiers naturels non
nuls, on pose

$
u_n=f(n)
quad "et" quad
U_N=sum_(n=1)^N u_n.
$

== Question 1

Soit $f$ une fonction décroissante.

Pour $n >= 2$ et $t in [n-1, n]$, on a $t <= n$. Comme $f$ est décroissante,

$
f(n) <= f(t).
$

Par croissance de l'intégrale,

$
integral_(n-1)^n f(n) dif t <= integral_(n-1)^n f(t) dif t.
$

Comme l'intervalle est de longueur $1$,

$
f(n) <= integral_(n-1)^n f(t) dif t.
$

On note cette inégalité $(*)$.

De même, pour $n >= 1$ et $t in [n, n+1]$, on a $n <= t$, donc

$
f(t) <= f(n).
$

Ainsi,

$
integral_n^(n+1) f(t) dif t <= f(n).
$

On note cette inégalité $(**)$.

== Question 2

On utilise la relation de Chasles.

Pour $N >= 2$, en sommant $(*)$ pour $n = 2, dots, N$,

$
sum_(n=2)^N f(n)
<=
sum_(n=2)^N integral_(n-1)^n f(t) dif t
=
integral_1^N f(t) dif t.
$

Si

$
U_N = sum_(n=1)^N f(n),
$

alors

$
U_N - f(1) <= integral_1^N f(t) dif t,
$

donc

$
U_N <= f(1) + integral_1^N f(t) dif t.
$

En sommant $(**)$ pour $n = 1, dots, N$,

$
sum_(n=1)^N integral_n^(n+1) f(t) dif t
<=
sum_(n=1)^N f(n),
$

d'où

$
integral_1^(N+1) f(t) dif t <= U_N.
$

Finalement,

$
integral_1^(N+1) f(t) dif t
<= U_N
<= f(1) + integral_1^N f(t) dif t.
$

== Question 3.a

On pose

$
H_N = sum_(n=1)^N 1/n.
$

Sur $x >= 1$, la fonction

$
f(x) = 1/x
$

est continue, positive et décroissante. On peut donc appliquer le résultat précédent :

$
integral_1^(N+1) 1/t dif t
<= H_N
<= 1 + integral_1^N 1/t dif t.
$

Ainsi,

$
ln(N+1) <= H_N <= 1 + ln(N).
$

Pour $N >= 1$,

$
ln(N+1) - ln(N)
<= H_N - ln(N)
<= 1.
$

Or

$
ln(N+1) - ln(N)
= ln(1 + 1/N) >= 0.
$

Donc

$
0 <= H_N - ln(N) <= 1.
$

La suite $H_N - ln(N)$ est bornée, donc

$
(H_N - ln(N))/ln(N) -> 0.
$

Par conséquent,

$
H_N / ln(N) -> 1.
$

== Question 3.b

Soit $x in [0,1[$.

Pour tout $t in [0,x]$,

$
1 >= 1/(1+t).
$

Par croissance de l'intégrale,

$
integral_0^x 1 dif t
>=
integral_0^x 1/(1+t) dif t.
$

Donc

$
x >= ln(1+x).
$

De même, pour tout $t in [0,x]$,

$
1 <= 1/(1-t).
$

Ainsi,

$
integral_0^x 1 dif t
<=
integral_0^x 1/(1-t) dif t,
$

d'où

$
x <= -ln(1-x).
$

On dispose donc des deux inégalités

$
ln(1+x) <= x <= -ln(1-x),
quad
x in [0,1[.
$

== Rappel — suites adjacentes

Deux suites $(a_n)_(n in NN)$ et $(b_n)_(n in NN)$ sont adjacentes si :

- $(a_n)$ est croissante ;
- $(b_n)$ est décroissante ;
- $a_n-b_n -> 0$.

Si deux suites sont adjacentes, elles convergent et ont la même limite.

== Question 3.c

Pour $N>=1$, posons

$
v_N=H_N-ln(N).
$

On calcule

$
v_(N+1)-v_N
=
H_(N+1)-ln(N+1)-H_N+ln(N).
$

Comme

$
H_(N+1)-H_N=1/(N+1),
$

on obtient

$
v_(N+1)-v_N
=
1/(N+1)+ln(N/(N+1)).
$

Or

$
N/(N+1)=1-1/(N+1),
$

donc

$
v_(N+1)-v_N
=
1/(N+1)
+
ln(1-1/(N+1)).
$

D'après la question 3.b, avec

$
x=1/(N+1) in [0,1[,
$

on a

$
x+ln(1-x) <= 0.
$

Ainsi,

$
v_(N+1)-v_N <= 0.
$

La suite $(v_N)$ est donc décroissante.

Posons maintenant

$
w_N=v_N-1/N
=
H_N-ln(N)-1/N.
$

Alors

$
w_(N+1)-w_N
=
v_(N+1)-v_N
-1/(N+1)
+1/N.
$

En utilisant l'expression précédente de $v_(N+1)-v_N$,

$
w_(N+1)-w_N
=
1/N
+
ln(1-1/(N+1)).
$

Comme

$
1-1/(N+1)=N/(N+1)=1/(1+1/N),
$

on obtient

$
w_(N+1)-w_N
=
1/N-ln(1+1/N).
$

D'après la question 3.b, avec

$
x=1/N,
$

on a

$
ln(1+x) <= x.
$

Donc

$
w_(N+1)-w_N >= 0.
$

La suite $(w_N)$ est donc croissante.

Enfin,

$
v_N-w_N=1/N -> 0.
$

Les suites $(w_N)$ et $(v_N)$ sont donc adjacentes.

== Question 3.d — Constante d'Euler

Les suites $(w_N)$ et $(v_N)$ étant adjacentes, elles convergent vers une même limite, notée $gamma$.

Ainsi,

$
v_N=gamma+o(1).
$

Comme

$
v_N=H_N-ln(N),
$

on obtient

$
H_N-ln(N)=gamma+o(1),
$

puis

$
H_N=ln(N)+gamma+o(1).
$

Les notes vérifient également que $gamma>0$.

En effet,

$
w_2
=
H_2-ln(2)-1/2
=
1-ln(2).
$

Comme $2<e$,

$
ln(2)<1,
$

donc

$
w_2>0.
$

La suite $(w_N)$ étant croissante et convergeant vers $gamma$,

$
gamma>0.
$
