// source-confidence: high
// source-note: énoncé officiel TD02, exercice 12 ; démonstration adaptée à la copie manuscrite finale du 2026-11-07.
// study-validation: preuve de Cauchy reconstruite sans correction, somme géométrique et quantificateurs vérifiés.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 12

== Énoncé

Soit $(a_n)_(n>=0)$ une suite réelle bornée. Pour $n in NN$, on pose

$
x_n=sum_(k=0)^n a_k/2^k.
$

Montrer, à partir de la définition, que $(x_n)$ est de Cauchy.

== Correction

Comme $(a_n)$ est bornée, il existe $M>0$ tel que

$
forall k in NN, quad abs(a_k)<=M.
$

Rappel de la définition :

$
forall epsilon>0, exists N in NN,
forall n>=N, forall m in NN,
quad abs(x_(n+m)-x_n)<epsilon.
$

Soit $epsilon>0$. Pour $n,m in NN$,

$
x_(n+m)-x_n=sum_(k=n+1)^(n+m) a_k/2^k.
$

Par l'inégalité triangulaire et la bornitude de $(a_n)$,

$
abs(x_(n+m)-x_n)
&<=sum_(k=n+1)^(n+m) abs(a_k)/2^k \
&<=M sum_(k=n+1)^(n+m) (1/2)^k \
&<=M sum_(k=n+1)^infinity (1/2)^k.
$

Or, par la somme géométrique de raison $1/2<1$,

$
sum_(k=n+1)^infinity (1/2)^k
=frac((1/2)^(n+1),1-1/2)
=frac(1,2^n).
$

Donc, pour tout $m in NN$,

$
abs(x_(n+m)-x_n)<=frac(M,2^n).
$

Comme $M/2^n -> 0$, il existe $N in NN$ tel que

$
forall n>=N, quad frac(M,2^n)<epsilon.
$

Ainsi,

$
forall n>=N, forall m in NN,
quad abs(x_(n+m)-x_n)<=frac(M,2^n)<epsilon.
$

Donc $(x_n)$ est une *suite de Cauchy*.
