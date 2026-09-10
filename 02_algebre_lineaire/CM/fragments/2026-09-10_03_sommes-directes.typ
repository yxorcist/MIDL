#import "../style.typ": *

// ============================================================
// PAGE 3
// ============================================================

= Sommes directes et sous-espaces supplémentaires

== Notion de somme directe

=== Définition 1.3.1

On dit que la somme

$
F_1 + … + F_p
$

est *directe* si, pour tous $v_1 in F_1, …, v_p in F_p$,

$
v_1 + … + v_p = 0_E
$

implique

$
v_1 = … = v_p = 0_E.
$

Autrement dit, la seule façon d'écrire le vecteur nul comme somme d'un
vecteur de $F_1$, …, d'un vecteur de $F_p$ est

$
0_E = 0_E + … + 0_E.
$

Lorsque la somme est directe, on note

$
F_1 ⊕ … ⊕ F_p.
$

=== Proposition 1.3.2

La somme $F_1 + … + F_p$ est directe si et seulement si tout vecteur

$
v in F_1 + … + F_p
$

admet une unique écriture

$
v = v_1 + … + v_p,
$

avec

$
v_1 in F_1, …, v_p in F_p.
$

=== Cas de deux sous-espaces

Si $p = 2$,

$
F_1 + F_2 " est directe"
<=>
F_1 ∩ F_2 = {0_E}.
$

Pour $p >= 3$, la condition

$
F_i ∩ F_j = {0_E}
quad "pour" quad
i != j
$

ne suffit pas en général.

Par exemple, trois droites vectorielles distinctes de $RR^2$ peuvent avoir
des intersections deux à deux réduites à ${0_E}$ sans que leur somme soit
directe.
