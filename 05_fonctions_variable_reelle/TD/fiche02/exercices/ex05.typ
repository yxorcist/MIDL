// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain the complete correction of question 1 and a counterexample for question 2.

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

Les notes donnent aussi une autre méthode : on choisit des suites
$(a_n)_n in A^NN$ et $(b_n)_n in B^NN$ telles que

$
a_n->sup(A)
quad "et" quad
b_n->sup(B).
$

Alors

$
a_n+b_n in A+B
$

pour tout $n$, et

$
a_n+b_n->sup(A)+sup(B).
$

La caractérisation séquentielle de la borne supérieure redonne

$
sup(A+B)>=sup(A)+sup(B).
$

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

Comme

$
C subset.eq A+B,
$

on a

$
sup(C)<=sup(A+B).
$

D'après la question 1,

$
sup(A+B)=sup(A)+sup(B).
$

Donc

$
sup(C)<=sup(A)+sup(B).
$

L'égalité n'est pas toujours vraie.

Considérons

$
x_n=(-1)^n
quad "et" quad
y_n=-(-1)^n.
$

Pour tout $n in NN$,

$
x_n+y_n=0.
$

Ainsi,

$
C={0}
quad "et" quad
sup(C)=0.
$

Par ailleurs,

$
A={-1,1}
quad "et" quad
B={-1,1},
$

donc

$
sup(A)=sup(B)=1.
$

Finalement,

$
sup(C)=0<2=sup(A)+sup(B).
$
