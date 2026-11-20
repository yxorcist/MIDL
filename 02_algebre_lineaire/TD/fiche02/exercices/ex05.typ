// source-confidence: high
// source-note: exercice 5 du TD02, rédaction fondée sur les calculs manuscrits fournis le 20 novembre 2026.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

On considère la matrice

$
A=mat(
  -1, 2;
  1, 0;
) in M_2(RR)
$

et l'application $phi:M_2(RR)->M_2(RR)$ définie par

$
phi(M)=A M.
$

== Question 1 — Linéarité

Soient $M,N in M_2(RR)$ et $lambda in RR$. Alors

$
phi(lambda M+N)=A(lambda M+N)
$

$
=lambda A M+A N
$

$
=lambda phi(M)+phi(N).
$

Donc $phi$ est une application linéaire.

== Question 2 — Matrice dans la base canonique

On prend la base canonique de $M_2(RR)$ :

$
cal(B)=(E_11,E_12,E_21,E_22).
$

On calcule les images de ses quatre éléments en multipliant chaque matrice à gauche par $A$ :

$
phi(E_11)
=
mat(-1, 2; 1, 0)
mat(1, 0; 0, 0)
=
mat(-1, 0; 1, 0).
$

$
phi(E_12)
=
mat(-1, 2; 1, 0)
mat(0, 1; 0, 0)
=
mat(0, -1; 0, 1).
$

$
phi(E_21)
=
mat(-1, 2; 1, 0)
mat(0, 0; 1, 0)
=
mat(2, 0; 0, 0).
$

$
phi(E_22)
=
mat(-1, 2; 1, 0)
mat(0, 0; 0, 1)
=
mat(0, 2; 0, 0).
$

On place les coordonnées de ces quatre images en colonnes, dans l'ordre de la base $cal(B)$ :

$
"Mat"_(cal(B))(phi)
=
mat(
  -1, 0, 2, 0;
  0, -1, 0, 2;
  1, 0, 0, 0;
  0, 1, 0, 0;
).
$

== Question 3 — Bijectivité et réciproque

On calcule d'abord

$
det(A)=(-1) dot 0-2 dot 1=-2 != 0.
$

Donc $A$ est inversible.

Pour calculer $A^(-1)$, on applique les opérations de Gauss-Jordan à $(A | I_2)$ :

$
mat(
  -1, 2, 1, 0;
  1, 0, 0, 1;
).
$

En effectuant $L_2 <- L_2+L_1$, on obtient

$
mat(
  -1, 2, 1, 0;
  0, 2, 1, 1;
).
$

Puis $L_2 <- 1/2 L_2$ :

$
mat(
  -1, 2, 1, 0;
  0, 1, 1/2, 1/2;
).
$

Puis $L_1 <- -L_1$ et $L_1 <- L_1+2L_2$ :

$
mat(
  1, 0, 0, 1;
  0, 1, 1/2, 1/2;
).
$

Ainsi

$
A^(-1)=mat(
  0, 1;
  1/2, 1/2;
).
$

On pose $psi:M_2(RR)->M_2(RR)$ définie par

$
psi(M)=A^(-1) M.
$

Pour toute matrice $M in M_2(RR)$,

$
(phi compose psi)(M)
=A(A^(-1) M)
=(A A^(-1))M=M
$

et

$
(psi compose phi)(M)
=A^(-1)(A M)
=(A^(-1) A)M=M.
$

Donc $phi$ est bijective et son application réciproque est

$
phi^(-1)(M)=A^(-1) M.
$
