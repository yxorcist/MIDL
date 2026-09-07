#set page(
  paper: "a4",
  margin: 2cm,
)

#set text(
  lang: "fr",
  size: 11pt,
)

#set heading(numbering: "1.")

#let definition(body) = block(
  width: 100%,
  inset: 10pt,
  stroke: 0.6pt,
  radius: 4pt,
  body,
)

#let theorem(body) = block(
  width: 100%,
  inset: 10pt,
  stroke: 0.6pt,
  radius: 4pt,
  body,
)

= Méthodes discrètes logiques
Séance du 07/09/2026

== Panorama du cours

Le cours porte notamment sur :

- la logique propositionnelle ;
- les preuves mathématiques ;
- les constructions inductives et les ensembles infinis ;
- les ensembles ;
- les relations, notamment les relations d'équivalence et d'ordre ;
- les fonctions ;
- les ensembles dénombrables.

== Ensembles et constructions inductives

Un ensemble peut être décrit de deux manières principales :

- *implicitement*, par une propriété ;
- *explicitement*, en énumérant ses éléments.

Par exemple :

$ A = {x in ZZ | x " est pair"} $

ou :

$ A = {2, 4, 8} $

#definition[
  *Définition — Construction inductive.*

  Une définition inductive comporte généralement :

  - une *base* ;
  - une *règle de construction* permettant d'obtenir de nouveaux éléments
    à partir d'éléments déjà construits.
]

Exemple : pour construire les entiers naturels, on peut partir de $0$ puis
imposer la règle :

$ n in NN => n + 1 in NN $

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

== Implication et raisonnement

#theorem[
  *Théorème — Modus ponens.*

  Si $P$ est vraie et $P => Q$ est vraie, alors $Q$ est vraie.
]

À partir de l'implication

$ P => Q $

on distingue :

- sa *réciproque* : $Q => P$ ;
- sa *contraposée* : $not Q => not P$.

Une implication est logiquement équivalente à sa contraposée :

$ (P => Q) <=> (not Q => not P) $

En revanche, elle n'est pas en général équivalente à sa réciproque.

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

== Vocabulaire des résultats mathématiques

- *Théorème* : résultat mathématique important démontré.
- *Lemme* : résultat intermédiaire utilisé pour démontrer un autre résultat.
- *Corollaire* : conséquence relativement directe d'un théorème.
- *Conjecture* : proposition supposée vraie mais non encore démontrée.

== Exemple : chip-firing étiqueté

On considère des jetons étiquetés placés sur les positions entières d'une
droite discrète.

Lorsque deux jetons d'étiquettes $a$ et $b$, avec $a < b$, occupent la même
position $i$, une opération de *firing* consiste à déplacer :

- le jeton $a$ vers $i - 1$ ;
- le jeton $b$ vers $i + 1$.

Schématiquement :

$
(a, b) " en position " i
quad arrow.r
quad
a " en " i - 1
quad "et"
quad
b " en " i + 1
$

Cette opération sépare les jetons selon leur ordre d'étiquette.

#block(
  width: 100%,
  inset: 10pt,
  stroke: 0.6pt,
  radius: 4pt,
)[
  *À confirmer.*

  L'énoncé exact du théorème concernant la configuration de $2m$ jetons
  n'était pas suffisamment lisible sur les notes pour être retranscrit
  sans risque d'erreur.
]

== Points à retenir

- Une proposition possède une valeur de vérité.
- Les connecteurs logiques permettent de construire de nouvelles propositions.
- $P => Q$ est équivalente à sa contraposée.
- $P => Q$ n'est pas nécessairement équivalente à sa réciproque.
- Les prédicats deviennent des propositions lorsque leurs variables sont fixées.
- La négation échange les quantificateurs $forall$ et $exists$.
- Une définition inductive repose sur une base et une règle de construction.
