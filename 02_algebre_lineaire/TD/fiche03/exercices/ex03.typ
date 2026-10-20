// source-confidence: high
// source-note: photos manuscrites 11280 et 11282, TD03 exercice 3, questions 1 à 3.
// source-note: sujet officiel TD03_endomorphismes-changements-bases.pdf, exercice 3, questions 1 à 4.
// source-reconstruction: question 4 absente de la photo ; solution calculée à partir de la matrice de symétrie et de l'équation de D.
// source-verification: s(x,y)=(6y-x,y), A²=I, matrice dans B = diag(1,-1), s(3,2)=(9,2).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3 — Symétrie et changement de base

== Données

Dans $RR^2$, on considère les vecteurs

$
u_1=(3,1), quad u_2=(1,0),
$

et les droites

$
D_1=\{(x,y) in RR^2 : x-3y=0\}
="Vect"((3,1)),
$

$
D_2=\{(x,y) in RR^2 : y=0\}
="Vect"((1,0)).
$

On note $s$ la *symétrie par rapport à $D_1$ parallèlement à $D_2$*.

Tout vecteur $u=(x,y)$ se décompose suivant ces droites :

$
u=(3y,y)+(x-3y,0).
$

Par définition, $s$ conserve la composante dans $D_1$ et change le signe de la composante dans $D_2$. Ainsi

$
s(x,y)=(3y,y)-(x-3y,0)=(6y-x,y).
$

== 1. Matrice dans la base canonique

Notons $e_1=(1,0)$ et $e_2=(0,1)$ les vecteurs de la base canonique.

Leurs images sont

$
s(e_1)=s(1,0)=(-1,0),
$

$
s(e_2)=s(0,1)=(6,1).
$

Les colonnes de la matrice sont les coordonnées de ces images dans la base canonique :

$
A="Mat"(s)=mat(-1,6;0,1).
$

*Contrôle :* la matrice d'une symétrie satisfait $A^2=I_2$. Ici,

$
mat(-1,6;0,1)mat(-1,6;0,1)=mat(1,0;0,1).
$

== 2. Montrer que $cal(B)=(u_1,u_2)$ est une base

On forme la matrice dont les colonnes sont $u_1$ et $u_2$ :

$
P=mat(3,1;1,0).
$

Son déterminant vaut

$
det(P)=3 dot 0-1 dot 1=-1 != 0.
$

Les deux vecteurs sont donc linéairement indépendants dans $RR^2$. Comme ils sont au nombre de deux, ils forment une *base de $RR^2$*.

== 3. Matrice de $s$ dans la base $cal(B)$

On remarque que

$
u_1=(3,1) in D_1,
quad u_2=(1,0) in D_2.
$

La symétrie fixe les vecteurs de $D_1$ et change le signe des vecteurs de $D_2$. Donc

$
s(u_1)=u_1=1 dot u_1+0 dot u_2,
$

$
s(u_2)=-u_2=0 dot u_1-1 dot u_2.
$

Les colonnes sont à présent les coordonnées des images *dans la base $cal(B)$*. On obtient

$
A'="Mat"_cal(B)(s)=mat(1,0;0,-1).
$

Cette matrice est diagonale : la base $cal(B)$ est adaptée à la symétrie.

=== Vérification par changement de base

Avec $P=mat(3,1;1,0)$, on a

$
P^(-1)=mat(0,1;1,-3).
$

On retrouve

$
P^(-1) A P=mat(1,0;0,-1)=A'.
$

== 4. Déterminer l'image de la droite $D$ (complément reconstruit)

Le sujet donne

$
D=\{(x,y) in RR^2 : 2x-3y=0\}.
$

Cette droite est engendrée par $(3,2)$, car $2 dot 3-3 dot 2=0$ :

$
D="Vect"((3,2)).
$

Une application linéaire envoie une droite engendrée par $v$ sur l'espace engendré par l'image de $v$. Donc

$
s(D)="Vect"(s(3,2)).
$

Or, d'après la formule de la question 1,

$
s(3,2)=(6 dot 2-3,2)=(9,2).
$

Ainsi

$
s(D)="Vect"((9,2)).
$

Un vecteur $(x,y)$ appartient à cette droite si et seulement si il est de la forme $(9t,2t)$, soit

$
2x-9y=0.
$

*Réponse :*

$
s(D)=\{(x,y) in RR^2 : 2x-9y=0\}.
$

== Méthode de résolution

1. Décomposer le vecteur selon les deux droites de la symétrie.
2. Appliquer $s(u_1+u_2)=u_1-u_2$.
3. Calculer les images des vecteurs canoniques : ce sont les colonnes de $A$.
4. Vérifier qu'une famille est une base en calculant son déterminant.
5. Exprimer les images des *nouveaux vecteurs de base* dans cette nouvelle base pour obtenir $A'$.
6. Pour obtenir l'image d'une droite, choisir un vecteur directeur, le transformer par $s$, puis écrire l'équation de la droite engendrée par le vecteur obtenu.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Questions 1 à 3 : démarche manuscrite des photos 11280 et 11282, complétée par des contrôles algébriques. Question 4 : résolution nouvelle inférée de l'énoncé officiel, absente de la correction photographiée.
]
