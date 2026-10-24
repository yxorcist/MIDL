// source-confidence: high
// source-note: statement and numbering cross-checked against the official TD02 sheet; handwritten correction supplied for questions 1 and 2.
// source-reconstruction: question 3 completed from the official TD02 statement; no handwritten proof of this question is visible.

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

*Base.* La somme de zéro à zéro vaut zéro :

$
sigma(0)=0.
$

*Règle d'induction.* Pour tout $n>=0$,

$
sigma(n+1)=sigma(n)+(n+1).
$

Cette relation découle directement de

$
sum_(k=0)^(n+1) k = (sum_(k=0)^n k)+(n+1).
$

En complément, on en déduit par induction la forme fermée

$
sigma(n)=(n(n+1))/2.
$

*Provenance.* Cette question a été complétée à partir de la fiche imprimée TD02 ; les photos fournies traitent surtout les questions 1 et 2.
