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
