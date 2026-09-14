#import "../style.typ": *

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
v notin "Vect"(U).
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
