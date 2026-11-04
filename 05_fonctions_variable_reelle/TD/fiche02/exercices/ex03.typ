// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-uncertainty: the supplied handwritten correction covers question 1 only; no handwritten correction for question 2 was supplied.

// study-validation: 2026-11-04 — Question 1 : rédaction concise validée sur la copie manuscrite (inégalités larges, raisonnement par définition). Énoncé et question 2 inchangés.

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

Comme $B != emptyset$ et $B$ est borné, la propriété des bornes inférieure et supérieure garantit l'existence de $inf(B)$ et $sup(B)$.

Puisque $A != emptyset$ et $A subset.eq B$, pour tout $a in A$,

$
inf(B) <= a <= sup(B).
$

Ainsi, $A$ est borné. Comme $A != emptyset$, $inf(A)$ et $sup(A)$ existent également.

De plus, $inf(B)$ est un minorant de $A$ et $sup(B)$ est un majorant de $A$. Par définition de l'infimum et du supremum,

$
inf(B) <= inf(A)
quad "et" quad
sup(A) <= sup(B).
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
