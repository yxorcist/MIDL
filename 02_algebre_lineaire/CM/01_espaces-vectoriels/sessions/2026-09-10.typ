#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 10/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Sommes et sous-espaces supplémentaires]
]
#line(length: 100%)
#v(0.7em)

// ============================================================
// PAGE 1
// ============================================================

== Complément sur les sous-espaces engendrés

=== Proposition 1.2.6

Soit $F$ un sous-espace vectoriel de $E$ et soient
$u_1, …, u_k in F$.

Alors

$
"Vect"(u_1, …, u_k) ⊆ F.
$

=== Exercice 1.2.8 — Opérations élémentaires sur une famille

Soit

$
V = "Vect"(u_1, …, u_k).
$

Le sous-espace $V$ est inchangé par les opérations élémentaires suivantes sur
la famille $(u_1, …, u_k)$ :

1. échange de deux vecteurs :
   $
   u_i ↔ u_j ;
   $

2. multiplication d'un vecteur par un scalaire non nul :
   $
   u_i ← λ u_i,
   quad
   λ in K,
   quad
   λ != 0 ;
   $

3. ajout à un vecteur d'un multiple d'un autre vecteur :
   $
   u_i ← u_i + λ u_j,
   quad
   λ in K,
   quad
   j != i.
   $

De plus,

$
"Vect"(u_1, …, u_k)
=
"Vect"(u_1, …, u_k, 0_E).
$

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

// ============================================================
// PAGES 5 ET 6
// ============================================================

== Sous-espaces vectoriels supplémentaires dans $E$

=== Définition 1.3.5

Les sous-espaces $F_1, …, F_p$ sont *supplémentaires dans $E$* si :

1. la somme $F_1 + … + F_p$ est directe ;

2. $
   F_1 + … + F_p = E.
   $

On écrit alors

$
E = F_1 ⊕ … ⊕ F_p.
$

=== Théorème 1.3.6

Les sous-espaces $F_1, …, F_p$ sont supplémentaires dans $E$ si et seulement
si tout vecteur $v in E$ s'écrit de manière unique sous la forme

$
v = v_1 + … + v_p,
$

avec

$
v_1 in F_1, …, v_p in F_p.
$

Lorsque $F_1, …, F_p$ sont supplémentaires dans $E$ et que

$
v = v_1 + … + v_p,
$

les vecteurs $v_1, …, v_p$ sont appelés les *composantes de $v$* selon la
décomposition

$
E = F_1 ⊕ … ⊕ F_p.
$

=== Théorème 1.3.7

Tout sous-espace vectoriel $F$ de $E$ admet un supplémentaire $G$ dans $E$ :

$
E = F ⊕ G.
$

// ============================================================
// PAGES 6 ET 7
// ============================================================

= Exemples généraux de sous-espaces vectoriels

== Lien avec les applications linéaires

Soient $E$ et $E'$ deux $K$-espaces vectoriels.

Soit

$
φ : E → E'
$

une application $K$-linéaire.

Pour tous $u, v in E$ et tout $λ in K$,

$
φ(λ u + v)
=
λ φ(u) + φ(v).
$

=== Proposition 1.4.1

1. Le noyau de $φ$,

   $
   "Ker"(φ)
   =
   { u in E ; φ(u) = 0_(E') },
   $

   est un sous-espace vectoriel de $E$.

2. Tout sous-espace vectoriel $F$ de $E$ est le noyau d'une application
   linéaire : si $F$ est un sous-espace vectoriel de $E$, il existe un
   $K$-espace vectoriel $E'$ et une application linéaire

   $
   φ : E → E'
   $

   tels que

   $
   F = "Ker"(φ).
   $

3. L'image de $φ$,

   $
   "Im"(φ)
   =
   φ(E)
   =
   { φ(u) ; u in E },
   $

   est un sous-espace vectoriel de $E'$.

4. Tout sous-espace vectoriel $F'$ de $E'$ est l'image d'une application
   linéaire : il existe un $K$-espace vectoriel $E$ et une application
   linéaire

   $
   φ : E → E'
   $

   tels que

   $
   F' = "Im"(φ).
   $

*À savoir démontrer :* le résultat sur le noyau.

== Systèmes linéaires et sous-espaces de $K^n$

On fixe $p >= 1$, $n >= 1$ et des scalaires

$
a_(1,1), …, a_(1,n),
a_(2,1), …, a_(2,n),
…,
a_(p,1), …, a_(p,n).
$

On note

$
A = (a_(i,j))_(1 <= i <= p, 1 <= j <= n).
$

On considère le système linéaire homogène $(S)$ :

$
a_(1,1) x_1 + … + a_(1,n) x_n = 0,
quad …,
quad
a_(p,1) x_1 + … + a_(p,n) x_n = 0.
$

De manière matricielle,

$
A (x_1, …, x_n)^T = 0.
$

On note

$
A_S
=
{
  (x_1, …, x_n) in K^n ;
  A (x_1, …, x_n)^T = 0
}.
$

L'ensemble $A_S$ est un sous-espace vectoriel de $K^n$.

=== Proposition 1.4.2

Soit $F$ un sous-espace vectoriel de $K^n$.

Alors il existe $p >= 1$ et une matrice

$
A in M_(p,n)(K)
$

tels que

$
F
=
{
  (x_1, …, x_n) in K^n ;
  A (x_1, …, x_n)^T = 0
}.
$

Le système correspondant fournit des *équations cartésiennes de $F$*.

=== Méthode

Soit

$
(v_1, …, v_p)
$

une famille génératrice de $F$ ; on peut en particulier choisir une base de
$F$, ce qui donne moins de paramètres.

Alors

$
v in F
<=>
exists α_1, …, α_p in K,
v = α_1 v_1 + … + α_p v_p.
$

On résout ce système en les inconnues $α_1, …, α_p$.

Les conditions obtenues sur les composantes de $v$ pour que ce système admette
des solutions donnent les équations cartésiennes de $F$.
