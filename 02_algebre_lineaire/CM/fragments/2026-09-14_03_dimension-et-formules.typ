#import "../style.typ": *

// ============================================================
// PAGES 5–7
// ============================================================

= Dimension et formules sur les sous-espaces

== Théorème-résumé sur les bases et la dimension

Soit $E$ un $K$-espace vectoriel de type fini.

- Il existe au moins une base de $E$ sur $K$.
- Si $U$ est une famille génératrice de $E$ à $p$ éléments, alors toute famille contenant au moins $p + 1$ éléments est liée.
- Toutes les bases de $E$ ont le même nombre d'éléments. Ce nombre est appelé la *dimension de $E$ sur $K$*, ou *$K$-dimension de $E$*.

On la note

$
"dim"_K(E).
$

=== Convention

$
"dim"_K({0_E}) = 0.
$

La base de l'espace nul ${0_E}$ est la famille vide.

Si

$
"dim"_K(E) = 1,
$

alors $E$ est une *droite vectorielle*.

Si

$
"dim"_K(E) = 2,
$

alors $E$ est un *plan vectoriel*.

=== Exemples

$
"dim"_K(K^n) = n.
$

Pour l'espace des polynômes de degré inférieur ou égal à $n$,

$
"dim"_K(K_n[X]) = n + 1.
$

Pour $CC$ :

$
"dim"_CC(CC) = 1
$

avec la base $(1)$, tandis que

$
"dim"_RR(CC) = 2
$

avec la base $(1, i)$.

== Proposition 1.6.17

Soit $E$ un $K$-espace vectoriel de dimension

$
n = "dim"_K(E),
$

et soit $U$ une famille de vecteurs de $E$.

1. Si $U$ est libre, alors

   $
   "card"(U) <= n.
   $

2. Si

   $
   "card"(U) = n,
   $

   alors $U$ est une base de $E$ si et seulement si $U$ est libre.

3. Si $U$ engendre $E$, alors

   $
   "card"(U) >= n.
   $

4. Si

   $
   "card"(U) = n,
   $

   alors $U$ est une base de $E$ si et seulement si $U$ engendre $E$.

== Proposition 1.6.18

Soit $E$ un $K$-espace vectoriel de type fini.

=== 1. Dimension d'un sous-espace

Si $F$ est un sous-espace vectoriel de $E$, alors $F$ est de type fini et

$
"dim"_K(F) <= "dim"_K(E).
$

=== 2. Critère d'égalité

Si $F subset E$ est un sous-espace vectoriel de $E$, alors

$
F = E
<=>
"dim"_K(F) = "dim"_K(E).
$

=== 3. Formule de Grassmann

Soient $F_1$ et $F_2$ deux sous-espaces vectoriels de $E$. Alors

$
"dim"_K(F_1 + F_2)
=
"dim"_K(F_1)
+
"dim"_K(F_2)
-
"dim"_K(F_1 inter F_2).
$

=== 4. Somme de $p$ sous-espaces

Soit $p in NN$ avec $p >= 2$, et soient $F_1, ..., F_p$ des sous-espaces vectoriels de $E$. Alors

$
"dim"_K(F_1 + ... + F_p)
=
sum_(i=1)^p "dim"_K(F_i)
-
sum_(i=2)^p "dim"_K(F_i inter (F_1 + ... + F_(i-1))).
$

=== 5. Majoration de la dimension d'une somme

$
"dim"_K(F_1 + ... + F_p)
<=
sum_(i=1)^p "dim"_K(F_i).
$

De plus,

$
"dim"_K(F_1 + ... + F_p)
=
sum_(i=1)^p "dim"_K(F_i)
$

si la somme

$
F_1 + ... + F_p
$

est directe.

=== 6. Produit de deux espaces vectoriels

Si $E$ et $F$ sont deux $K$-espaces vectoriels de type fini, alors

$
"dim"_K(E times F)
=
"dim"_K(E) + "dim"_K(F).
$

Les notes rappellent

$
E times F = {(u, v) | u in E, v in F}.
$

Si

$
(u_1, ..., u_p)
$

est une base de $E$ et

$
(v_1, ..., v_q)
$

une base de $F$, la famille correspondante dans $E times F$ s'obtient en plaçant successivement les vecteurs de chaque base dans leur composante :

$
((u_1, 0_F), ..., (u_p, 0_F), (0_E, v_1), ..., (0_E, v_q)).
$
