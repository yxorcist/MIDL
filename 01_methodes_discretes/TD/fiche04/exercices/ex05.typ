// source-confidence: high
// source-note: exercice 5 du sujet TD04_relations-ordres.pdf ; photo manuscrite 11081 contient la preuve que R intersection S est réflexive et symétrique.
// source-reconstruction: transitivité de l'intersection et contre-exemple pour l'union sont des compléments déduits de l'énoncé.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 5 — Intersection et union de relations d'équivalence

Soient $R$ et $S$ deux relations d'équivalence sur le même ensemble $E$.

== 1. $R intersection S$ est une relation d'équivalence

*Réflexivité.* Pour tout $x in E$, $xRx$ et $xSx$. Donc $(x,x) in R intersection S$.

*Symétrie.* Si $(x,y) in R intersection S$, alors $xRy$ et $xSy$. Comme $R$ et $S$ sont symétriques, $yRx$ et $ySx$. Donc $(y,x) in R intersection S$.

*Transitivité.* Si $(x,y)$ et $(y,z)$ appartiennent à $R intersection S$, alors

$
xRy, quad yRz, quad xSy, quad ySz.
$

La transitivité de $R$ donne $xRz$, celle de $S$ donne $xSz$. Ainsi $(x,z) in R intersection S$.

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

Alors

- $(1,2) in R$, donc $(1,2) in R union S$ ;
- $(2,3) in S$, donc $(2,3) in R union S$ ;
- mais $(1,3)$ n'appartient ni à $R$ ni à $S$.

La transitivité échoue : $(1,3) notin R union S$.

Donc *l'union n'est pas nécessairement une relation d'équivalence*.

Une hypothèse suffisante pour que l'union soit une équivalence est par exemple $R subset.eq S$ ou $S subset.eq R$, auquel cas l'union est simplement la plus grande des deux relations.
