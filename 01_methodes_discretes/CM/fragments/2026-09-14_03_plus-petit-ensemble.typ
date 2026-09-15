#import "../style.typ": *

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
