#import "../style.typ": *

// ============================================================
// PAGES 1 ET 2
// ============================================================

== Somme de sous-espaces vectoriels

Soit $p in NN$ avec $p >= 2$, et soient
$F_1, …, F_p$ des sous-espaces vectoriels de $E$.

La réunion

$
F_1 ∪ F_2 ∪ … ∪ F_p
$

n'est pas, en général, un sous-espace vectoriel de $E$.

On définit leur *somme* par

$
F_1 + … + F_p
=
sum_(i=1)^p F_i
=
{ v_1 + … + v_p ; v_1 in F_1, …, v_p in F_p }.
$

De manière équivalente,

$
F_1 + … + F_p
=
{
  v in E ;
  exists v_1 in F_1, …, exists v_p in F_p,
  v = v_1 + … + v_p
}.
$

Pour tout $i in {1, …, p}$,

$
F_i ⊆ F_1 + … + F_p,
$

donc

$
F_1 ∪ … ∪ F_p
⊆
F_1 + … + F_p.
$

=== Proposition 1.2.10

La somme

$
F_1 + … + F_p
$

est un sous-espace vectoriel de $E$.

De plus,

$
F_1 + … + F_p
=
"Vect"(F_1 ∪ … ∪ F_p).
$

Autrement dit, $F_1 + … + F_p$ est le plus petit sous-espace vectoriel de
$E$ contenant $F_1 ∪ … ∪ F_p$.

=== Démonstration

Pour tout $i$, puisque $F_i$ est un sous-espace vectoriel,

$
0_E in F_i.
$

Ainsi,

$
0_E = 0_E + … + 0_E in F_1 + … + F_p.
$

Soient maintenant $u, v in F_1 + … + F_p$ et $λ in K$.

Il existe

$
u_1, v_1 in F_1,
quad …,
quad
u_p, v_p in F_p
$

tels que

$
u = u_1 + … + u_p
quad "et" quad
v = v_1 + … + v_p.
$

Alors

$
λ u + v
=
(λ u_1 + v_1) + … + (λ u_p + v_p).
$

Pour tout $i$, comme $F_i$ est un sous-espace vectoriel,

$
λ u_i + v_i in F_i.
$

Donc

$
λ u + v in F_1 + … + F_p.
$

Ainsi, $F_1 + … + F_p$ est un sous-espace vectoriel de $E$.

Soit maintenant $G$ un sous-espace vectoriel de $E$ qui contient
$F_1 ∪ … ∪ F_p$.

Soit

$
v in F_1 + … + F_p.
$

Il existe $v_1 in F_1, …, v_p in F_p$ tels que

$
v = v_1 + … + v_p.
$

Comme, pour tout $i$,

$
F_i ⊆ F_1 ∪ … ∪ F_p ⊆ G,
$

on a $v_i in G$ pour tout $i$.

Puisque $G$ est stable par addition,

$
v = v_1 + … + v_p in G.
$

Finalement, $F_1 + … + F_p$ est le plus petit sous-espace vectoriel de $E$
contenant $F_1 ∪ … ∪ F_p$.

=== Remarque 1.2.11

- Si $G$ est un sous-espace vectoriel de $E$ tel que, pour tout
  $i in {1, …, p}$, $F_i ⊆ G$, alors
  $
  F_1 + … + F_p ⊆ G.
  $

- Soient $u_1, …, u_p$ des vecteurs de $E$. Pour tout indice $j$ convenable,
  $
  "Vect"(u_1, …, u_p)
  =
  "Vect"(u_1, …, u_j)
  +
  "Vect"(u_(j+1), …, u_p).
  $
