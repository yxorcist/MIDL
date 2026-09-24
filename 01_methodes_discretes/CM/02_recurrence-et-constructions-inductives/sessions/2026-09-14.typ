#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 14/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Construction inductive et arbres binaires]
]
#line(length: 100%)
#v(0.7em)

= Construction inductive et récurrence

== Rappel : induction sur $NN$

Soit $P$ un prédicat sur $NN$. Pour montrer

$
forall x in NN, P(x),
$

on utilise une preuve par récurrence avec deux étapes.

#table(
  columns: (auto, 1fr),
  inset: 7pt,
  stroke: 0.5pt,
  [*Base*], [$P(0)$],
  [*Hérédité*], [$P(n) => P(n + 1)$],
)

L'idée est que la propriété vraie au rang $0$ se transmet successivement aux rangs
$1, 2, ..., n, ...$.

== Pourquoi la preuve par récurrence est correcte

Supposons par l'absurde qu'il existe $x in NN$ tel que $P(x)$ soit fausse.

Posons

$
Y = {n in NN | P(n) " est fausse"}.
$

Comme $Y$ est non vide, il possède un plus petit élément, noté $n_0$.

- $P(n_0)$ est fausse par définition de $Y$.
- On a $n_0 != 0$, car la base affirme que $P(0)$ est vraie.
- Donc $n_0 - 1 in NN$.
- Par minimalité de $n_0$, $P(n_0 - 1)$ est vraie.
- Par hérédité,

  $
  P(n_0 - 1) => P(n_0),
  $

  donc $P(n_0)$ est vraie.

On obtient une contradiction. Il n'existe donc aucun entier naturel pour lequel
$P$ est fausse.

== $NN$ comme ensemble défini inductivement

Les notes présentent $NN$ comme le plus petit ensemble satisfaisant :

- *Base* : $0 in NN$ ;
- *Règle d'hérédité* $R_1$ : si $n in NN$, alors $n + 1 in NN$.

Ainsi,

$
NN = {0, 1, 2, 3, dots}.
$

Le point important est la notion de *plus petit ensemble* vérifiant la base et
la règle de construction.

= Définition inductive d'un ensemble

L'objectif est de définir un sous-ensemble $X$ d'un ensemble ambiant $E$ sans
énumérer directement tous ses éléments.

Une définition inductive comporte :

- un sous-ensemble non vide $B$ de $E$, appelé *base* ou *initialisation* ;
- un ensemble de règles de construction $R_i$ appliquées à des éléments déjà
  construits ;
- la condition que $X$ soit le *plus petit ensemble* contenant la base et stable
  par toutes les règles.

Si une règle $R_i$ prend $m_i$ arguments, elle peut être vue comme une fonction

$
r_i : E^(m_i) -> E.
$

== Exemple : les entiers pairs

On prend comme ensemble ambiant $E = NN$ et on cherche l'ensemble $N_p$ des
entiers pairs.

- Base : $0 in N_p$.
- Règle : si $n in N_p$, alors $n + 2 in N_p$.

On obtient le plus petit sous-ensemble de $NN$ satisfaisant ces deux conditions.

== Exemple dans $ZZ^2$

Les notes donnent un exemple d'un sous-ensemble $X$ de $ZZ^2$ défini à partir de
la base

$
B = {(0, 0), (-1, 1)}.
$

Une première règle est lisible explicitement :

$
(x, y) in X => (x - 1, y + 1) in X.
$

Une deuxième règle $R_2$ est également présente dans les notes et est décrite
comme une application de $ZZ^2$ dans $ZZ^2$, mais sa formule manuscrite n'est pas
suffisamment lisible pour être reconstruite sans risque d'erreur.

== Exemple : fermeture par addition

On cherche un sous-ensemble $X subset.eq NN$ tel que

$
B = {1, 2} subset.eq X
$

et tel que la règle binaire suivante soit satisfaite :

$
x in X, y in X => x + y in X.
$

La règle correspond à une application

$
r_1 : NN^2 -> NN.
$

Le plus petit ensemble obtenu est

$
X = {1, 2, 3, 4, 5, dots}.
$

= Théorème du plus petit ensemble engendré

#theorem[
  À une définition inductive correspond un plus petit sous-ensemble $X$ de $E$
  qui satisfait la base et toutes les règles de construction.
]

Plus précisément, $X$ doit vérifier :

- *(B)* $B subset.eq X$ ;
- *(I)* pour chaque règle $r_i$ d'arité $m_i$ et pour tous
  $x_1, ..., x_(m_i) in X$,

  $
  r_i(x_1, ..., x_(m_i)) in X.
  $

== Preuve par intersection

Soit $cal(F)$ l'ensemble des sous-ensembles de $E$ qui satisfont les conditions
*(B)* et *(I)*.

La famille $cal(F)$ n'est pas vide : l'ensemble ambiant $E$ lui-même satisfait
les conditions de la définition.

Posons

$
X = inter_(Y in cal(F)) Y.
$

=== Vérification de la base

Pour tout $Y in cal(F)$, on a

$
B subset.eq Y.
$

Par conséquent,

$
B subset.eq inter_(Y in cal(F)) Y = X.
$

Donc $X$ satisfait *(B)*.

=== Vérification des règles

Soit une règle $r_i$ d'arité $m_i$ et soient

$
x_1, ..., x_(m_i) in X.
$

Comme $X$ est l'intersection de tous les $Y in cal(F)$, on a

$
x_1, ..., x_(m_i) in Y
$

pour tout $Y in cal(F)$.

Chaque $Y$ étant stable par les règles,

$
r_i(x_1, ..., x_(m_i)) in Y
$

pour tout $Y in cal(F)$. Ainsi,

$
r_i(x_1, ..., x_(m_i)) in inter_(Y in cal(F)) Y = X.
$

Donc $X$ satisfait *(I)*.

Enfin, par construction, $X$ est contenu dans tout sous-ensemble de $E$ qui
satisfait *(B)* et *(I)*. C'est donc le plus petit de ces ensembles.

= Exemple : expressions arithmétiques

Les notes introduisent un alphabet d'expressions

$
Sigma_(exp) = {0, 1, dots, 9, +, -, *, /, (, )}.
$

On considère ensuite l'ensemble $N$ des entiers non nuls écrits en base $10$.
Il est lui-même décrit inductivement.

- Base : tout chiffre $a in {1, 2, dots, 9}$ appartient à $N$.
- Règle : si $s in N$ et $a in {0, 1, dots, 9}$, alors le mot obtenu en
  concaténant $s$ puis $a$ appartient à $N$.

On obtient

$
N = {1, 2, dots, 9, 10, 11, 12, dots}.
$

== Définition inductive de $"Arith"$

L'ensemble $"Arith"$ des expressions arithmétiques contient comme cas de base :

- $0$ ;
- les entiers de $N$.

Autrement dit,

$
N union {0} subset.eq "Arith".
$

Puis, si $g, d in "Arith"$, alors les expressions construites avec les quatre
opérations appartiennent encore à $"Arith"$ :

$
(g + d), quad (g * d), quad (g / d), quad (g - d) in "Arith".
$

== Arbre syntaxique d'une expression

Le tableau donne l'exemple

$
E = ((2 + 5) * (3 + 8)) in "Arith".
$

La structure de construction de $E$ peut être représentée par l'arbre suivant :

#align(center)[
  #raw("        *\n       / \\\n      +   +\n     / \\ / \\\n    2  5 3  8", block: true)
]

La racine correspond à l'opération construite en dernier. Les sous-arbres gauche
et droit correspondent aux deux sous-expressions utilisées par cette opération.

= Arbres binaires étiquetés

Les photographies du tableau complètent les notes manuscrites avec la construction
inductive des arbres binaires étiquetés.

On note $"AB"$ l'ensemble des arbres binaires étiquetés. Le tableau introduit un
ensemble d'étiquettes $A subset.eq Sigma^*$.

== Vocabulaire

Un arbre binaire comporte notamment :

- une *racine* ;
- des *nœuds internes* ;
- des *feuilles*.

#align(center)[
  #raw("        racine\n          a\n         / \\\n        b   c\n       / \\   \\\n      □   □   □", block: true)
]

== Définition inductive

La construction notée au tableau est :

- *(B)* l'arbre vide appartient à $"AB"$ :

  $
  ∅ in "AB" ;
  $

- *(I)* si $g, d in "AB"$ et si $a in A$, alors

  $
  (g, a, d) in "AB".
  $

Le triplet $(g, a, d)$ représente un arbre dont :

- $g$ est le sous-arbre gauche ;
- $a$ est l'étiquette de la racine ;
- $d$ est le sous-arbre droit.

En particulier, une feuille étiquetée $a$ peut être représentée par

$
(∅, a, ∅).
$

Cette écriture permet de représenter récursivement tout arbre binaire étiqueté.

== Arbres binaires complets

Le tableau définit un *arbre binaire complet* comme un arbre binaire dont toutes
les feuilles sont à la même hauteur.

On note $"ABC" subset.eq "AB"$ l'ensemble de ces arbres.

La hauteur $h(t)$ d'un arbre $t$ est indiquée comme le nombre d'arêtes du plus
long chemin allant de la racine à une feuille.

La caractérisation inductive visible au tableau est :

- l'arbre vide appartient à $"ABC"$ ;
- si $g, d in "ABC"$, si $h(g) = h(d)$ et si $a in A$, alors

  $
  (g, a, d) in "ABC".
  $

La condition $h(g) = h(d)$ force les deux sous-arbres construits sous une même
racine à avoir la même hauteur, ce qui conserve le caractère complet de l'arbre.
