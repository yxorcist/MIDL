// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten correction contains the full proof.
// study-validation: 2026-11-05 — Copie manuscrite finale validée : preuve par epsilon (sans epsilon/2 initial), somme finie A, contrôle des deux parties et conclusion par 2 epsilon ; énoncé inchangé.

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

Soit $epsilon>0$. Comme $x_m->ell$, il existe $N_epsilon in NN$ tel que, pour tout $k>=N_epsilon$, $abs(x_k-ell)<epsilon$.

Posons $A=sum_(k=1)^(N_epsilon-1) abs(x_k-ell)$. $A$ étant une constante (une fois $epsilon$ fixé), on a $A/m->0$. Donc il existe $N_A in NN$ tel que, pour tout $m>=N_A$, $frac(A,m)<epsilon$.

Soit $m>=max(N_epsilon,N_A)$. On a :

$
abs(u_m-ell)
&= abs(frac(1,m) sum_(k=1)^m x_k - frac(1,m) sum_(k=1)^m ell) \
&= abs(frac(1,m) sum_(k=1)^m (x_k-ell)) \
&<= frac(1,m) sum_(k=1)^m abs(x_k-ell) \
&= frac(1,m) sum_(k=1)^(N_epsilon-1) abs(x_k-ell)
 + frac(1,m) sum_(k=N_epsilon)^m abs(x_k-ell).
$

Par définition de $A$ et de $N_epsilon$, il y a $m-N_epsilon+1$ termes dans la seconde somme, tous strictement inférieurs à $epsilon$. Donc :

$
abs(u_m-ell)
&< frac(A,m) + frac(m-N_epsilon+1,m) epsilon \
&<= frac(A,m) + epsilon < 2 epsilon.
$

Comme $epsilon>0$ est arbitraire, pour toute tolérance $eta>0$, on applique ce raisonnement à $epsilon=eta/2$. On obtient alors, pour $m$ assez grand, $abs(u_m-ell)<eta$. Donc $u_m->ell$.
