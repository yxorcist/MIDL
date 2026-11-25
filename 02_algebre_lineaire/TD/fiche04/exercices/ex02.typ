// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 2.
// source-note: photos 13252, 13253 et 13254 : matrice 3×4, choix des bases, rang, noyau, image, factorisation QMP.
// source-verification: les produits de matrices et les inverses ont été contrôlés symboliquement.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 2 — Une application de $RR^4$ dans $RR^3$

Soit $phi: RR^4 -> RR^3$ définie par
$
phi(x,y,z,t)=(x+2y+3z+4t, 5x+6y+7z+8t, 9x+10y+11z+12t).
$

Dans les bases canoniques $cal(B)_4=(e_1,e_2,e_3,e_4)$ et $cal(B)_3=(f_1,f_2,f_3)$, on pose
$
u_1=(1,-2,1,0),quad u_2=(2,-3,0,1),
$
$
v_1=(1,5,9),quad v_2=(2,6,10),
$
et $cal(E)=(e_1,e_2,u_1,u_2)$, $cal(F)=(v_1,v_2,f_3)$.

== 1. Matrice dans les bases canoniques

Les colonnes sont les images des vecteurs canoniques :
$
A="Mat"_(cal(B)_4,cal(B)_3)(phi)
=mat(1,2,3,4;5,6,7,8;9,10,11,12).
$

== 2. Montrer que $cal(E)$ et $cal(F)$ sont des bases

Formons les matrices de leurs vecteurs écrits dans les bases canoniques :
$
R=mat(1,0,1,2;0,1,-2,-3;0,0,1,0;0,0,0,1),
$
$
S=mat(1,2,0;5,6,0;9,10,1).
$

La première est triangulaire supérieure avec $det(R)=1$. La seconde a $det(S)=-4$. Elles sont donc inversibles. Les familles $cal(E)$ et $cal(F)$ sont bien des bases.

== 3. Matrice dans les nouvelles bases et rang

On remarque que
$
phi(e_1)=v_1,quad phi(e_2)=v_2,
$
$
phi(u_1)=0,quad phi(u_2)=0.
$

La matrice demandée est donc
$
M="Mat"_(cal(E),cal(F))(phi)
=mat(1,0,0,0;0,1,0,0;0,0,0,0).
$

Elle a deux pivots, donc $"rg"(M)=2$. Le rang d'une application linéaire ne dépend pas des bases choisies :
$
"rg"(phi)="rg"(M)="rg"(A)=2.
$

== 4. Bases du noyau et de l'image

On lit immédiatement dans $M$ :
$
ker(phi)="Vect"(u_1,u_2),
$
$
"Im"(phi)="Vect"(v_1,v_2).
$

La liberté de ces familles est garantie par l'appartenance aux bases $cal(E)$ et $cal(F)$. On retrouve le théorème du rang : $dim ker(phi)=4-2=2$.

== 5. Trouver des matrices inversibles $P,Q$ telles que $A=Q M P$

Les changements de coordonnées s'écrivent
$
[x]_(cal(B)_4)=R[x]_cal(E),
$
$
[y]_(cal(B)_3)=S[y]_cal(F).
$

Donc
$
M=S^(-1) A R,
quad "et par suite" quad A=S M R^(-1).
$

Il suffit de choisir
$
Q=S=mat(1,2,0;5,6,0;9,10,1),
$
$
P=R^(-1)=mat(1,0,-1,-2;0,1,2,3;0,0,1,0;0,0,0,1).
$

Ces deux matrices sont inversibles et la vérification directe donne bien $Q M P=A$.

*Attention :* les matrices $R$ et $S$ ont pour colonnes les nouveaux vecteurs de base ; leurs sens d'action sur les coordonnées sont différents de l'ordre dans l'égalité $A=Q M P$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Photos 13252 à 13254 ; énoncé officiel TD04, exercice 2. La matrice $P$ de la question 5 est l'inverse de $R$, et non la matrice contenant directement les vecteurs de $cal(E)$.
]
