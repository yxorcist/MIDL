// source-confidence: high
// study-validation: 2026-10-29 — TD01 ex05 question 3 validée sur copie manuscrite : choix v_n=1/n^(2beta), série de Riemann (2beta>1), application de la question 2 et identification sqrt(u_n v_n)=sqrt(u_n)/n^beta.
// study-validation: 2026-10-29 — TD01 ex05 question 2 validée sur copie manuscrite : somme des séries convergentes, inégalité 0 <= sqrt(u_n v_n) <= (u_n+v_n)/2 obtenue à la question 1, comparaison des séries positives.
// study-validation: 2026-10-29 — TD01 ex05 question 1 validée sur copie manuscrite : preuve de l'inégalité géométrique-arithmétique par équivalences après élévation au carré, x,y >= 0, conclusion 0 <= (x-y)^2 ; égalité pour x=y.
// source-note: statement cross-checked against the official TD01 sheet; handwritten correction supplied for questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5 — Examen Terminal Janvier 2026

On considère des suites $(u_n)_(n>=1)$ et $(v_n)_(n>=1)$ de nombres réels positifs.

== Question 1

Montrer que, pour tous réels $x$ et $y$ positifs,

$
sqrt(x y) <= 1/2 (x+y).
$

Comme $x,y>=0$, les deux membres sont positifs : on peut élever au carré en conservant l'équivalence.

$
sqrt(x y) <= (x+y)/2
&<=> 4x y <= (x+y)^2 \
&<=> 0 <= x^2-2x y+y^2 \
&<=> 0 <= (x-y)^2.
$

La dernière inégalité est toujours vraie. Ainsi, pour tous $x,y>=0$,

$
sqrt(x y) <= (x+y)/2.
$

L'égalité a lieu si et seulement si $x=y$.

== Question 2

Supposons $sum_(n>=1) u_n$ et $sum_(n>=1) v_n$ convergentes, avec $u_n,v_n>=0$.

Par somme et multiplication par $1/2$ de séries convergentes,
$sum_(n>=1) (u_n+v_n)/2$ converge.

D'après la question 1, pour tout $n>=1$,

$
0 <= sqrt(u_n v_n) <= (u_n+v_n)/2.
$

Par comparaison des séries à termes positifs,

$
sum_(n>=1) sqrt(u_n v_n) " converge."
$

== Question 3

On suppose $u_n>=0$ et $sum_(n>=1) u_n$ convergente. Soit $beta>1/2$.

On pose $v_n=1/n^(2beta)$. Comme $2beta>1$, la série
$sum_(n>=1) v_n$ converge par Riemann.

En appliquant la question 2 aux deux séries positives convergentes :

$
sum_(n>=1) sqrt(u_n v_n) " converge."
$

Or

$
sqrt(u_n v_n)
=sqrt(u_n/n^(2beta))
=sqrt(u_n)/n^beta.
$

Ainsi,

$
sum_(n>=1) sqrt(u_n)/n^beta " converge pour tout " beta>1/2.
$
