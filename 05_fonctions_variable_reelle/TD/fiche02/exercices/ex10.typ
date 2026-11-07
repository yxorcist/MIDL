// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain the complete correction of question 1.
// study-validation: 2026-11-07 — Questions 1 et 2 validées sur la copie manuscrite : suites adjacentes, puis irrationalité de e par l'absurde et entiers consécutifs.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 10

On considère, pour $n>=1$,

$
x_n=sum_(k=0)^n frac(1,k!)
$

et

$
y_n=x_n+frac(1,n n!).
$

== Question 1

Montrer que les suites $(x_n)_(n>=1)$ et $(y_n)_(n>=1)$ sont adjacentes, puis en déduire qu'elles convergent vers une même limite notée $e$.

=== Correction de la question 1

*Monotonie de $x_n$.*

$
x_(n+1)-x_n
&=sum_(k=0)^(n+1) frac(1,k!) - sum_(k=0)^n frac(1,k!) \
&=frac(1,(n+1)!)>0.
$

Donc $(x_n)$ est strictement croissante.

*Monotonie de $y_n$.*

$
y_(n+1)-y_n
&=x_(n+1)-x_n + frac(1,(n+1)(n+1)!) - frac(1,n n!) \
&=frac(1,(n+1)!) + frac(1,(n+1)(n+1)!) - frac(1,n n!) \
&=frac(n(n+1)+n-(n+1)^2,n(n+1)(n+1)!) \
&=-frac(1,n(n+1)(n+1)!)<0.
$

Donc $(y_n)$ est strictement décroissante.

*Différence.*

$
y_n-x_n=frac(1,n n!)->0.
$

Les suites sont adjacentes ; d'après le théorème des suites adjacentes :

$
x_n->e quad "et" quad y_n->e.
$

== Question 2

On veut montrer par l'absurde que $e$ est irrationnel.

On suppose donc

$
e=frac(p,q)
$

avec $p$ et $q$ entiers.

=== a)

Justifier que

$
x_q<e<y_q.
$

=== b)

Montrer que

$
q q! x_q,
quad
q q! e
quad "et" quad
q q! y_q
$

sont des entiers.

=== c)

En combinant les deux questions précédentes, conclure que $e$ est irrationnel.

=== Correction de la question 2

Supposons par l'absurde que $e=frac(p,q) in QQ$, avec $p in ZZ$ et $q in NN^*$.

*a)* D'après la question 1, $(x_n)$ est strictement croissante, $(y_n)$ strictement décroissante, et les deux convergent vers $e$. Donc

$
x_q<e<y_q.
$

*b)* On a :

$
q q! x_q
&=q q! sum_(k=0)^q frac(1,k!) \
&=q sum_(k=0)^q frac(q!,k!) in ZZ,
$

car $frac(q!,k!) in ZZ$ pour $0<=k<=q$.

$
q q! e=q!p in ZZ,
$

et

$
q q! y_q
=q q! (x_q+frac(1,q q!))
=q q! x_q+1 in ZZ.
$

*c)* Comme $q q!>0$, on multiplie l'encadrement de *a)* :

$
q q! x_q < q q! e < q q! y_q
$

soit

$
q q! x_q < q!p < q q! x_q+1.
$

Or les bornes sont deux entiers consécutifs, et $q!p$ est un entier. Contradiction.

Donc $e in.not QQ$ : $e$ est irrationnel.
