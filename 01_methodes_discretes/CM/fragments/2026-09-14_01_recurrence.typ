#import "../style.typ": *

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
