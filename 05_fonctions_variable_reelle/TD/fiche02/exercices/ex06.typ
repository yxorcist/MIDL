// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten correction contains the full proof.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

Soit $(x_n)_(n>=1)$ une suite convergente de limite $ell$, et soit $(u_n)_(n>=1)$ définie par

$
u_n=frac(1,n) sum_(k=1)^n x_k.
$

Montrer que

$
u_n->ell.
$

== Correction

Soit $epsilon>0$.

Comme

$
x_n->ell,
$

il existe $N_epsilon in NN$ tel que, pour tout $k>=N_epsilon$,

$
abs(x_k-ell)<epsilon/2.
$

Posons

$
A=sum_(k=1)^(N_epsilon-1) abs(x_k-ell).
$

Le nombre $A$ est fixé, donc

$
A/n->0.
$

Il existe ainsi $N_A in NN$ tel que, pour tout $n>=N_A$,

$
A/n<epsilon/2.
$

Soit maintenant

$
n>=max(N_epsilon,N_A).
$

On a

$
abs(u_n-ell)
&=
abs(
frac(1,n) sum_(k=1)^n x_k
-
frac(1,n) sum_(k=1)^n ell
) \
&=
abs(
frac(1,n) sum_(k=1)^n (x_k-ell)
) \
&<=
frac(1,n) sum_(k=1)^n abs(x_k-ell) \
&=
frac(1,n) sum_(k=1)^(N_epsilon-1) abs(x_k-ell)
+
frac(1,n) sum_(k=N_epsilon)^n abs(x_k-ell).
$

Par définition de $A$ et de $N_epsilon$,

$
abs(u_n-ell)
<
frac(A,n)
+
frac(n-N_epsilon+1,n) frac(epsilon,2).
$

Comme

$
frac(n-N_epsilon+1,n)<=1,
$

on obtient

$
abs(u_n-ell)
<
epsilon/2+epsilon/2
=
epsilon.
$

Donc

$
u_n->ell.
$
