#import "../style.typ": *

// ============================================================
// PAGES 4 ET 5
// ============================================================

== Sous-espaces vectoriels

=== Définition

Soit $E$ un $K$-espace vectoriel.

Une partie $F$ de $E$ est un *sous-espace vectoriel* de $E$ si :

1. $F ≠ ∅$ ;
2. $F$ est stable par addition ;
3. $F$ est stable par multiplication externe.

=== Le vecteur nul appartient à tout sous-espace vectoriel

Si $F$ est un sous-espace vectoriel de $E$, alors

$
0_E ∈ F.
$

*Démonstration.*

Comme $F ≠ ∅$, il existe $v ∈ F$.

La stabilité par multiplication externe donne

$
-v = (-1) v ∈ F.
$

Puis la stabilité par addition donne

$
0_E = v + (-v) ∈ F.
$

Ainsi, dans la définition d'un sous-espace vectoriel, la condition $F ≠ ∅$ peut être remplacée par la condition

$
0_E ∈ F.
$

=== Structure vectorielle induite

Si $F$ est un sous-espace vectoriel de $E$, alors $F$ est lui-même un $K$-espace vectoriel pour les opérations induites par celles de $E$.

=== Exemples

- $∅$ n'est pas un sous-espace vectoriel de $E$.
- ${0_E}$ est un sous-espace vectoriel de $E$.
- $E$ est un sous-espace vectoriel de lui-même.
- Si $v ∈ E$, alors
  $
  K v = { λ v ; λ ∈ K }
  $
  est un sous-espace vectoriel de $E$.

=== Critère pratique de sous-espace vectoriel

Soit $F ⊆ E$.

Alors $F$ est un sous-espace vectoriel de $E$ si et seulement si :

1. $F ≠ ∅$ ;

2. pour tout $λ ∈ K$ et tous $u, v ∈ F$,
   $
   λ u + v ∈ F.
   $

La première condition peut aussi être remplacée par $0_E ∈ F$.

==== Démonstration : sens direct $⇒$

Supposons que $F$ soit un sous-espace vectoriel de $E$.

On a déjà $F ≠ ∅$.

Soient $λ ∈ K$ et $u, v ∈ F$.

Comme $F$ est stable par multiplication externe,

$
λ u ∈ F.
$

Comme $F$ est stable par addition,

$
λ u + v ∈ F.
$

La deuxième condition est donc vérifiée.

==== Démonstration : sens réciproque $⇐$

Supposons maintenant que :

- $F ≠ ∅$ ;
- pour tout $λ ∈ K$ et tous $u, v ∈ F$, on a $λ u + v ∈ F$.

*Stabilité par addition.*

Soient $u, v ∈ F$. En prenant $λ = 1$,

$
u + v = 1 u + v ∈ F.
$

Donc $F$ est stable par addition.

*Présence du vecteur nul.*

Comme $F ≠ ∅$, choisissons $v ∈ F$.

En prenant $λ = -1$ et $u = v$,

$
0_E = (-1) v + v ∈ F.
$

Donc $0_E ∈ F$.

*Stabilité par multiplication externe.*

Soient $λ ∈ K$ et $u ∈ F$.

Comme $0_E ∈ F$,

$
λ u = λ u + 0_E ∈ F.
$

Donc $F$ est stable par multiplication externe.

Ainsi, $F$ est un sous-espace vectoriel de $E$.
