#import "../style.typ": *

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
