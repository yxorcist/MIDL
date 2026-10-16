// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain the complete correction of question 1.
// source-note: correction de la question 2 ajoutée à partir de la photo 10891 ; preuve d'irrationalité vérifiée.

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

=== Monotonie de $(x_n)$

Pour tout $n>=1$,

$
x_(n+1)-x_n
=
frac(1,(n+1)!)
>
0.
$

Donc $(x_n)_n$ est strictement croissante.

=== Monotonie de $(y_n)$

Pour tout $n>=1$,

$
y_(n+1)-y_n
=
x_(n+1)-x_n
+
frac(1,(n+1)(n+1)!)
-
frac(1,n n!).
$

Comme

$
x_(n+1)-x_n
=
frac(1,(n+1)!),
$

on obtient

$
y_(n+1)-y_n
=
frac(1,(n+1)!)
+
frac(1,(n+1)(n+1)!)
-
frac(1,n n!).
$

En mettant au même dénominateur,

$
y_(n+1)-y_n
=
frac(n(n+2)-(n+1)^2,n(n+1)(n+1)!).
$

Or

$
n(n+2)-(n+1)^2=-1.
$

Ainsi,

$
y_(n+1)-y_n
=
-frac(1,n(n+1)(n+1)!)
<
0.
$

Donc $(y_n)_n$ est strictement décroissante.

=== Écart entre les deux suites

Pour tout $n>=1$,

$
y_n-x_n
=
frac(1,n n!)
>
0,
$

et

$
frac(1,n n!)->0.
$

Les suites $(x_n)_n$ et $(y_n)_n$ sont donc adjacentes.

Par le théorème des suites adjacentes, elles convergent vers une même limite, notée

$
e.
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

On raisonne par l'absurde : supposons qu'il existe $p in ZZ$ et $q in NN^*$ tels que

$
e=p/q.
$

==== a) Encadrement strict de $e$

D'après la question 1, $(x_n)_n$ est strictement croissante et converge vers $e$. Par conséquent,

$
x_q < e.
$

De même, $(y_n)_n$ est strictement décroissante et converge vers $e$, donc

$
e < y_q.
$

On obtient

$
x_q < e < y_q.
$

==== b) Multiplication par $q q!$

D'abord,

$
q q! x_q
=
q q! sum_(k=0)^q 1/k!
=
q sum_(k=0)^q q!/k!.
$

Pour $0<=k<=q$, le quotient $q!/k!$ est un entier. Ainsi,

$
q q! x_q in ZZ.
$

Ensuite, comme $e=p/q$,

$
q q! e=q q! p/q=p q! in ZZ.
$

Enfin,

$
q q! y_q
=
q q! (x_q+1/(q q!))
=
q q! x_q+1 in ZZ.
$

==== c) Contradiction

L'encadrement de a), multiplié par le nombre positif $q q!$, donne

$
q q! x_q < q q! e < q q! y_q.
$

En utilisant b),

$
q q! x_q < p q! < q q! x_q+1.
$

Or les deux extrémités sont des entiers consécutifs. Il n'existe aucun entier strictement compris entre eux.

C'est une contradiction. Donc

$
e in.not QQ.
$

Ainsi, $e$ est irrationnel.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Vérification.* La preuve manuscrite (photo 10891) établit l'intégralité des trois nombres, puis celle de la contradiction. Cette rédaction explicite l'argument final des entiers consécutifs.
]
