// source-confidence: high
// source: TD01_series-positives.pdf, exercice 2.
// study-validation: 2026-10-28 — questions 1 et 2 résolues à la main et vérifiées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD01 — Exercice 2

== Question 1

On cherche la fraction irréductible de $A = 0,414141 dots$.

$
A &= sum_(k=1)^infinity 41/100^k \
  &= 41 sum_(k=1)^infinity (1/100)^k.
$

C'est une série géométrique de raison $q=1/100$, avec $abs(q)<1$.
La somme commence à $k=1$, donc
$
A = 41 dot (1/100)/(1-1/100) = 41/99.
$

== Question 2

On veut montrer que $B=0,99999 dots=1$.

$
B = sum_(k=1)^infinity 9/10^k
  = 9 sum_(k=1)^infinity (1/10)^k.
$

La raison est $q=1/10$ et $abs(q)<1$ ; la série converge.

$
B = 9 dot (1/10)/(1-1/10) = 9 dot 1/9 = 1.
$

Donc $0,99999 dots = 1$.
