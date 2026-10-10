// source-confidence: high
// source-note: statement cross-checked against official TD02; handwritten correction complete.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 5

On considère une application définie par multiplication à gauche par la matrice de l'énoncé.

== Question 1

Pour tous $M,N$ et tout réel $lambda$,
$
phi(lambda M+N)=lambda phi(M)+phi(N).
$

Donc $phi$ est linéaire.

== Question 2

Dans la base canonique $(E_11,E_12,E_21,E_22)$, on lit les images des quatre vecteurs de base et on obtient
$
"Mat"(phi)
=
mat(
  -1, 0, 2, 0;
  0, -1, 0, 2;
  1, 0, 0, 0;
  0, 1, 0, 0;
).
$

== Question 3

On a
$
det(A)=-2.
$

La matrice $A$ est donc inversible.
