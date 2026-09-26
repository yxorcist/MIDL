// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

== Question 1

On considère, pour $n>=1$,

$
u_n=1/sqrt(n)-1/sqrt(n+1).
$

Pour $n>=1$,

$
sqrt(n+1)>sqrt(n),
$

donc

$
1/sqrt(n)>1/sqrt(n+1).
$

Ainsi,

$
u_n>0.
$

Pour $N>=1$,

$
S_N
=
sum_(k=1)^N u_k
=
sum_(k=1)^N
(1/sqrt(k)-1/sqrt(k+1)).
$

La somme est télescopique :

$
S_N
=
1-1/sqrt(N+1).
$

Comme

$
1/sqrt(N+1)->0,
$

on obtient

$
S_N->1.
$

Donc la série converge et

$
sum_(k=1)^infinity
(1/sqrt(k)-1/sqrt(k+1))
=
1.
$

== Question 2.a

Pour $n>=2$,

$
u_n
=
1/sqrt(n-1)
-
2/sqrt(n)
+
1/sqrt(n+1).
$

On pose

$
v_n
=
1/sqrt(n-1)-1/sqrt(n).
$

Alors

$
v_(n+1)
=
1/sqrt(n)-1/sqrt(n+1),
$

et donc

$
u_n=v_n-v_(n+1).
$

== Question 2.b

Pour $N>=2$,

$
sum_(k=2)^N u_k
=
sum_(k=2)^N (v_k-v_(k+1)).
$

La somme est télescopique :

$
sum_(k=2)^N u_k
=
v_2-v_(N+1).
$

Or

$
v_2=1-1/sqrt(2)
$

et

$
v_(N+1)=1/sqrt(N)-1/sqrt(N+1).
$

Ainsi,

$
sum_(k=2)^N u_k
=
1-1/sqrt(2)
-
(
1/sqrt(N)-1/sqrt(N+1)
).
$

== Question 2.c

Comme

$
1/sqrt(N)-1/sqrt(N+1)->0,
$

on obtient

$
sum_(k=2)^N u_k
->
1-1/sqrt(2).
$

Donc la série converge et

$
sum_(k=2)^infinity u_k
=
1-1/sqrt(2).
$
