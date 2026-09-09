#import "../style.typ": *

// ============================================================
// PAGE 2
// ============================================================

== Exemples fondamentaux d'espaces vectoriels

=== L'espace $K^n$

Pour $n ∈ ℕ$ avec $n ≥ 1$,

$
K^n = { (x_1, …, x_n) ; x_1 ∈ K, …, x_n ∈ K }
$

est un $K$-espace vectoriel avec les opérations définies coordonnée par coordonnée :

$
(x_1, …, x_n) + (y_1, …, y_n)
=
(x_1 + y_1, …, x_n + y_n)
$

et

$
λ (x_1, …, x_n)
=
(λ x_1, …, λ x_n)
$

On peut voir $K^n$ comme le produit de $n$ copies de $K$ :

$
K^n = K × K × … × K
$

=== Produit de deux espaces vectoriels

Soient $E_1$ et $E_2$ deux $K$-espaces vectoriels.

Alors

$
E_1 × E_2
=
{ (x_1, x_2) ; x_1 ∈ E_1, x_2 ∈ E_2 }
$

est un $K$-espace vectoriel pour les opérations

$
(x_1, x_2) + (y_1, y_2)
=
(x_1 + y_1, x_2 + y_2)
$

et

$
λ (x_1, x_2)
=
(λ x_1, λ x_2)
$

=== Autres exemples

- $K[X]$ : ensemble des polynômes à coefficients dans $K$.
- $M_(m,p)(K)$ : ensemble des matrices à $m$ lignes et $p$ colonnes à coefficients dans $K$.
- $K^ℕ$ : ensemble des suites à valeurs dans $K$.

=== Espaces de fonctions

Soit $I$ un ensemble non vide.

L'ensemble des applications de $I$ dans $K$, noté $F(I, K)$, est un $K$-espace vectoriel pour les opérations définies point par point :

$
(f + g)(x) = f(x) + g(x)
$

et

$
(λ f)(x) = λ f(x)
$

Plus généralement, si $F$ est un $K$-espace vectoriel, alors l'ensemble
$F(I, F)$ des applications de $I$ dans $F$ est lui aussi un $K$-espace vectoriel, avec les mêmes opérations définies point par point.

*Remarque.* $ℂ$ est un $ℂ$-espace vectoriel, mais également un $ℝ$-espace vectoriel.
