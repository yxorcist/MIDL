#import "../style.typ": *

= I. Le corps des nombres réels

On part d'une liste de propriétés des nombres réels que nous admettrons :

- $RR$ est un corps commutatif totalement ordonné ;
- $RR$ vérifie la propriété de la borne supérieure.

L'ensemble des nombres réels $RR$ est muni de deux lois :

- l'addition, notée $+$ ;
- la multiplication, notée $times$.

Ces lois vérifient les propriétés suivantes pour tous $x,y,z in RR$.

== Propriétés de l'addition

$
(x+y)+z = x+(y+z)
$

L'addition est associative.

$
x+y = y+x
$

L'addition est commutative.

$
0+x = x+0 = x
$

L'addition possède un élément neutre : $0$.

Pour tout réel $x$, il existe $-x in RR$ tel que

$
x + (-x) = 0.
$

Tout réel possède donc un opposé pour l'addition.

== Propriétés de la multiplication

$
(x times y) times z = x times (y times z)
$

La multiplication est associative.

$
x times y = y times x
$

La multiplication est commutative.

$
1 times x = x times 1 = x
$

La multiplication possède un élément neutre : $1$.

Si $x != 0$, alors il existe $1/x in RR$ tel que

$
x times 1/x = 1.
$

Tout réel non nul possède donc un inverse pour la multiplication.

#remark([
  L'ensemble des rationnels $QQ$ et l'ensemble des nombres complexes $CC$ sont des corps commutatifs.

  Les ensembles $ZZ$ et $NN$ ne sont pas des corps.
])

== Relation d'ordre sur $RR$

L'ensemble $RR$ est muni d'une relation $<=$ qui vérifie, pour tous $x,y,z in RR$ :

$
x <= x
$

(réflexivité),

$
(x <= y " et " y <= z) => x <= z
$

(transitivité),

$
(x <= y " et " y <= x) => x = y
$

(antisymétrie).

On dit que $<=$ est une relation d'ordre.

De plus, pour tous $x,y in RR$,

$
x <= y " ou " y <= x.
$

La relation d'ordre est totale ; on dit que $RR$ est totalement ordonné.

== Compatibilité de l'ordre avec les opérations

L'ordre $<=$ est compatible avec l'addition :

$
x <= y => x+z <= y+z.
$

De plus, pour tous réels $x,y$,

$
(0 <= x " et " 0 <= y) => 0 <= x times y.
$

On en déduit notamment, pour tous $x,y,z in RR$ :

$
(x <= y " et " 0 <= z) => x times z <= y times z,
$

et

$
(x <= y " et " z <= 0) => y times z <= x times z.
$
