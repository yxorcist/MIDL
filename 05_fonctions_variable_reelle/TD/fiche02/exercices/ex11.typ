// source-confidence: high
// source-note: TD 2, exercice 11 ; raisonnement adapté aux copies manuscrites validées le 2026-11-07.
// study-validation: les trois questions sont vérifiées ; cas X_M vide et hypothèse contradictoire corrigés.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 11

== Question 1

Montrer :

$
x_n -> +infinity quad <=> quad "aucune suite extraite de " (x_n) " n'est majorée".
$

*Sens direct.* Si $x_n -> +infinity$, pour toute extraction $phi: NN -> NN$ strictement croissante, on a $x_(phi(n)) -> +infinity$. Donc aucune suite extraite n'est majorée.

*Réciproque.* Supposons qu'aucune suite extraite de $(x_n)$ ne soit majorée.

Soit $M in RR$. Posons

$
X_M = {n in NN | x_n <= M}.
$

$X_M$ est fini : sinon, en choisissant ses indices dans l'ordre croissant, on construirait une suite extraite $(x_(phi(n)))$ majorée par $M$, ce qui contredit l'hypothèse.

On pose $N_M=max(X_M)+1$ si $X_M != emptyset$, et $N_M=0$ sinon.

Ainsi,

$
forall n >= N_M, quad x_n > M.
$

Ceci étant vrai pour tout $M in RR$, on a $x_n -> +infinity$.

== Question 2

On pose $u_n=(-1)^n n$.

Pour les indices pairs :

$
u_(2n)=2n -> +infinity.
$

Pour les indices impairs :

$
u_(2n+1)=-(2n+1) -> -infinity.
$

Donc $(u_n)$ n'est pas majorée, mais ne tend pas vers $+infinity$.

== Question 3

Soit $(x_n)$ une suite réelle positive telle que $x_n$ ne tende pas vers $+infinity$. Posons

$
y_n=frac(x_n,n+1).
$

Par la contraposée de la question 1, il existe une extraction $phi: NN -> NN$ strictement croissante telle que $(x_(phi(n)))$ soit majorée.

Comme $x_n >= 0$, il existe $M>0$ tel que, pour tout $n$,

$
0 <= x_(phi(n)) <= M.
$

Puisque $phi(n)+1>0$,

$
0 <= y_(phi(n))
=frac(x_(phi(n)),phi(n)+1)
<=frac(M,phi(n)+1).
$

Or $phi(n)->+infinity$, donc $M/(phi(n)+1)->0$. Par le théorème des gendarmes,

$
y_(phi(n))->0,
$

d'où

$
0 in "Adh"(y_n).
$
