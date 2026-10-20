// source-confidence: high
// source-note: sujet TD04_relations-ordres.pdf, exercice 6 (trois ensembles ordonnés).
// source-note: photos 11290 et 11296 : définitions des majorants/minorants/minimaux/maximaux, divisibilité, diagramme de Hasse de P({1,2,3}), bornes par union/intersection et non-bon-fondement de (R,<=).
// source-reconstruction: les exemples détaillés ci-dessous et les distinctions logiques sont explicités à partir du sujet ; ils ne sont pas tous recopiés des photographies.
// source-note: on explicite la convention NN={0,1,2,...} car la présence de 0 change les éléments maximaux de (NN, divisibilité).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 6 — Bornes et ordres bien fondés

== Rappels

Dans un ensemble ordonné $(E,prec.eq)$, pour une partie $S subset.eq E$ :

- $m$ est un *minorant* si $m prec.eq s$ pour tout $s in S$ ;
- $M$ est un *majorant* si $s prec.eq M$ pour tout $s in S$ ;
- $inf S$ est le plus grand des minorants lorsqu'il existe ;
- $sup S$ est le plus petit des majorants lorsqu'il existe.

Un *élément minimal de tout $E$* n'a aucun autre élément strictement plus petit que lui. Un *minimum* est plus fort : il est inférieur ou égal à *tous* les éléments. Même distinction pour maximal et maximum.

Un ordre strict est *bien fondé* si *toute partie non vide* possède un élément minimal. L'existence d'un élément minimal pour l'ensemble entier ne suffit pas en général : elle doit valoir aussi pour chaque partie non vide.

== 1. $(NN, divides)$ — Divisibilité

On utilise ici la convention $NN=\{0,1,2,dots\}$ et $a divides b$ lorsqu'il existe $k in NN$ tel que $b=a k$.

Pour une partie non vide $S subset.eq NN$ :

- ses minorants sont les entiers qui divisent tous les éléments de $S$ : ses *diviseurs communs* ;
- ses majorants sont les entiers divisibles par tous les éléments de $S$ : ses *multiples communs*.

L'*infimum* au sens de l'ordre de divisibilité est le *PGCD* de $S$ (convention $gcd(0,0)=0$).

Pour une partie finie non vide, le *supremum* est le *PPCM* (avec $"ppcm"(a,0)=0$).

Pour une partie infinie, il peut ne pas exister de multiple commun strictement positif ; dans $NN$ contenant $0$, l'entier $0$ reste un majorant universel, et joue alors le rôle de supremum.

=== Exemple de calcul : diviseurs et multiples communs

Pour $S=\{2,3,6\}$, les diviseurs communs sont $\{1\}$, donc

$
inf S="pgcd"(2,3,6)=1.
$

Les multiples communs incluent $6,12,18,dots$ et $0$, et

$
sup S="ppcm"(2,3,6)=6.
$

*Attention à la distinction entre les notions :* dans la partie $S$ elle-même, $2$ et $3$ sont deux éléments *minimaux* incomparables ; elle n'a pas de minimum. L'élément $6$ est à la fois maximal et maximum de $S$.

La photographie représente aussi une portion finie du graphe de la divisibilité. Un diagramme de Hasse construit sur $\{0,1,2,dots,8\}$ ne doit pas être confondu avec le diagramme de Hasse de *tout* $NN$, qui est infini.

#align(center)[
  #image("../figures/ex06-divisibilite-hasse.svg", width: 90%)
]

Dans cet exemple fini, $1$ est le minimum et $0$ le maximum. Le diagramme omet les boucles et les relations déductibles par transitivité : par exemple $2 divides 8$, mais on ne trace pas directement de liaison entre $2$ et $8$, car $2 divides 4$ et $4 divides 8$.

La feuille manuscrite juxtapose un ensemble fini de $1$ à $8$ et un dessin contenant $0$ au sommet. Le dessin reproduit ici est donc explicitement celui de $S=\{0,1,2,dots,8\}$ ; sans $0$, il n'y aurait pas de maximum et les éléments $5,6,7,8$ seraient maximaux.


=== Extrémités de l'ensemble

- $1$ divise tout élément de $NN$ : *$1$ est le minimum* et le seul élément minimal.
- Tout entier divise $0$ : *$0$ est le maximum* et le seul élément maximal.

*Attention à la convention.* Si le cours utilise $NN^*=\{1,2,dots\}$ au lieu de $NN$ avec $0$, alors le minimum est toujours $1$, mais l'ensemble entier n'a aucun élément maximal et les sous-ensembles sans PPCM positif peuvent ne pas avoir de supremum.

=== Ordre bien fondé ?

Oui. Si $S$ est une partie non vide de $NN$ et contient un entier strictement positif, son plus petit entier positif $m$ ne peut avoir, *dans $S$*, aucun diviseur strictement plus petit : $m$ est minimal. Si $S=\{0\}$, alors $0$ est minimal.

Ainsi toute partie non vide admet un élément minimal pour la divisibilité.

== 2. $(cal(P)(E), subset.eq)$ avec $E$ fini

Soit $S$ une famille de sous-ensembles de $E$.

- Les minorants de $S$ sont les ensembles inclus dans chaque membre de $S$.
- Les majorants de $S$ sont les ensembles contenant chaque membre de $S$.
- On a

  $
  inf S=inter.big_(X in S) X,
  quad
  sup S=union.big_(X in S) X.
  $

Pour la famille vide, on adopte les conventions usuelles $inter.big emptyset=E$ et $union.big emptyset=emptyset$.

=== Exemple : diagramme de Hasse de $cal(P)(\{1,2,3\})$

Soit $E=\{1,2,3\}$. Son ensemble des parties contient exactement huit éléments :

$
cal(P)(E)=\{
emptyset,\{1\},\{2\},\{3\},
\{1,2\},\{1,3\},\{2,3\},\{1,2,3\}
\}.
$

Dans le diagramme de Hasse, un trait relie deux ensembles lorsque l'un s'obtient en ajoutant *un seul élément* à l'autre. On ne trace pas les liens déjà déduits par transitivité.

#align(center)[
  #image("../figures/ex06-hasse-powerset.svg", width: 87%)
]

Par exemple, considérons la famille

$
S=\{\{1,2\},\{2,3\}\} subset.eq cal(P)(E).
$

On calcule

$
inf S=\{1,2\} inter \{2,3\}=\{2\}
$

et

$
sup S=\{1,2\} union \{2,3\}=\{1,2,3\}.
$

Les éléments $\{1,2\}$ et $\{2,3\}$ sont *incomparables* par inclusion. Chacun est minimal et maximal *dans $S$*, mais $S$ n'a ni minimum ni maximum.

En revanche, l'infimum et le supremum existent dans l'ensemble ordonné ambiant $cal(P)(E)$, même s'ils n'appartiennent pas à $S$.

=== Extrémités de tout $cal(P)(E)$

$
min(cal(P)(E))=emptyset,
quad
max(cal(P)(E))=E.
$

Ce sont les uniques éléments respectivement minimal et maximal.

=== Ordre bien fondé ?

Oui, car $E$ est fini et donc $cal(P)(E)$ est fini. Toute famille non vide de parties de $E$ possède au moins un élément minimal pour l'inclusion.

Autre méthode : choisir dans la famille une partie de *cardinal minimal*. Une partie strictement incluse aurait une cardinalité strictement plus petite, ce qui est impossible.

== 3. $(RR,<=)$ — Ordre usuel

Pour $S subset.eq RR$ :

- les minorants sont les réels $m$ tels que $m<=s$ pour tout $s in S$ ;
- les majorants sont les réels $M$ tels que $s<=M$ pour tout $s in S$ ;
- si $S$ est non vide et minorée, $inf S$ existe dans $RR$ ;
- si $S$ est non vide et majorée, $sup S$ existe dans $RR$.

Une partie non bornée n'a pas de borne finie correspondante. Par exemple, pour $S=]0,1[$,

$
inf S=0,
quad
sup S=1,
$

mais ni $0$ ni $1$ n'appartiennent à $S$.

=== Extrémités de tout $RR$

L'ensemble $RR$ n'a *ni minimum ni maximum*, et donc aucun élément minimal ou maximal dans cet ordre total.

=== Ordre bien fondé ?

Non : la partie $]0,1[$ est non vide mais ne possède pas de plus petit élément.

== Conclusion

#table(
  columns: (2fr,2.1fr,2.1fr,1.4fr),
  inset: 5pt,
  [*Ordre*], [*Minimum global*], [*Maximum global*], [*Bien fondé ?*],
  [$(NN, divides)$ avec $0$], [$1$], [$0$], [Oui],
  [$(cal(P)(E), subset.eq)$, $E$ fini], [$emptyset$], [$E$], [Oui],
  [$(RR,<=)$], [Aucun], [Aucun], [Non],
)

*Statut.* L'énoncé et les nouvelles photos confirment les notions de minorant, majorant, bornes, bien-fondement et le diagramme de Hasse sur trois éléments. Les exemples numériques détaillés et les précisions de méthode sont reconstruits et clairement distingués des notes photographiées.
