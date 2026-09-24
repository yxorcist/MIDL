#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 16/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Applications linéaires]
]
#line(length: 100%)
#v(0.7em)

= Chapitre 2 — Applications linéaires et matrices

== 2.1 Rappels sur les applications linéaires

Soient $E$ et $F$ deux $K$-espaces vectoriels.

On note

$
"ℱ"(E,F) = { phi : E -> F }
$

l'ensemble des applications de $E$ dans $F$.

Cet ensemble est muni d'une structure de $K$-espace vectoriel. Pour
$phi, psi in "ℱ"(E,F)$ et $lambda in K$, on définit :

$
(phi + psi)(x) = phi(x) + psi(x),
$

et

$
(lambda phi)(x) = lambda phi(x).
$

Le vecteur nul de $"ℱ"(E,F)$ est l'application nulle

$
tilde(0)_(E,F) : E -> F,
quad
x -> 0_F.
$

Lorsque $E = F$, on écrit simplement $tilde(0)_E$.

=== Définition 2.1.1

Une application

$
phi : E -> F
$

est dite *linéaire* si, pour tous $u,v in E$ et tout $lambda in K$,

$
phi(lambda u + v)
=
lambda phi(u) + phi(v).
$

On dit aussi que $phi$ est un morphisme de $K$-espaces vectoriels.

#remark([
  Si $phi : E -> F$ est linéaire, alors

  $
  phi(0_E) = 0_F.
  $
])

=== Définition 2.1.3

On note

$
"ℒ"_K(E,F)
$

ou simplement

$
"ℒ"(E,F)
$

l'ensemble des applications linéaires de $E$ dans $F$.

- Si $phi in "ℒ"(E,F)$ est bijective, on dit que $phi$ est un *isomorphisme*.
- Si $E = F$, une application de $"ℒ"(E,E)$ est appelée un *endomorphisme*.
- Si $F = K$, une application de $"ℒ"(E,K)$ est appelée une *forme linéaire*.

On note alors

$
E^* = "ℒ"(E,K).
$

= Exemples et structure de $"ℒ"_K(E,F)$

== Remarque 2.1.5

=== Formes linéaires sur $K^p$

Soit $p in NN^*$ et soient $a_1, ..., a_p in K$ des scalaires fixés.

L'application

$
K^p -> K,
quad
(x_1, ..., x_p)
-> a_1 x_1 + ... + a_p x_p
$

est une forme linéaire.

=== Applications à valeurs dans un produit

Soient $F_1, ..., F_m$ des $K$-espaces vectoriels et, pour chaque
$j in {1, ..., m}$,

$
phi_j : E -> F_j
$

une application linéaire.

Alors l'application

$
phi : E -> F_1 times F_2 times ... times F_m,
$

définie par

$
phi(u)
=
(phi_1(u), phi_2(u), ..., phi_m(u)),
$

est linéaire.

En particulier, une application

$
phi : K^p -> K^m
$

définie par

$
phi(x_1, ..., x_p)
=
(
a_(1,1)x_1 + ... + a_(1,p)x_p,
...,
a_(m,1)x_1 + ... + a_(m,p)x_p
)
$

est linéaire.

== Théorème 2.1.6

L'ensemble

$
"ℒ"_K(E,F)
$

est un sous-espace vectoriel de $"ℱ"(E,F)$.

=== Démonstration

L'application nulle $tilde(0)_(E,F)$ appartient à $"ℒ"_K(E,F)$.

Soient maintenant

$
phi, psi in "ℒ"_K(E,F)
$

et

$
lambda in K.
$

Il faut montrer que

$
lambda phi + psi
$

est linéaire.

Soient $u,v in E$ et $alpha in K$. Alors

$
(lambda phi + psi)(alpha u + v)
$

$
= (lambda phi)(alpha u + v) + psi(alpha u + v)
$

$
= lambda phi(alpha u + v) + psi(alpha u + v)
$

$
= lambda (alpha phi(u) + phi(v))
  + (alpha psi(u) + psi(v))
$

$
= alpha (lambda phi(u) + psi(u))
  + (lambda phi(v) + psi(v))
$

$
= alpha (lambda phi + psi)(u)
  + (lambda phi + psi)(v).
$

Donc $lambda phi + psi$ est linéaire.

Ainsi, $"ℒ"_K(E,F)$ est stable par combinaison linéaire et est donc un
sous-espace vectoriel de $"ℱ"(E,F)$.

= Noyau et image

Soit

$
phi in "ℒ"_K(E,F),
quad
phi : E -> F.
$

== Proposition 2.1.7

1. Pour tout sous-espace vectoriel $E'$ de $E$, l'image directe

   $
   phi(E')
   =
   { phi(v) | v in E' }
   $

   est un sous-espace vectoriel de $F$.

2. Pour tout sous-espace vectoriel $F'$ de $F$, l'image réciproque

   $
   phi^(-1)(F')
   =
   { v in E | phi(v) in F' }
   $

   est un sous-espace vectoriel de $E$.

== Définition 2.1.8

Le *noyau* de $phi$ est

$
"Ker"(phi)
=
phi^(-1)({0_F})
=
{ v in E | phi(v) = 0_F }.
$

C'est un sous-espace vectoriel de $E$.

L'*image* de $phi$ est

$
"Im"(phi)
=
phi(E)
=
{ phi(v) | v in E }
$

ou encore

$
"Im"(phi)
=
{ u in F | exists v in E, u = phi(v) }.
$

C'est un sous-espace vectoriel de $F$.

== Injectivité et surjectivité

On a les caractérisations suivantes :

$
phi " est injective"
<=>
"Ker"(phi) = {0_E},
$

et

$
phi " est surjective"
<=>
"Im"(phi) = F.
$

= Familles de vecteurs et détermination d'une application linéaire

On suppose dans cette partie que $E$ est de dimension finie.

== Théorème 2.1.11

Notons

$
p = dim_K(E)
$

et soit

$
B = (e_1, ..., e_p)
$

une base de $E$.

Choisissons arbitrairement $p$ vecteurs

$
u_1, ..., u_p
$

de $F$.

Alors il existe une unique application linéaire

$
phi : E -> F
$

telle que, pour tout $i in {1, ..., p}$,

$
phi(e_i) = u_i.
$

Autrement dit, une application linéaire est entièrement déterminée par les
images des vecteurs d'une base.

=== Démonstration — unicité

Supposons qu'il existe une application linéaire $phi : E -> F$ telle que

$
phi(e_i) = u_i
$

pour tout $i$.

Soit $u in E$. Comme $B$ est une base de $E$, il existe un unique
$p$-uplet

$
(x_1, ..., x_p) in K^p
$

tel que

$
u = x_1 e_1 + ... + x_p e_p.
$

Par linéarité,

$
phi(u)
=
phi(x_1 e_1 + ... + x_p e_p)
$

$
=
x_1 phi(e_1) + ... + x_p phi(e_p)
$

$
=
x_1 u_1 + ... + x_p u_p.
$

La valeur de $phi(u)$ est donc imposée pour tout $u in E$. Ainsi, si une
telle application existe, elle est unique.

=== Démonstration — existence

Pour

$
u = x_1 e_1 + ... + x_p e_p,
$

on définit

$
phi(u)
=
x_1 u_1 + ... + x_p u_p.
$

Cette définition est bien posée puisque l'écriture de $u$ dans la base $B$
est unique.

On a alors immédiatement

$
phi(e_i) = u_i
$

pour tout $i$.

Il reste à vérifier la linéarité.

Soient

$
u = x_1 e_1 + ... + x_p e_p,
$

$
v = y_1 e_1 + ... + y_p e_p
$

et $lambda in K$.

Alors

$
lambda u + v
=
(lambda x_1 + y_1)e_1
+ ...
+ (lambda x_p + y_p)e_p.
$

Par définition de $phi$,

$
phi(lambda u + v)
=
(lambda x_1 + y_1)u_1
+ ...
+ (lambda x_p + y_p)u_p
$

$
=
lambda (x_1 u_1 + ... + x_p u_p)
+
(y_1 u_1 + ... + y_p u_p)
$

$
=
lambda phi(u) + phi(v).
$

Donc $phi$ est linéaire, et elle existe bien.

== Corollaire 2.1.12

Supposons que

$
E = E_1 ⊕ ... ⊕ E_k
$

et que, pour tout $i$, on se donne une application linéaire

$
phi_i : E_i -> F.
$

Alors il existe une unique application linéaire

$
phi : E -> F
$

telle que, pour tout $i$,

$
phi|_(E_i) = phi_i.
$
