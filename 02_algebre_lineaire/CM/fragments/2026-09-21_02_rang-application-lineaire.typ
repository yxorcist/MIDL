#import "../style.typ": *

= 2.2 Rang d'une application linéaire

Fixons deux $K$-espaces vectoriels $E$ et $F$, avec $E$ de dimension finie, et une application linéaire

$
phi : E -> F.
$

On remarque que $"Im"(phi)$ est de dimension finie.

== Définition 2.2.1

Le *rang* de $phi$ est

$
"rg"(phi)
=
dim_K("Im"(phi)).
$

== Remarque 2.2.2

- Si $F$ est de dimension finie,

  $
  "rg"(phi) <= dim_K(F).
  $

- On a toujours

  $
  "rg"(phi) <= dim_K(E).
  $

== Théorème 2.2.3 — théorème du rang

Soient $E$ et $F$ deux $K$-espaces vectoriels, avec $E$ de dimension finie, et

$
phi in "ℒ"_K(E,F).
$

Alors

$
dim_K(E)
=
dim_K("Ker"(phi))
+
"rg"(phi).
$

=== Démonstration

On fixe un supplémentaire $S$ de $"Ker"(phi)$ dans $E$ :

$
E = "Ker"(phi) ⊕ S.
$

On construit un isomorphisme entre $S$ et $"Im"(phi)$ en considérant la restriction

$
psi : S -> "Im"(phi),
quad
u -> phi(u).
$

Montrons d'abord que $psi$ est injective.

Soit $u in "Ker"(psi)$. Alors $u in S$ et

$
psi(u) = 0_F.
$

Donc $u in S ∩ "Ker"(phi)$. Comme la somme est directe,

$
S ∩ "Ker"(phi) = {0_E}.
$

Ainsi

$
"Ker"(psi) = {0_E},
$

donc $psi$ est injective.

Montrons maintenant que $psi$ est surjective.

Soit $v in "Im"(phi)$. Il existe $w in E$ tel que

$
v = phi(w).
$

Comme

$
E = S ⊕ "Ker"(phi),
$

il existe $u in S$ et $x in "Ker"(phi)$ tels que

$
w = u + x.
$

Alors

$
v
=
phi(w)
=
phi(u + x)
=
phi(u) + phi(x)
=
phi(u)
=
psi(u).
$

Donc $psi$ est surjective, et par conséquent c'est un isomorphisme.

Finalement,

$
"rg"(phi)
=
dim_K("Im"(phi))
=
dim_K(S)
=
dim_K(E) - dim_K("Ker"(phi)).
$

D'où

$
dim_K(E)
=
dim_K("Ker"(phi))
+
"rg"(phi).
$

== Corollaire 2.2.4

On suppose de plus que

$
dim_K(E) = dim_K(F).
$

Alors

$
phi " est injective"
<=>
phi " est bijective"
<=>
phi " est surjective".
$

Ce résultat est faux en général si $E$ et $F$ ne sont pas de dimension finie.
