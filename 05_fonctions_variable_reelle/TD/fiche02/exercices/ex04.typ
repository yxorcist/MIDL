// source-confidence: high
// source-note: TD02, exercice 4 ; reprise concise de la copie manuscrite du 10/11/2026.
// notation: l'indice n est utilisé dans toute la preuve, conformément à l'énoncé.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

On considère $A={x_n | n in NN^*}$, avec
$
x_n=frac(n^3,2^n).
$

== Question 1 — Monotonie

Puisque $x_n>0$, étudions le quotient :
$
frac(x_(n+1),x_n)
=frac((n+1)^3,2^(n+1)) frac(2^n,n^3)
=frac(1,2)(frac(n+1,n))^3.
$

On cherche les indices pour lesquels ce quotient est strictement inférieur à $1$ :
$
frac(x_(n+1),x_n)<1
&<=> (frac(n+1,n))^3<2 \
&<=> 1+frac(1,n)<2^(1/3) \
&<=> n>frac(1,2^(1/3)-1) approx 3.847.
$

Ainsi, $x_(n+1)<x_n$ pour tout $n>=4$. Pour $n=1,2,3$, l'inégalité est inversée : $x_(n+1)>x_n$.

Donc $(x_n)$ est strictement croissante jusqu'au rang $4$, puis strictement décroissante.

== Question 2 — Bornes et extrema de $A$

D'après la question 1, le plus grand terme est $x_4$ :
$
x_4=frac(4^3,2^4)=4 in A.
$

Donc
$
sup(A)=max(A)=4.
$

D'autre part, $x_n>0$ pour tout $n>=1$, et, par croissance comparée,
$
x_n=frac(n^3,2^n) -> 0 quad (n -> +infinity).
$

Ainsi, $0$ est un minorant approché par des éléments de $A$, mais $0 in.not A$.

Par conséquent,
$
inf(A)=0, quad "et" quad A " n'admet pas de minimum".
$
