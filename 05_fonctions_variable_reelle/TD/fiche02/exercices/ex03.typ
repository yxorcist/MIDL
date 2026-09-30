// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-uncertainty: the supplied handwritten correction covers question 1 only; no handwritten correction for question 2 was supplied.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Question 1

Soient $A$ et $B$ deux parties non vides de $RR$.

On suppose que

$
A subset.eq B
$

et que $B$ est borné.

Justifier l'existence de bornes inférieures et supérieures pour $A$ et $B$, puis montrer que

$
sup(A) <= sup(B)
quad "et" quad
inf(A) >= inf(B).
$

=== Correction

Comme $B$ est borné, $B$ est minoré et majoré.

De plus,

$
B != emptyset.
$

D'après la propriété de la borne supérieure, les nombres

$
inf(B)
quad "et" quad
sup(B)
$

existent.

Soit

$
a in A.
$

Comme

$
A subset.eq B,
$

on a aussi

$
a in B.
$

Par conséquent,

$
inf(B) <= a <= sup(B).
$

Ainsi, $A$ est lui aussi minoré et majoré.

Comme

$
A != emptyset,
$

les nombres

$
inf(A)
quad "et" quad
sup(A)
$

existent.

De plus, $inf(B)$ est un minorant de $A$.

Or $inf(A)$ est le plus grand des minorants de $A$, donc

$
inf(B) <= inf(A).
$

De même, $sup(B)$ est un majorant de $A$.

Comme $sup(A)$ est le plus petit des majorants de $A$,

$
sup(A) <= sup(B).
$

Ainsi,

$
inf(B) <= inf(A) <= sup(A) <= sup(B).
$

== Question 2

Soient $A$ et $B$ deux parties non vides de $RR$ telles que, pour tout $a in A$ et tout $b in B$,

$
a <= b.
$

Justifier que $sup(A)$ et $inf(B)$ existent, puis montrer que

$
sup(A) <= inf(B).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* La question 2 figure sur la fiche TD02 officielle,
  mais sa correction n'apparaît pas dans la photographie transmise.
]
