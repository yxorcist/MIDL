#import "../style.typ": *

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
