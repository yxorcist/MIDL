// source-confidence: high
// source-note: TD02, exercice 6 (théorème de Cesàro) ; dernière copie manuscrite du 10/11/2026.
// notation: n pour l'indice de la suite, k pour la somme ; démonstration par découpage et epsilon.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

Soit $(x_n)_(n>=1)$ une suite convergente vers $ell$. On pose
$
u_n=frac(1,n) sum_(k=1)^n x_k.
$
Montrons que $u_n -> ell$.

== Démonstration

Comme $x_n -> ell$,
$
forall epsilon>0, exists N_epsilon in NN^*,
forall k>=N_epsilon, quad abs(x_k-ell)<epsilon.
$

Posons
$
A=sum_(k=1)^(N_epsilon-1) abs(x_k-ell).
$

$A$ est une constante, donc $A/n -> 0$. Ainsi, il existe $N_A in NN^*$ tel que
$
forall n>=N_A, quad A/n<epsilon.
$

Pour tout $n>=max(N_epsilon,N_A)$,
$
abs(u_n-ell)
&= abs(frac(1,n) sum_(k=1)^n x_k-frac(1,n) sum_(k=1)^n ell) \
&<= frac(1,n) sum_(k=1)^n abs(x_k-ell) \
&= frac(1,n) sum_(k=1)^(N_epsilon-1) abs(x_k-ell)
+ frac(1,n) sum_(k=N_epsilon)^n abs(x_k-ell) \
&<= A/n + frac(n-N_epsilon+1,n) epsilon \
&<= A/n+epsilon \
&< 2epsilon.
$

Comme $epsilon>0$ est arbitraire, on obtient $u_n -> ell$.
