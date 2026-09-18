#import "../style.typ": *

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
