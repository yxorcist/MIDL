// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the pushed material contains only the beginning of the proof of question 1.
// source-uncertainty: the reverse inequality needed to finish question 1, and all of question 2, were not present in the pushed source.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

== Question 1

Soient $A$ et $B$ deux parties non vides et majorées de $RR$.

On pose

$
A+B
=
{a+b | a in A, b in B}.
$

Il faut montrer

$
sup(A+B)=sup(A)+sup(B).
$

=== Première inégalité

Soit

$
x in A+B.
$

Il existe $a in A$ et $b in B$ tels que

$
x=a+b.
$

Comme

$
a<=sup(A)
quad "et" quad
b<=sup(B),
$

on obtient

$
x
=
a+b
<=
sup(A)+sup(B).
$

Ainsi,

$
sup(A)+sup(B)
$

est un majorant de $A+B$.

Par conséquent,

$
sup(A+B)
<=
sup(A)+sup(B).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction incomplète dans la source poussée.* La seconde inégalité nécessaire pour conclure l'égalité n'était pas présente.
]

== Question 2

Soient $(x_n)_n$ et $(y_n)_n$ deux suites réelles majorées.

On pose

$
A={x_n | n in NN},
quad
B={y_n | n in NN},
quad
C={x_n+y_n | n in NN}.
$

Il faut montrer

$
sup(C)<=sup(A)+sup(B)
$

et déterminer si l'égalité est toujours vraie.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* Aucun développement de la question 2 n'était présent dans le contenu poussé.
]
