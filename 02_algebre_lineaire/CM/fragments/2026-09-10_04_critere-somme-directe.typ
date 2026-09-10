#import "../style.typ": *

// ============================================================
// PAGES 4 ET 5
// ============================================================

=== Proposition 1.3.4 — Critère de somme directe

La somme

$
F_1 + … + F_p
$

est directe si et seulement si, pour tout

$
i in {2, …, p},
$

on a

$
F_i ∩ (F_1 + … + F_(i-1))
=
{0_E}.
$

Pour $p = 3$, cela donne les deux conditions

$
F_2 ∩ F_1 = {0_E}
$

et

$
F_3 ∩ (F_1 + F_2) = {0_E}.
$

=== Démonstration

Pour tout $i in {2, …, p}$, posons

$
G_i
=
F_i ∩ (F_1 + … + F_(i-1)).
$

Chaque $G_i$ est un sous-espace vectoriel de $E$.

==== Sens direct $⇒$

Supposons que la somme $F_1 + … + F_p$ soit directe.

On veut montrer que

$
G_i = {0_E}
$

pour tout $i$.

Soit $u in G_i$.

Alors $u in F_i$ et

$
u in F_1 + … + F_(i-1).
$

Il existe donc $v_1 in F_1, …, v_(i-1) in F_(i-1)$ tels que

$
u = v_1 + … + v_(i-1).
$

D'où

$
0_E
=
v_1 + … + v_(i-1) - u + 0_E + … + 0_E.
$

Ici, $-u in F_i$ et les termes suivants sont les vecteurs nuls des
sous-espaces $F_(i+1), …, F_p$.

Comme la somme est directe, tous les termes de cette décomposition sont nuls.
En particulier,

$
-u = 0_E,
$

donc $u = 0_E$.

Ainsi,

$
G_i = {0_E}.
$

==== Sens réciproque $⇐$

Supposons maintenant que

$
G_2 = … = G_p = {0_E}.
$

Soient

$
v_1 in F_1, …, v_p in F_p
$

tels que

$
v_1 + … + v_p = 0_E.
$

Supposons, par l'absurde, que les $v_i$ ne soient pas tous nuls.

Soit

$
j = "max" { i ; v_i != 0_E }.
$

Alors

$
v_j != 0_E
$

et

$
v_(j+1) = … = v_p = 0_E.
$

On a donc

$
0_E = v_1 + … + v_j,
$

d'où

$
-v_j = v_1 + … + v_(j-1).
$

Ainsi,

$
-v_j in F_j
$

et

$
-v_j in F_1 + … + F_(j-1).
$

Donc

$
-v_j in G_j = {0_E},
$

ce qui donne $v_j = 0_E$, contradiction.

Par conséquent,

$
v_1 = … = v_p = 0_E.
$

La somme est donc directe.
