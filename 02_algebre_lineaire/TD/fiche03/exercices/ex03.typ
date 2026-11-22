// source-confidence: high
// source-note: résolution manuscrite du deuxième essai de l'étudiant (photos partagées dans la conversation), questions 1 à 4.
// source-note: sujet officiel TD03_endomorphismes-changements-bases.pdf, exercice 3, questions 1 à 4.
// source-note: les calculs corrigés du deuxième essai sont confirmés pour les quatre questions ; la vérification P^(-1) A P est un complément.
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

On vérifie d'abord que $D_1$ et $D_2$ sont supplémentaires. En effet,
$
D_1 "∩" D_2 = \{(0,0)\},
$
car $y=0$ et $x-3y=0$ imposent $x=y=0$. De plus,
$
dim(D_1)+dim(D_2)=1+1=2=dim(RR^2).
$
Donc $RR^2=D_1 "⊕" D_2$.

Tout vecteur $u=(x,y)$ se décompose de manière unique suivant ces droites :

$
u=(3y,y)+(x-3y,0).
$

En posant $(x,y)=a(3,1)+b(1,0)$, on obtient
$
cases(x=3a+b, y=a)
quad => quad
cases(a=y, b=x-3y).
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

En utilisant $s(x,y)=(6y-x,y)$, on calcule
$
s(u_1)=s(3,1)=(3,1),
quad
s(u_2)=s(1,0)=(-1,0).
$

Pour construire la matrice dans $cal(B)$, on exprime *chaque image dans la nouvelle base*.

Pour $s(u_1)=(3,1)=alpha u_1+beta u_2$ :
$
cases(3=3alpha+beta, 1=alpha)
quad => quad
(alpha,beta)=(1,0).
$

Pour $s(u_2)=(-1,0)=alpha u_1+beta u_2$ :
$
cases(-1=3alpha+beta, 0=alpha)
quad => quad
(alpha,beta)=(0,-1).
$

Ainsi,
$
[s(u_1)]_cal(B)=mat(1;0),
quad
[s(u_2)]_cal(B)=mat(0;-1).
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

== 4. Déterminer l'image de la droite $D$

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

Un vecteur $(x,y)$ appartient à cette droite si et seulement s'il est de la forme $(9t,2t)$, avec $t in RR$. Comme $x=9t$ et $y=2t$, on élimine $t$ pour obtenir

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
  *Provenance.* Les quatre questions suivent la résolution manuscrite du deuxième essai de l'étudiant, vérifiée à partir de l'énoncé officiel. La vérification matricielle $P^(-1) A P=A'$ et le contrôle $A^2=I_2$ sont des compléments de vérification.
]
