// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain the complete correction of question 1.
// source-uncertainty: no handwritten correction of question 2 was present in the supplied batch.

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

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* La question 2 figure sur la fiche TD02 officielle,
  mais sa correction n'apparaît pas dans les notes manuscrites transmises.
]
