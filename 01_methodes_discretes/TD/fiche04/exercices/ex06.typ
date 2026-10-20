// source-confidence: high
// source-note: sujet TD04_relations-ordres.pdf, exercice 6 (trois ensembles ordonnés).
// source-note: photographies 11290 et 11296 : définitions des bornes, graphe de divisibilité, exemple du treillis des parties, et remarque sur le bon fondement.
// source-reconstruction: dessins au propre et explicitation de certains exemples ; le raisonnement général provenait déjà d'une correction construite à partir de l'énoncé.
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

Un ordre strict est *bien fondé* si *toute partie non vide* possède un élément minimal. Le fait que l'ensemble entier possède un élément minimal ne suffit pas, en général, pour que l'ordre soit bien fondé.

== 1. $(NN, divides)$ — Divisibilité

On utilise ici la convention $NN=\{0,1,2,dots\}$ et $a divides b$ lorsqu'il existe $k in NN$ tel que $b=a k$.

Pour une partie non vide $S subset.eq NN$ :

- ses minorants sont les entiers qui divisent tous les éléments de $S$ : ses *diviseurs communs* ;
- ses majorants sont les entiers divisibles par tous les éléments de $S$ : ses *multiples communs*.

L'*infimum* au sens de l'ordre de divisibilité est le *PGCD* de $S$ (convention $gcd(0,0)=0$).

Pour une partie finie non vide, le *supremum* est le *PPCM* (avec $"ppcm"(a,0)=0$).

Pour une partie infinie, il peut ne pas exister de multiple commun strictement positif ; dans $NN$ contenant $0$, l'entier $0$ reste un majorant universel, et joue alors le rôle de supremum.

=== Extrémités de l'ensemble

- $1$ divise tout élément de $NN$ : *$1$ est le minimum* et le seul élément minimal.
- Tout entier divise $0$ : *$0$ est le maximum* et le seul élément maximal.

*Attention à la convention.* Si le cours utilise $NN^*=\{1,2,dots\}$ au lieu de $NN$ avec $0$, alors le minimum est toujours $1$, mais l'ensemble entier n'a aucun élément maximal et les sous-ensembles sans PPCM positif peuvent ne pas avoir de supremum.

=== Ordre bien fondé ?

Oui. Si $S$ est une partie non vide de $NN$ et contient un entier strictement positif, son plus petit entier positif $m$ ne peut avoir, *dans $S$*, aucun diviseur strictement plus petit : $m$ est minimal. Si $S=\{0\}$, alors $0$ est minimal.

Ainsi toute partie non vide admet un élément minimal pour la divisibilité.


=== Exemple manuscrit — Diagramme de Hasse fini

La copie illustre la divisibilité avec les entiers $0,1,2,3,4,5,6,7,8$. On dessine les seules relations de *couverture*, en supprimant les flèches transitives et les boucles :

#align(center)[
  #image("../figures/ex06-divisibilite-hasse.svg", width: 92%)
]

Dans ce graphe, le plus petit élément est $1$ (il divise tous les autres), et le plus grand élément est $0$ (tous les entiers divisent $0$).

Par exemple, $2$ divise $4$, et $4$ divise $8$ : il est inutile de dessiner une arête directe entre $2$ et $8$ dans le diagramme de Hasse.

*Précision sur la photographie :* une annotation manuscrite évoque aussi un ensemble fini ne contenant que $1$ à $8$, alors que le diagramme comporte $0$ au sommet. La figure ci-dessus représente explicitement la variante avec $0$ ; sans $0$, les éléments $5$, $6$, $7$ et $8$ seraient maximaux et il n'existerait pas de maximum global.

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


=== Exemple manuscrit — $cal(P)(\{1,2,3\})$

Prenons $E=\{1,2,3\}$. L'ensemble de ses parties contient exactement les huit ensembles suivants :

$
cal(P)(E)=\{emptyset,\{1\},\{2\},\{3\},\{1,2\},\{1,3\},\{2,3\},\{1,2,3\}\}.
$

La relation d'ordre est l'inclusion, représentée par le diagramme de Hasse ci-dessous :

#align(center)[
  #image("../figures/ex06-ensemble-parties-hasse.svg", width: 90%)
]

Pour illustrer la borne supérieure et la borne inférieure, considérons la *famille de deux parties*

$
cal(B)=\{\{1,2\},\{2,3\}\} subset.eq cal(P)(E).
$

Un minorant doit être inclus dans les deux parties. On a donc comme minorants exactement $emptyset$ et $\{2\}$, et

$
inf cal(B)=\{1,2\} inter \{2,3\}=\{2\}.
$

Un majorant doit contenir les deux parties ; ici le seul majorant dans $cal(P)(E)$ est $\{1,2,3\}$. Par conséquent,

$
sup cal(B)=\{1,2\} union \{2,3\}=\{1,2,3\}.
$

Cet exemple explique la lecture géométrique des bornes sur le diagramme : le *plus bas ancêtre commun* fournit le supremum, et le *plus haut descendant commun* fournit l'infimum.

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

*Provenance.* La solution générale était déjà rédigée à partir du sujet TD04. Les photos 11290 et 11296 apportent les définitions, les deux exemples et les graphes ; les diagrammes ont été redessinés et la notion de bon fondement clarifiée.
