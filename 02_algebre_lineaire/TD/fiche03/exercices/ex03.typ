// source-confidence: high
// source-note: photographies 11280 et 11282, « exercice 3 » de TD03 (questions 1 à 3).
// source-note: énoncé officiel TD03_endomorphismes-changements-bases.pdf, exercice 3, avec la quatrième question sur l'image d'une droite.
// source-reconstruction: la question 4 est résolue à partir de l'énoncé imprimé ; son calcul n'apparaît pas sur les photographies.
// source-verification: la matrice canonique, la matrice diagonale en base B, la matrice de passage et l'équation de s(D) ont été vérifiées indépendamment.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3 — Symétrie et changement de base

== Énoncé

Dans $RR^2$, on considère

$
u_1=(3,1), quad u_2=(1,0),
$

et les droites

$
D_1=\{(x,y) in RR^2 | x-3y=0\}="Vect"((3,1)),
$

$
D_2=\{(x,y) in RR^2 | y=0\}="Vect"((1,0)).
$

On note $s$ la symétrie par rapport à $D_1$ parallèlement à $D_2$.

== 1. Matrice de $s$ dans la base canonique

Tout vecteur $(x,y)$ s'écrit de façon unique comme une somme d'un vecteur de $D_1$ et d'un vecteur de $D_2$ :

$
(x,y)=(3y,y)+(x-3y,0).
$

Par définition de la symétrie, on conserve la première composante et l'on change le signe de la seconde :

$
s(x,y)=(3y,y)-(x-3y,0)=(6y-x,y).
$

On calcule les images des vecteurs de la base canonique :

$
s(1,0)=(-1,0),
quad
s(0,1)=(6,1).
$

Ce sont les colonnes de la matrice de $s$ dans la base canonique :

$
A="Mat"_(e_1,e_2)(s)
=mat(-1,6;0,1).
$

On peut contrôler qu'il s'agit bien d'une symétrie car $A^2=I_2$.

== 2. Vérifier que $cal(B)=(u_1,u_2)$ est une base

Les vecteurs $u_1=(3,1)$ et $u_2=(1,0)$ ne sont pas colinéaires.

Une vérification par le déterminant donne

$
det(mat(3,1;1,0))=-1 !=0.
$

Donc $cal(B)=(u_1,u_2)$ est une famille libre à deux vecteurs dans un espace de dimension 2 : *c'est une base de $RR^2$*.

La matrice de passage formée par ces vecteurs exprimés dans la base canonique est

$
P=mat(3,1;1,0).
$

== 3. Matrice de $s$ dans la base $cal(B)$

Les deux vecteurs de la base sont adaptés aux deux droites :

- $u_1 in D_1$, donc $s(u_1)=u_1$ ;
- $u_2 in D_2$, donc $s(u_2)=-u_2$.

Leurs coordonnées dans $cal(B)$ sont

$
[s(u_1)]_cal(B)=mat(1;0),
quad
[s(u_2)]_cal(B)=mat(0;-1).
$

Ainsi,

$
A'="Mat"_cal(B)(s)=mat(1,0;0,-1).
$

C'est une matrice diagonale : la symétrie agit comme l'identité sur $D_1$ et comme l'opposé de l'identité sur $D_2$.

=== Vérification par changement de base

On a

$
P^(-1)=mat(0,1;1,-3).
$

La formule générale de changement de base donne

$
A'=P^(-1) A P
=mat(0,1;1,-3) mat(-1,6;0,1) mat(3,1;1,0)
=mat(1,0;0,-1).
$

Cela retrouve le résultat obtenu directement en utilisant la symétrie.

== 4. Déterminer l'image d'une droite

La quatrième question du sujet, non visible dans les notes manuscrites, porte sur

$
D=\{(x,y) in RR^2 | 2x-3y=0\}.
$

Cette droite est engendrée par $v=(3,2)$ car $2 dot 3-3 dot 2=0$ :

$
D="Vect"((3,2)).
$

L'image d'une droite vectorielle par une application linéaire est engendrée par l'image d'un vecteur directeur (sauf si celui-ci a une image nulle).

On calcule

$
s(3,2)=(6 dot 2-3,2)=(9,2).
$

Donc

$
s(D)="Vect"((9,2)).
$

Les coordonnées $(X,Y)$ de cette droite vérifient $X=9t$ et $Y=2t$ pour un réel $t$. On élimine le paramètre :

$
2X-9Y=0.
$

Ainsi,

$
s(D)=\{(X,Y) in RR^2 | 2X-9Y=0\}.
$

== Méthode à retenir

1. Identifier les deux sous-espaces supplémentaires et décomposer un vecteur quelconque en leurs composantes.
2. Écrire la symétrie en changeant uniquement le signe de la composante parallèle au second sous-espace.
3. Calculer ses images sur les vecteurs de la base canonique pour former la matrice $A$.
4. Choisir une base adaptée aux deux sous-espaces : la matrice y devient diagonale, avec des coefficients $1$ et $-1$.
5. Pour calculer l'image d'une droite, appliquer la matrice à un de ses vecteurs directeurs, puis en déduire son équation cartésienne.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les trois premières questions suivent les deux photographies de correction. La question 4 et son résultat sont des calculs reconstruits à partir de l'énoncé officiel ; ils ne sont pas attribués à une correction manuscrite.
]
