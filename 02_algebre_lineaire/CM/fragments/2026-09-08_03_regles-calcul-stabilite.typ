#import "../style.typ": *

// ============================================================
// PAGE 3
// ============================================================

== Règles de calcul dans un espace vectoriel

On définit la soustraction par

$
u - v := u + (-v)
$

pour tous $u, v ∈ E$.

Pour tous $u, v, w ∈ E$ et tous $λ, μ ∈ K$, on a les règles suivantes.

1. *Simplification additive*

   Si
   $
   u + v = u + w,
   $
   alors
   $
   v = w.
   $

2. $
   λ 0_E = 0_E
   $

3. $
   0 v = 0_E
   $

4. $
   (-λ) v = -(λ v) = λ (-v)
   $

   En particulier,
   $
   (-λ) (-v) = λ v.
   $

5. $
   λ (u - v) = λ u - λ v
   $

6. $
   (λ - μ) v = λ v - μ v
   $

7. Si
   $
   λ v = 0_E,
   $
   alors
   $
   λ = 0
   $
   ou
   $
   v = 0_E.
   $

8. Si
   $
   λ v = λ u
   $
   et $λ ≠ 0$, alors
   $
   v = u.
   $

9. Si
   $
   λ v = μ v
   $
   et $v ≠ 0_E$, alors
   $
   λ = μ.
   $

== Stabilité d'une partie

Soit $E$ un $K$-espace vectoriel et soit $F$ une partie de $E$.

=== Stabilité par addition

$F$ est *stable par addition* si, pour tous $u, v ∈ F$,

$
u + v ∈ F.
$

=== Stabilité par multiplication externe

$F$ est *stable par multiplication externe* si, pour tout $λ ∈ K$ et tout $v ∈ F$,

$
λ v ∈ F.
$
