#import "../style.typ": *

= Matrices, applications linéaires, rang et composition

== Isomorphisme entre applications linéaires et matrices

#theorem([
  L'application

  $
  "Mat"_(cal(E),cal(F)) :
  L_K(E,F) -> M_(p,n)(K),
  quad
  phi -> "Mat"_(cal(E),cal(F))(phi)
  $

  est un isomorphisme d'espaces vectoriels.
])

En particulier, pour toute matrice

$
A in M_(p,n)(K),
$

il existe une unique application linéaire

$
phi in L_K(E,F)
$

telle que

$
A="Mat"_(cal(E),cal(F))(phi).
$

== Rang d'une matrice

Le rang d'une matrice $A in M_(p,n)(K)$ est la dimension du sous-espace vectoriel de $K^p$ engendré par les colonnes de $A$.

#proposition([
  Soit $A in M_(p,n)(K)$.

  Le rang de $A$ est égal au rang de l'application linéaire

  $
  K^n -> K^p,
  quad
  X -> A X.
  $
])

Si

$
A="Mat"_(cal(E),cal(F))(phi),
$

alors

$
"rg"(A)="rg"(phi).
$

#remark([
  On a toujours

  $
  "rg"(A) <= min(p,n).
  $
])

== Matrice d'une composée

Soient $E,F,G$ des $K$-espaces vectoriels de dimensions finies, munis de bases respectives $cal(E)$, $cal(F)$ et $cal(G)$.

Soient

$
phi in L_K(E,F)
quad "et" quad
psi in L_K(F,G).
$

#theorem([
  La matrice de la composée vérifie

  $
  "Mat"_(cal(E),cal(G))(psi compose phi)
  =
  "Mat"_(cal(F),cal(G))(psi)
  "Mat"_(cal(E),cal(F))(phi).
  $
])
