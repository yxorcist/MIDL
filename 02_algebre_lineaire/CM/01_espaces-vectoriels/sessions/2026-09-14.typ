#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 14/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Familles, bases et dimension]
]
#line(length: 100%)
#v(0.7em)

// ============================================================
// PAGES 1–3
// ============================================================

= Familles libres et familles génératrices

== Familles libres

=== Définition 1.5.1

Soit $U = (u_1, ..., u_k)$ une famille de vecteurs d'un $K$-espace vectoriel $E$.

On dit que $U$ est *libre sur $K$* (ou *$K$-libre*) si, pour tous scalaires
$alpha_1, ..., alpha_k$ dans $K$,

$
alpha_1 u_1 + ... + alpha_k u_k = 0_E
=>
alpha_1 = 0, ..., alpha_k = 0.
$

Si $U$ n'est pas libre sur $K$, elle est dite *liée sur $K$*.

=== Remarques 1.5.2

- Si le vecteur nul $0_E$ appartient à $U$, alors $U$ est liée.
- La famille $(u_1)$ est libre si et seulement si $u_1 != 0_E$.
- Deux vecteurs sont colinéaires sur $K$ lorsqu'il existe un scalaire permettant d'exprimer l'un comme multiple de l'autre.

Les notes signalent le cas particulier suivant : si $u != 0_E$ et $v = 0_E$, on ne peut pas écrire $u = alpha v$, mais on peut écrire

$
v = 0 u.
$

Ainsi, si $v != 0_E$, $u$ et $v$ sont colinéaires si et seulement s'il existe $alpha in K$ tel que

$
u = alpha v.
$

En particulier, la famille $(u, v)$ est libre si et seulement si $u$ et $v$ ne sont pas colinéaires.

=== Remarque 1.5.3

Pour une famille $(u_1, ..., u_k)$,

$
(u_1, ..., u_k) " est libre"
<=>
"Vect"(u_1) + ... + "Vect"(u_k) " est une somme directe".
$

== Familles génératrices

=== Définition 1.5.4

Soit $E$ un $K$-espace vectoriel et $U = (u_1, ..., u_k)$ une famille de vecteurs de $E$.

La famille $U$ est *génératrice de $E$ sur $K$* si

$
E = "Vect"(U).
$

Autrement dit, pour tout $v in E$, il existe $alpha_1, ..., alpha_k$ dans $K$ tels que

$
v = alpha_1 u_1 + ... + alpha_k u_k.
$

=== Proposition 1.5.7

Soit $U$ une famille libre et soit $v in E$.

La famille obtenue en ajoutant $v$ à $U$ est libre si et seulement si

$
v ∉ "Vect"(U).
$

== Exemple 1.5.8 — $CC$ comme espace vectoriel sur $CC$ ou sur $RR$

L'ensemble $CC$ peut être considéré de deux façons :

- comme un $CC$-espace vectoriel, avec la loi externe

$
CC times CC -> CC,
quad
(lambda, u) -> lambda u ;
$

- comme un $RR$-espace vectoriel, avec la loi externe

$
RR times CC -> CC,
quad
(lambda, u) -> lambda u.
$

Les notes notent ces deux espaces respectivement $E_1$ et $E_2$.

Soient

$
u = 1 in CC,
quad
v = i in CC,
quad
U = (1, i) = (u, v).
$

=== Liberté sur $RR$

Soient $lambda, mu in RR$ tels que

$
lambda u + mu v = 0_CC.
$

Alors

$
lambda + mu i = 0.
$

Comme $lambda$ et $mu$ sont réels,

$
lambda = "Re"(lambda + mu i) = 0
$

et

$
mu = "Im"(lambda + mu i) = 0.
$

Donc $U$ est libre sur $RR$.

De plus, $U$ engendre $E_2$ sur $RR$, puisque tout nombre complexe s'écrit

$
lambda . 1 + mu i
$

avec $lambda, mu in RR$.

=== Famille liée sur $CC$

Sur $CC$, la famille $U$ est liée. En prenant

$
lambda = -i,
quad
mu = 1,
$

on obtient

$
(-i) . 1 + 1 . i = 0.
$

La famille $U$ engendre néanmoins $CC$ sur $CC$ : pour tout $v in CC$,

$
v = lambda . 1
$

avec $lambda = v in CC$.

=== Proposition 1.5.9

1. Toute sous-famille d'une famille libre est encore libre.
2. Toute famille qui contient une famille génératrice de $E$ est une famille génératrice de $E$.

// ============================================================
// PAGES 3–4
// ============================================================

= Espaces de type fini, bases et coordonnées

== Espaces de type fini

=== Définition 1.6.1

On dit qu'un $K$-espace vectoriel $E$ est *de type fini* (ou de dimension finie) sur $K$ si $E$ admet une famille génératrice finie sur $K$.

=== Exercice 1.6.2

==== 1. L'espace $K^n$

Pour $n in NN^*$, l'espace $K^n$ est de type fini. Il est engendré par

$
(e_1, ..., e_n),
$

où $e_i$ est le vecteur dont toutes les coordonnées sont nulles sauf la $i$-ème, égale à $1$.

En effet,

$
(x_1, ..., x_n)
=
x_1 e_1 + ... + x_n e_n
in "Vect"(e_1, ..., e_n).
$

==== 4. L'espace $K[X]$

L'espace $E = K[X]$ n'est pas de type fini.

Supposons par l'absurde que $E$ admette une famille génératrice finie

$
(P_1, ..., P_k).
$

Posons

$
d = max("deg"(P_1), ..., "deg"(P_k)).
$

Pour tous $alpha_1, ..., alpha_k in K$,

$
"deg"(alpha_1 P_1 + ... + alpha_k P_k) <= d.
$

Mais

$
X^(d+1) in E = "Vect"(P_1, ..., P_k),
$

ce qui contredit la majoration précédente du degré.

== Bases

=== Définition 1.6.3

Soit $E$ un $K$-espace vectoriel de type fini.

Une *base de $E$ sur $K$* (ou *$K$-base de $E$*) est une famille de vecteurs de $E$ qui est à la fois :

- $K$-libre ;
- génératrice de $E$ sur $K$.

=== Proposition 1.6.5

Soit $E$ un $K$-espace vectoriel de type fini et soit

$
U = (u_1, ..., u_k)
$

une famille finie de vecteurs de $E$.

La famille $U$ est une base de $E$ si et seulement si tout vecteur $v in E$ s'écrit de manière unique comme combinaison linéaire des vecteurs de $U$ :

$
v = alpha_1 u_1 + ... + alpha_k u_k.
$

== Coordonnées dans une base

=== Définitions 1.6.6 et 1.6.7

Si $U = (u_1, ..., u_k)$ est une base de $E$ et

$
v = alpha_1 u_1 + ... + alpha_k u_k,
$

les coefficients $alpha_1, ..., alpha_k$ sont appelés les *coordonnées de $v$ dans la base $U$*.

On note

$
[v]_U = mat(alpha_1; dots.v; alpha_k).
$

=== Exemple

Dans

$
RR_1[X] = {P in RR[X] | "deg"(P) <= 1},
$

on considère

$
v = 1 + 2x.
$

Dans la base

$
U = (1, x),
$

on a

$
[v]_U = mat(1; 2).
$

Dans la base

$
U' = (1, 1 + 2x),
$

on a

$
[v]_(U') = mat(0; 1).
$

=== Proposition 1.6.8

Soit $E$ un $K$-espace vectoriel de type fini et soit $U$ une $K$-base de $E$.

Pour tous $u, v in E$ et $lambda in K$,

$
[lambda u + v]_U
=
lambda [u]_U + [v]_U.
$

Autrement dit, l'application

$
E -> M_(k,1)(K),
quad
v -> [v]_U
$

est une application linéaire.

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

Si $F ⊂ E$ est un sous-espace vectoriel de $E$, alors

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
"dim"_K(F_1 ∩ F_2).
$

=== 4. Somme de $p$ sous-espaces

Soit $p in NN$ avec $p >= 2$, et soient $F_1, ..., F_p$ des sous-espaces vectoriels de $E$. Alors

$
"dim"_K(F_1 + ... + F_p)
=
sum_(i=1)^p "dim"_K(F_i)
-
sum_(i=2)^p "dim"_K(F_i ∩ (F_1 + ... + F_(i-1))).
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

// ============================================================
// PAGE 7
// ============================================================

= Familles de vecteurs et sommes de sous-espaces vectoriels

== Proposition 1.7.1

Soient $F_1, ..., F_p$ des sous-espaces vectoriels de $E$.

Pour tout $i in {1, ..., p}$, soit $B_i$ une base de $F_i$.

On considère la famille obtenue en concaténant les bases

$
B_1, B_2, ..., B_p.
$

Alors :

1. cette famille engendre

   $
   F_1 + ... + F_p ;
   $

2. cette famille est libre si et seulement si la somme

   $
   F_1 + ... + F_p
   $

   est directe ;

3. cette famille est une base de $E$ si et seulement si

   $
   E = F_1 ⊕ ... ⊕ F_p.
   $
