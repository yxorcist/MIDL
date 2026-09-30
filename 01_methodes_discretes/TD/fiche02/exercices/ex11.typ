// source-confidence: high
// source-note: statement and numbering cross-checked against the official TD02 sheet; handwritten correction supplied for questions 1 and 2.
// source-uncertainty: no handwritten correction for question 3 is visible in the supplied pages.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 11 — Définitions inductives de fonctions

== Question 1 — $"somme"_m$

Pour un entier fixé $m$, on considère la fonction

$
"somme"_m: NN -> NN,
quad
i -> i+m.
$

Une définition inductive est :

*Base.*

$
"somme"_m(0)=m.
$

*Règle d'induction.*

Pour tout $n>=1$,

$
"somme"_m(n)
=
"somme"_m(n-1)+1.
$

Ainsi, la fonction construit successivement

$
m,
m+1,
m+2,
dots
$

à partir de la valeur de base.

== Question 2 — Factorielle

On considère

$
"Fact":NN->NN.
$

La définition inductive est :

*Base.*

$
"Fact"(0)=1.
$

*Règle d'induction.*

Pour tout $n>=1$,

$
"Fact"(n)
=
n "Fact"(n-1).
$

== Question 3 — Somme des entiers

On considère

$
sigma(i)
=
sum_(k=0)^i k.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* La question 3 figure sur la fiche TD02 officielle,
  mais sa définition inductive n'apparaît pas dans les photographies fournies.
]
