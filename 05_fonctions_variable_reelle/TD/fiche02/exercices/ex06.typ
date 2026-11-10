// source-confidence: high
// source-note: TD02, exercice 6 (théorème de Cesàro) ; preuve réécrite d'après la dernière copie manuscrite du 10/11/2026.
// notation: indice n conservé partout ; séparation en une somme finie et une queue contrôlée par epsilon.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

Soit $(x_n)_(n>=1)$ une suite convergente vers $ell$. Posons
$
u_n=frac(1,n) sum_(k=1)^n x_k.
$
Montrer que $u_n->ell$.

== Démonstration

Comme $x_n->ell$, pour tout $epsilon>0$, il existe $N_epsilon in NN^*$ tel que
$
forall k>=N_epsilon, quad abs(x_k-ell)<epsilon.
$

Posons
$
A=sum_(k=1)^(N_epsilon-1) abs(x_k-ell).
$
$A$ est une constante, donc $A/n->0$. Il existe ainsi $N_A in NN^*$ tel que
$
forall n>=N_A, quad frac(A,n)<epsilon.
$

Pour tout $n>=max(N_epsilon,N_A)$,
$
abs(u_n-ell)
&= abs(frac(1,n) sum_(k=1)^n (x_k-ell)) \
&<= frac(1,n) sum_(k=1)^n abs(x_k-ell) \
&= frac(1,n) sum_(k=1)^(N_epsilon-1) abs(x_k-ell)
 + frac(1,n) sum_(k=N_epsilon)^n abs(x_k-ell) \
&<= frac(A,n)+frac(n-N_epsilon+1,n) epsilon \
&<= frac(A,n)+epsilon \
&< 2 epsilon.
$

Puisque $epsilon>0$ est arbitraire, $u_n->ell$.
