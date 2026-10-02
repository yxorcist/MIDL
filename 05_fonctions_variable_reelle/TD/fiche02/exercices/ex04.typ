// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the pushed material contains the correction of questions 1 and 2.
// source-note: the abandoned ratio manipulation marked "discontinued" in the pushed file was not retained.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

On considère

$
A={x_n | n in NN^*},
$

où

$
x_n=n^3 2^(-n).
$

== Question 1 — Monotonie de $(x_n)$

Pour tout $n in NN^*$,

$
frac(x_(n+1),x_n)
=
frac((n+1)^3 2^(-(n+1)),n^3 2^(-n))
=
frac12 (1+frac1n)^3.
$

On compare ce quotient à $1$ :

$
frac(x_(n+1),x_n) <= 1
$

si et seulement si

$
(1+frac1n)^3 <= 2.
$

Comme tous les termes sont positifs,

$
1+frac1n <= 2^(1/3).
$

Donc

$
frac1n <= 2^(1/3)-1,
$

soit

$
n >= frac(1,2^(1/3)-1).
$

Or

$
frac(1,2^(1/3)-1)
approx 3.85.
$

Ainsi,

$
forall n in {1,2,3},
quad
x_(n+1)>x_n,
$

et

$
forall n>=4,
quad
x_(n+1)<=x_n.
$

La suite est donc strictement croissante jusqu'à $x_4$, puis décroissante à partir du rang $4$.

== Question 2 — Bornes, minimum et maximum de $A$

Pour tout $n in NN^*$,

$
x_n=frac(n^3,2^n)>0.
$

Donc $0$ est un minorant de $A$.

De plus,

$
x_n -> 0.
$

Comme $(x_n)_n$ est une suite d'éléments de $A$, la caractérisation séquentielle de la borne inférieure donne

$
inf(A)=0.
$

Or

$
0 in.not A.
$

Donc $A$ n'admet pas de minimum.

D'après la question 1,

$
x_1<x_2<x_3<x_4
$

et, pour tout $n>=4$,

$
x_n<=x_4.
$

Ainsi, $x_4$ est un majorant de $A$ qui appartient à $A$.

Par conséquent,

$
max(A)=sup(A)=x_4.
$

Enfin,

$
x_4
=
frac(4^3,2^4)
=
4.
$

Donc

$
"sup"(A)=max(A)=4
$

et

$
"inf"(A)=0
$

avec aucun minimum.
