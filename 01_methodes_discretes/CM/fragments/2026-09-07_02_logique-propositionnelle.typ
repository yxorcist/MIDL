#import "../style.typ": *

== Logique propositionnelle

#definition[
  *Définition — Proposition.*

  Une proposition est un énoncé auquel on peut attribuer une valeur de vérité :
  *vrai* ou *faux*.
]

=== Connecteurs logiques

Pour deux propositions $P$ et $Q$ :

- négation : $not P$ ;
- conjonction : $P and Q$ ;
- disjonction : $P or Q$ ;
- implication : $P => Q$ ;
- équivalence : $P <=> Q$.

L'implication $P => Q$ est fausse uniquement lorsque $P$ est vraie et $Q$ est
fausse.

=== Table de vérité

#table(
  columns: 6,
  align: center,
  inset: 6pt,

  [*$P$*],
  [*$Q$*],
  [*$not P$*],
  [*$P and Q$*],
  [*$P or Q$*],
  [*$P => Q$*],

  [F], [F], [V], [F], [F], [V],
  [F], [V], [V], [F], [V], [V],
  [V], [F], [F], [F], [V], [F],
  [V], [V], [F], [V], [V], [V],
)

=== Tautologie, contradiction et équivalence logique

#definition[
  *Tautologie.*

  Une formule est une tautologie si elle est vraie pour toute attribution
  possible des valeurs de vérité.
]

#definition[
  *Contradiction.*

  Une formule est une contradiction si elle est fausse pour toute attribution
  possible des valeurs de vérité.
]

Deux formules $F$ et $G$ sont *logiquement équivalentes* lorsque

$ F <=> G $

est une tautologie.

