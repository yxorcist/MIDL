#import "../style.typ": *

// ============================================================
// PAGE 6
// ============================================================

= Sous-espaces engendrés

== Intersection de sous-espaces vectoriels

Soit $p ∈ ℕ$ avec $p ≥ 2$.

Soient $F_1, …, F_p$ des sous-espaces vectoriels de $E$.

On définit leur intersection par

$
F_1 ∩ F_2 ∩ … ∩ F_p
=
{ v ∈ E ; v ∈ F_i " pour tout " i ∈ {1, …, p} }.
$

Pour tout $i ∈ {1, …, p}$,

$
F_1 ∩ … ∩ F_p ⊆ F_i.
$

=== Proposition

L'intersection

$
F_1 ∩ … ∩ F_p
$

est un sous-espace vectoriel de $E$.

=== Démonstration

Pour tout $i$, puisque $F_i$ est un sous-espace vectoriel de $E$,

$
0_E ∈ F_i.
$

Donc

$
0_E ∈ F_1 ∩ … ∩ F_p.
$

Soient maintenant

$
u, v ∈ F_1 ∩ … ∩ F_p
$

et soit $λ ∈ K$.

Alors, pour tout $i$,

$
u ∈ F_i
$

et

$
v ∈ F_i.
$

Comme $F_i$ est un sous-espace vectoriel,

$
λ u + v ∈ F_i.
$

Cette propriété étant vraie pour tout $i$,

$
λ u + v ∈ F_1 ∩ … ∩ F_p.
$

Le critère pratique montre donc que

$
F_1 ∩ … ∩ F_p
$

est un sous-espace vectoriel de $E$.
