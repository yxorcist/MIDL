#import "../style.typ": *

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
