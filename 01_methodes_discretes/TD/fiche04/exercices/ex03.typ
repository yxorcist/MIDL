// source-confidence: high
// source-note: exercice 3 du sujet TD04_relations-ordres.pdf ; preuves manuscrites des questions 1 et 2 dans les photos 11078 et 11081.
// source-reconstruction: la preuve de la question 3, absente des photographies, découle de la divisibilité simultanée par 2 et par 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 3 — Relations d'équivalence sur $NN$

On rappelle qu'une relation est une relation d'équivalence lorsqu'elle est *réflexive*, *symétrique* et *transitive*.

== 1. $x-y$ est divisible par $3$

On définit

$
x R_1 y quad <=> quad 3 divides (x-y).
$

*Réflexivité.* Pour tout $x in NN$,

$
x-x=0=3 dot 0.
$

Donc $x R_1 x$.

*Symétrie.* Si $x R_1 y$, il existe $k in ZZ$ tel que $x-y=3k$. Alors

$
y-x=-3k=3(-k).
$

Donc $y R_1 x$.

*Transitivité.* Si $x R_1 y$ et $y R_1 z$, il existe $k,h in ZZ$ tels que

$
x-y=3k,
quad y-z=3h.
$

En additionnant,

$
x-z=3(k+h).
$

Donc $x R_1 z$.

Ainsi *$R_1$ est une relation d'équivalence*. Elle correspond à la congruence modulo $3$, avec trois classes de restes $0$, $1$ et $2$.

== 2. $x+y$ est divisible par $3$

On définit

$
x R_2 y quad <=> quad 3 divides (x+y).
$

*La relation n'est pas réflexive.* Pour $x=1$,

$
x+x=2
$

n'est pas divisible par $3$. Donc $(1,1)$ n'appartient pas à $R_2$.

Ainsi *$R_2$ n'est pas une relation d'équivalence*. Il suffit d'une seule propriété qui échoue pour conclure.

== 3. $x-y$ divisible par $2$ et par $3$

On définit

$
x R_3 y
quad <=> quad
2 divides (x-y) " et " 3 divides (x-y).
$

Comme $2$ et $3$ sont premiers entre eux,

$
x R_3 y quad <=> quad 6 divides (x-y).
$

C'est donc exactement la congruence modulo $6$.

*Réflexivité.* $6$ divise $x-x=0$.

*Symétrie.* Si $x-y=6k$, alors $y-x=-6k=6(-k)$.

*Transitivité.* Si $x-y=6k$ et $y-z=6h$, alors $x-z=6(k+h)$.

Ainsi *$R_3$ est une relation d'équivalence*. Ses classes sont les six classes de restes modulo $6$.

== Bilan

#table(
  columns: (3fr,1.4fr,2.6fr),
  inset: 5pt,
  [*Définition*], [*Équivalence ?*], [*Justification*],
  [$3 divides (x-y)$], [Oui], [Congruence modulo $3$],
  [$3 divides (x+y)$], [Non], [Pas réflexive : $x=1$],
  [$2 divides (x-y)$ et $3 divides (x-y)$], [Oui], [Congruence modulo $6$],
)
