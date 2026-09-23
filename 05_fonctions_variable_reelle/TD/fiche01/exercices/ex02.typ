// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

On considère, pour $n >= 2$,

$
u_n
=
1/sqrt(n-1)
-
2/sqrt(n)
+
1/sqrt(n+1).
$

Posons

$
v_n
=
1/sqrt(n-1)-1/sqrt(n).
$

Alors

$
u_n
=
v_n-v_(n+1).
$

Pour $N >= 2$,

$
sum_(k=2)^N u_k
=
sum_(k=2)^N (v_k-v_(k+1))
=
v_2-v_(N+1).
$

Or

$
v_(N+1)
=
1/sqrt(N)-1/sqrt(N+1)
-> 0.
$

Donc

$
sum_(k=2)^N u_k
->
v_2
=
1-1/sqrt(2).
$

Ainsi la série converge et

$
sum_(k=2)^infinity u_k
=
1-1/sqrt(2).
$

== Comparaison de séries positives

Les notes rappellent le théorème de comparaison pour deux séries positives de
termes généraux $(u_n)$ et $(v_n)$.

Si, à partir d'un certain rang,

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
u_n = o(v_n)
$

et si la série de terme général $v_n$ converge, alors la série de terme général
$u_n$ converge aussi.

== Exemple

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
-> 0.
$

Ainsi

$
u_n=o(v_n).
$

La série géométrique

$
sum exp(-n/2)
$

converge, donc, par comparaison de séries positives,

$
sum n^4 exp(-n)
$

converge.
