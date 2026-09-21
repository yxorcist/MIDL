#import "../style.typ": *

= Compléments sur les applications linéaires

== Suite du résultat précédent

Soit

$
B = (u_1, ..., u_p)
$

une base de $E$.

2. On a les équivalences suivantes :

   $
   phi " est injective"
   <=>
   phi(B) " est libre",
   $

   $
   phi " est surjective"
   <=>
   phi(B) " engendre " F,
   $

   $
   phi " est bijective"
   <=>
   phi(B) " est une base de " F.
   $

== Remarque 2.1.17

Si une famille $U$ engendre $E$, alors $phi(U)$ engendre $"Im"(phi)$.

En particulier,

$
phi("Vect"(U)) = "Vect"(phi(U)).
$

== Proposition 2.1.18

On suppose $E$ et $F$ de dimension finie et

$
phi in "ℒ"_K(E,F).
$

1. Si $phi$ est injective, alors

   $
   dim_K(E) <= dim_K(F).
   $

2. Si $phi$ est surjective, alors

   $
   dim_K(E) >= dim_K(F).
   $

3. Si $phi$ est bijective, alors

   $
   dim_K(E) = dim_K(F).
   $

=== Démonstration du point 1

Soit

$
B = (u_1, ..., u_p)
$

une base de $E$, avec

$
dim_K(E) = p.
$

Puisque $phi$ est injective, la famille

$
phi(B) = (phi(u_1), ..., phi(u_p))
$

est libre dans $F$. Donc

$
dim_K(E)
=
p
=
"card"(phi(B))
<=
dim_K(F).
$
