// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten correction contains the full proof.
// study-validation: 2026-11-05 — Copie manuscrite finale validée : preuve par epsilon (sans epsilon/2 initial), somme finie A, contrôle des deux parties et conclusion par 2 epsilon ; énoncé inchangé.

// study-validation: 2026-11-05 — Rectification : index n uniformisé avec l'énoncé ; contrôles n >= N_A et n >= N_epsilon explicités pour les deux contributions.

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

Soit $epsilon>0$. Comme $x_n->ell$, il existe $N_epsilon in NN^*$ tel que, pour tout $k>=N_epsilon$, $abs(x_k-ell)<epsilon$.

Posons $A=sum_(k=1)^(N_epsilon-1) abs(x_k-ell)$. Une fois $epsilon$ fixé, $A$ est une constante ; donc $A/n->0$. Il existe alors $N_A in NN^*$ tel que, pour tout $n>=N_A$, $frac(A,n)<epsilon$.

Soit $n>=max(N_epsilon,N_A)$. On a :

$
abs(u_n-ell)
&= abs(frac(1,n) sum_(k=1)^n x_k - frac(1,n) sum_(k=1)^n ell) \
&= abs(frac(1,n) sum_(k=1)^n (x_k-ell)) \
&<= frac(1,n) sum_(k=1)^n abs(x_k-ell) \
&= frac(1,n) sum_(k=1)^(N_epsilon-1) abs(x_k-ell)
 + frac(1,n) sum_(k=N_epsilon)^n abs(x_k-ell).
$

Par définition de $A$ et puisque $abs(x_k-ell)<epsilon$ pour $k>=N_epsilon$, la seconde somme contient $n-N_epsilon+1$ termes majorés par $epsilon$. Ainsi :

$
abs(u_n-ell)
< frac(A,n) + frac(n-N_epsilon+1,n) epsilon.
$

Or, comme $n>=N_A$, on a $frac(A,n)<epsilon$. Et comme $n>=N_epsilon>=1$, on a $frac(n-N_epsilon+1,n)<=1$. Donc

$
abs(u_n-ell)
< epsilon+epsilon=2 epsilon.
$

Comme $epsilon>0$ est arbitraire, pour toute tolérance $eta>0$, choisissons $epsilon=eta/2$. Le raisonnement donne alors, pour $n$ assez grand, $abs(u_n-ell)<2 (eta/2)=eta$. Donc $u_n->ell$.
