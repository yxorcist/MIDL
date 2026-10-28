// source-confidence: high
// study-validation: 2026-10-28 — exercice 2 entièrement résolu à la main et vérifié (questions 1 et 2).
// study-feedback: préciser systématiquement la condition abs(q) < 1 avant d'utiliser la somme d'une série géométrique infinie.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

== Question 1

On considère

$
A=0,4141414141 dots
$

c'est-à-dire le développement décimal périodique formé par la répétition du
bloc $41$.

Les notes écrivent

$
A
=
lim_(N->infinity)
sum_(k=1)^N 41/10^(2k).
$

Comme

$
10^(2k)=100^k,
$

on obtient

$
A
=
41
sum_(k=1)^infinity
(1/100)^k.
$

Il s'agit d'une série géométrique de raison $q=1/100$.
Comme $abs(q) = 1/100 < 1$, la série converge et la formule de somme infinie s'applique.

Ainsi,

$
sum_(k=1)^infinity
(1/100)^k
=
(1/100)/(1-1/100)
=
1/99.
$

Donc

$
A=41/99.
$

En particulier,

$
A in QQ.
$

== Question 2

On considère

$
B=0,99999 dots
$

Les notes écrivent

$
B
=
lim_(N->infinity)
sum_(k=1)^N 9/10^k.
$

La série

$
sum_(k=1)^infinity 9/10^k
$

est géométrique de raison $q=1/10$.
Comme $abs(q) = 1/10 < 1$, elle converge.

Donc

$
B
=
9
sum_(k=1)^infinity
(1/10)^k
=
9 dot
(1/10)/(1-1/10).
$

Ainsi,

$
B
=
9/10 dot 10/9
=
1.
$

Par conséquent,

$
0,99999 dots=1.
$

== À retenir

- Une suite géométrique peut avoir n'importe quelle raison réelle $q$.
- Pour une série géométrique infinie de premier coefficient non nul, la convergence exige $abs(q) < 1$, pas seulement $q < 1$.
- Pour $abs(q) < 1$, on utilise $sum_(k=1)^infinity q^k = q/(1-q)$.
- Écrire l'indice de départ de la somme avant d'appliquer la formule.
