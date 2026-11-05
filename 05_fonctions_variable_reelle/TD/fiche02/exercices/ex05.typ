// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain the complete correction of question 1 and a counterexample for question 2.

// study-validation: 2026-11-05 — Questions 1 et 2 : copies manuscrites finales validées. Q1 rédigée avec les deux inégalités et application successive du plus petit majorant ; Q2 par inclusion et contre-exemple au même rang. Ordre et style de la copie conservés, notation polie.

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

Posons $x in A+B$. Alors il existe $a in A$ et $b in B$ tels que $x=a+b$.

Comme $a<=sup(A)$ et $b<=sup(B)$, on a $x=a+b<=sup(A)+sup(B)$. Ceci étant vrai pour tout $x in A+B$, $sup(A)+sup(B)$ est un majorant de $A+B$. Donc

$
sup(A+B) <= sup(A)+sup(B).
$

Ensuite, pour tous $a in A$ et $b in B$, on a $a+b in A+B$, donc

$
a+b <= sup(A+B) <=> b <= sup(A+B)-a.
$

Fixons $a in A$. Ceci est vrai pour tout $b in B$, alors $sup(B)<=sup(A+B)-a$, d'où $a<=sup(A+B)-sup(B)$.

Cette inégalité étant vraie pour tout $a in A$, on obtient

$
sup(A) <= sup(A+B)-sup(B)
<=> sup(A)+sup(B) <= sup(A+B).
$

On conclut que $sup(A+B)=sup(A)+sup(B)$.

== Question 2

Soient $(x_n)_n$ et $(y_n)_n$ deux suites réelles majorées. On pose

$
A={x_n | n in NN}, quad
B={y_n | n in NN}, quad
C={x_n+y_n | n in NN}.
$

Comme $C subset.eq A+B$, on a $sup(C)<=sup(A+B)$. Or, de (Q1), on a $sup(A+B)=sup(A)+sup(B)$. Donc

$
sup(C)<=sup(A)+sup(B).
$

Mais l'égalité n'est pas toujours vraie ici, car il s'agit de l'addition de termes au même rang.

Prenons un contre-exemple : $x_n=(-1)^n$ et $y_n=-x_n$.

Alors, pour tout $n in NN$, $x_n+y_n=x_n-x_n=0$. Donc $C={0}$, alors que $A={-1,1}$ et $B={-1,1}$.

Par conséquent,

$
0=sup(C)<sup(A)+sup(B)=2.
$

On n'a donc pas toujours l'égalité.
