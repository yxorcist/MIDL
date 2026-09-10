#import "../style.typ": *

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
