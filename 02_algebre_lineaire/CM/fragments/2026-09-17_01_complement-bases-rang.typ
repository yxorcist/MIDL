#import "../style.typ": *

= Fin du chapitre 1 — compléments de bases et rang

== Compléter une base d'un sous-espace

Soit $F$ un sous-espace vectoriel de $E$ et soit $B_F$ une base de $F$.

Comme $B_F$ est une famille libre de $E$, on peut la compléter en une base de $E$.

Si les vecteurs ajoutés engendrent un sous-espace $F'$, alors on obtient

$
F plus.direct F' = E.
$

Autrement dit, tout sous-espace de dimension finie admet un sous-espace supplémentaire obtenu en complétant une base.

== Rang d'une famille de vecteurs

=== Définition 1.8.1

Soit

$
U = (u_1, ..., u_k)
$

une famille de vecteurs de $E$.

Le *rang de $U$*, noté $"rg"(U)$, est défini par

$
"rg"(U) = dim_K("Vect"(U)).
$

=== Proposition 1.8.2

Pour toute famille

$
U = (u_1, ..., u_k)
$

de vecteurs de $E$,

$
"rg"(U) <= dim_K(E),
$

et

$
"rg"(U) <= k.
$

De plus,

$
"rg"(U) = k
<=> U " est libre"
<=> U " est une base de " "Vect"(U).
$
