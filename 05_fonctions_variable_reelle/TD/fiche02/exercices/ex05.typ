// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain the complete correction of question 1 and a counterexample for question 2.

// study-validation: 2026-11-05 — Question 2 : copie manuscrite finale validée (C inclus dans A+B, application de Q1, contre-exemple par annulation au même rang). Rédaction et ordre de la copie conservés ; Question 1 inchangée.

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

Soit $x in A+B$.

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
x<=sup(A)+sup(B).
$

Ainsi, $sup(A)+sup(B)$ est un majorant de $A+B$.

Par conséquent,

$
sup(A+B)<=sup(A)+sup(B).
$

=== Seconde inégalité

Pour tout $a in A$ et tout $b in B$,

$
a+b in A+B,
$

donc

$
a+b<=sup(A+B).
$

Fixons $a in A$. Pour tout $b in B$,

$
b<=sup(A+B)-a.
$

Ainsi,

$
sup(B)<=sup(A+B)-a,
$

donc

$
a<=sup(A+B)-sup(B).
$

Cette inégalité étant vraie pour tout $a in A$,

$
sup(A)<=sup(A+B)-sup(B).
$

Par conséquent,

$
sup(A)+sup(B)<=sup(A+B).
$

Avec la première inégalité,

$
sup(A+B)=sup(A)+sup(B).
$

== Question 2

Soient $(x_n)_n$ et $(y_n)_n$ deux suites réelles majorées. On pose

$
A={x_n | n in NN}, quad
B={y_n | n in NN}, quad
C={x_n+y_n | n in NN}.
$

Comme $C subset.eq A+B$, on peut dire que $sup(C) <= sup(A+B)$. De (Q1), on a $sup(A+B)=sup(A)+sup(B)$, d'où

$
sup(C) <= sup(A)+sup(B).
$

Mais l'égalité n'est pas toujours vraie ici, car il s'agit de l'addition de termes au même rang.

Prenons le contre-exemple : on pose $x_n=(-1)^n$ et $y_n=-x_n$.

Alors, pour tout $n in NN$, on a $x_n+y_n=x_n-x_n=0$.

Donc $C={0}$, alors que $A={-1,1}$ et $B={-1,1}$.

Par conséquent,

$
0=sup(C)<sup(A)+sup(B)=2.
$
