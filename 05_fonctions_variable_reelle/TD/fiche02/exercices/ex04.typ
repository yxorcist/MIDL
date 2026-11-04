// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the pushed material contains the correction of questions 1 and 2.
// source-note: the abandoned ratio manipulation marked "discontinued" in the pushed file was not retained.

// study-validation: 2026-11-04 — Question 1 : copie manuscrite validée (quotient, seuil n >= 4, croissance puis décroissance strictes). Question 2 inchangée, non évaluée ici.
// study-validation: 2026-11-04 — Question 2 : copie manuscrite validée (maximum en x_4 par monotonie ; positivité, limite 0 et caractérisation séquentielle pour l'infimum ; absence de minimum). Question 1 inchangée.

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
frac(1,2) (1+frac(1,n))^3.
$

On compare ce quotient à $1$ :

$
frac(x_(n+1),x_n) <= 1
$

si et seulement si

$
(1+frac(1,n))^3 <= 2.
$

Comme tous les termes sont positifs,

$
1+frac(1,n) <= 2^(1/3).
$

Donc

$
frac(1,n) <= 2^(1/3)-1,
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
x_(n+1)<x_n.
$

La suite est donc strictement croissante jusqu'à $x_4$, puis strictement décroissante à partir du rang $4$.

== Question 2 — Bornes, minimum et maximum de $A$

D'après la question 1, la suite est strictement croissante jusqu'à $x_4$, puis strictement décroissante. Ainsi, pour tout $n in NN^*$, on a $x_n <= x_4$.

Or $x_4 = frac(4^3, 2^4) = 4$ et $x_4 in A$. Donc

$
sup(A) = max(A) = 4.
$

Pour tout $n in NN^*$,

$
x_n = frac(n^3, 2^n) > 0.
$

Ainsi, $0$ est un minorant de $A$ et $0 in.not A$.

Par croissances comparées,

$
x_n -> 0.
$

Comme tous les $x_n$ appartiennent à $A$, la caractérisation séquentielle de l'infimum donne

$
inf(A) = 0.
$

Puisque $0 in.not A$, $A$ n'admet pas de minimum.
