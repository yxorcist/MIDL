#import "../style.typ": *

// ============================================================
// PAGE 7
// ============================================================

== Sous-espace vectoriel engendré par une partie

Soit $U$ une partie de $E$.

=== Proposition

Il existe un unique sous-espace vectoriel de $E$ qui contient $U$ et qui est le plus petit, pour l'inclusion, parmi tous les sous-espaces vectoriels de $E$ contenant $U$.

On le note

$
"Vect"(U).
$

Autrement dit :

- $
  U ⊆ "Vect"(U)
  $

- si $F$ est un sous-espace vectoriel de $E$ et $U ⊆ F$, alors
  $
  "Vect"(U) ⊆ F.
  $

Le sous-espace $"Vect"(U)$ est appelé le *sous-espace vectoriel engendré par $U$*.

=== Exemples

- $
  "Vect"(E) = E
  $

- si $F$ est déjà un sous-espace vectoriel de $E$,
  $
  "Vect"(F) = F
  $

- si $v ∈ E$,
  $
  "Vect"({v}) = K v
  $

- $
  "Vect"(∅) = {0_E}
  $

== Familles de vecteurs

=== Définition

Une *famille finie de vecteurs* est une suite finie

$
(u_1, …, u_k).
$

L'ordre compte et un même vecteur peut être répété.

=== Concaténation

La concaténation des familles

$
(u_1, …, u_k)
$

et

$
(v_1, …, v_p)
$

est la famille

$
(u_1, …, u_k, v_1, …, v_p).
$

== Combinaisons linéaires

Soit $E$ un $K$-espace vectoriel, soit $k ∈ ℕ$ avec $k ≥ 1$, et soient

$
u_1, …, u_k ∈ E.
$

=== Définition

Une *combinaison $K$-linéaire* de $u_1, …, u_k$ est un vecteur de la forme

$
α_1 u_1 + α_2 u_2 + … + α_k u_k
$

avec

$
α_1, …, α_k ∈ K.
$

Les scalaires $α_1, …, α_k$ sont appelés les *coefficients* de la combinaison linéaire.


// ============================================================
// PAGE 8
// ============================================================

== Sous-espace engendré par une famille finie

Soient $u_1, …, u_k ∈ E$.

On considère l'ensemble de toutes leurs combinaisons linéaires :

$
V
=
{
  α_1 u_1 + … + α_k u_k
  ;
  α_1 ∈ K, …, α_k ∈ K
}.
$

Cet ensemble $V$ est un sous-espace vectoriel de $E$.

=== Proposition

$V$ est le sous-espace vectoriel engendré par $u_1, …, u_k$.

On note

$
V = "Vect"(u_1, …, u_k).
$

Ainsi,

$
"Vect"(u_1, …, u_k)
=
{
  α_1 u_1 + … + α_k u_k
  ;
  α_1 ∈ K, …, α_k ∈ K
}.
$
