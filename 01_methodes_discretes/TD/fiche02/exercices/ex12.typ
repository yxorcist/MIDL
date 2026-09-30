// source-confidence: high
// source-note: statement and numbering cross-checked against the official TD02 sheet; handwritten correction supplied for question 1 and for the definition of s(T) in question 3.
// source-uncertainty: no handwritten correction is visible here for question 2, for the definitions of f(T) and h(T), or for question 4.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 12 — Arbres binaires étiquetés

On considère la construction inductive des arbres binaires étiquetés sur

$
Sigma=\{a,b\}.
$

*Base.*

$
emptyset in "AB".
$

*Règle d'induction.*

Si

$
T_1,T_2 in "AB"
$

et

$
x in Sigma,
$

alors

$
(T_1,x,T_2) in "AB".
$

Ainsi,

$
(emptyset,x,emptyset)
$

est un arbre réduit à un seul noeud étiqueté $x$.

Plus généralement,

$
(T_1,x,T_2)
$

désigne l'arbre de racine étiquetée $x$, de sous-arbre gauche $T_1$ et de sous-arbre droit $T_2$.

== Question 1 — Arbres à un, deux et trois noeuds

La correction représente d'abord l'arbre vide

$
emptyset.
$

Un arbre à un noeud est de la forme

$
(emptyset,x,emptyset).
$

Un arbre à deux noeuds s'obtient en plaçant un arbre à un noeud à gauche ou à droite de la racine.

Pour trois noeuds, les notes dessinent les différentes formes obtenues en ajoutant un noeud à un arbre à deux noeuds, ainsi que le cas où les deux sous-arbres de la racine sont non vides.

Les étiquettes appartiennent à

$
Sigma=\{a,b\}.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Schémas.* Les dessins manuscrits sont décrits ici textuellement afin de ne pas reconstruire approximativement leur géométrie.
]

== Question 2

Pour un arbre non vide $T$, montrer que le nombre de noeuds de la forme

$
(T_1,x,T_2)
$

avec

$
T_1 != emptyset
quad "et" quad
T_2 != emptyset
$

est égal au nombre de feuilles de la forme

$
(emptyset,x,emptyset)
$

moins $1$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* Aucune preuve lisible de cette question n'apparaît dans les photographies transmises.
]

== Question 3 — Fonctions définies inductivement

=== Nombre de noeuds $s(T)$

On définit

$
s(T)
$

comme le nombre de noeuds de $T$.

*Base.*

Si

$
T=emptyset,
$

alors

$
s(T)=0.
$

*Règle d'induction.*

Si

$
T=(T_1,x,T_2),
$

alors

$
s(T)
=
s(T_1)+s(T_2)+1.
$

=== Nombre de feuilles

La fiche officielle demande également une définition inductive du nombre de feuilles de $T$.

=== Hauteur

La fiche officielle demande enfin une définition inductive de la hauteur de $T$, définie comme la longueur, comptée en nombre de noeuds, du plus long chemin de la racine à une feuille.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Corrections non fournies.* Les deux définitions manuscrites correspondantes ne sont pas visibles dans les photographies transmises.
]

== Question 4

Montrer que

$
s(T) <= 2^(h(T))-1.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* La preuve de cette question n'apparaît pas dans les photographies transmises.
]
