#import "../style.typ": *

== Prédicats et quantificateurs

#definition[
  *Définition — Prédicat.*

  Un prédicat $P(x)$ est une propriété dépendant d'une variable $x$.

  Une fois une valeur de $x$ fixée, $P(x)$ devient une proposition vraie
  ou fausse.
]

=== Quantificateur universel

Le symbole $forall$ signifie « pour tout ».

$ forall x in D, P(x) $

Cela signifie que $P(x)$ est vraie pour tout $x$ appartenant à $D$.

=== Quantificateur existentiel

Le symbole $exists$ signifie « il existe ».

$ exists x in D, P(x) $

Cela signifie qu'il existe au moins un $x$ appartenant à $D$ tel que $P(x)$
est vraie.

=== Négation des quantificateurs

$
not (forall x in D, P(x))
<=> exists x in D, not P(x)
$

et

$
not (exists x in D, P(x))
<=> forall x in D, not P(x)
$

Donc, pour nier une proposition quantifiée :

- on échange $forall$ et $exists$ ;
- on nie le prédicat.

