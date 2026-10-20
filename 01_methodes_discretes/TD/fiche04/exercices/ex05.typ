// source-confidence: high
// source-note: exercice 5 du sujet TD04_relations-ordres.pdf ; photos 11081, 11284, 11286 et 11288 : preuve des trois propriétés de l'intersection et contre-exemple graphique à l'union.
// source-reconstruction: les partitions et le contre-exemple sont explicites dans la dernière série de photos ; la remarque sur le cas où R est inclus dans S est un complément pédagogique.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 5 — Intersection et union de relations d'équivalence

Soient $R$ et $S$ deux relations d'équivalence sur le même ensemble $E$.

== 1. $R inter S$ est une relation d'équivalence

*Réflexivité.* Pour tout $x in E$, $x R x$ et $x S x$. Donc $(x,x) in R inter S$.

*Symétrie.* Si $(x,y) in R inter S$, alors $x R y$ et $x S y$. Comme $R$ et $S$ sont symétriques, $y R x$ et $y S x$. Donc $(y,x) in R inter S$.

*Transitivité.* Si $(x,y)$ et $(y,z)$ appartiennent à $R inter S$, alors

$
x R y, quad y R z, quad x S y, quad y S z.
$

La transitivité de $R$ donne $x R z$, celle de $S$ donne $x S z$. Ainsi $(x,z) in R inter S$.

Les trois propriétés sont vraies. *L'intersection de deux relations d'équivalence est donc encore une relation d'équivalence.*

== 2. $R union S$ n'est pas toujours une relation d'équivalence

L'union est réflexive et symétrique, car chacun des deux ensembles de couples possède ces propriétés.

En revanche, *elle peut ne pas être transitive*.

=== Contre-exemple

On prend $E=\{1,2,3\}$.

Soit $R$ l'équivalence associée à la partition

$
\{\{1,2\},\{3\}\},
$

et soit $S$ l'équivalence associée à la partition

$
\{\{1\},\{2,3\}\}.
$

Les deux relations correspondent précisément aux graphes de la correction manuscrite :

$
R=\{(1,1),(2,2),(3,3),(1,2),(2,1)\},
$

$
S=\{(1,1),(2,2),(3,3),(2,3),(3,2)\}.
$

L'union contient les sept couples de ces deux listes, sans les couples $(1,3)$ et $(3,1)$.

Alors

- $(1,2) in R$, donc $(1,2) in R union S$ ;
- $(2,3) in S$, donc $(2,3) in R union S$ ;
- mais $(1,3)$ n'appartient ni à $R$ ni à $S$.

La transitivité échoue : $(1,3) in.not R union S$.

Donc *l'union n'est pas nécessairement une relation d'équivalence*.

Une hypothèse suffisante pour que l'union soit une équivalence est par exemple $R subset.eq S$ ou $S subset.eq R$, auquel cas l'union est simplement la plus grande des deux relations.
