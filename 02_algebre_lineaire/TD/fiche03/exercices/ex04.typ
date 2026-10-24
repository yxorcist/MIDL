// source-confidence: high
// source-note: photographies manuscrites 11481 (feuille de droite) et 11482 (début de feuille de gauche), recoupées avec l'énoncé officiel TD03_endomorphismes-changements-bases.pdf, exercice 4.
// source-reconstruction: on développe les changements de coordonnées, on vérifie la matrice inverse et on corrige la lisibilité des dernières coordonnées.
// source-verification: la matrice de passage est inversible, et les trois vecteurs demandés sont vérifiés par multiplication matricielle.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 4 — Base et coordonnées dans $RR^4$

== Énoncé

On considère dans $RR^4$ les quatre vecteurs :

$
u_1=(1,0,0,0), quad
u_2=(1,1,0,0),
$

$
u_3=(1,1,1,0), quad
u_4=(1,1,1,1).
$

On note $cal(B)=(u_1,u_2,u_3,u_4)$ et $cal(C)$ la base canonique de $RR^4$.

== 1. Vérifier que $cal(B)$ est une base

Pour $alpha,beta,gamma,delta in RR$, supposons

$
alpha u_1+beta u_2+gamma u_3+delta u_4=0.
$

L'égalité coordonnée par coordonnée donne

$
cases(
  alpha+beta+gamma+delta=0,
  beta+gamma+delta=0,
  gamma+delta=0,
  delta=0.
)
$

En remontant à partir de la dernière ligne, on obtient successivement

$
delta=0,
quad gamma=0,
quad beta=0,
quad alpha=0.
$

La famille est libre. Elle contient quatre vecteurs dans un espace de dimension $4$ : *c'est une base de $RR^4$*.

=== Vérification matricielle

Les colonnes des quatre vecteurs dans la base canonique donnent la matrice

$
P=mat(
  1,1,1,1;
  0,1,1,1;
  0,0,1,1;
  0,0,0,1
).
$

Cette matrice triangulaire supérieure a pour déterminant

$
det(P)=1 dot 1 dot 1 dot 1=1 != 0.
$

Elle est donc inversible, ce qui constitue une deuxième preuve que $cal(B)$ est une base.

== 2. Coordonnées dans la base canonique

Le sujet donne les coordonnées du vecteur $v$ dans $cal(B)$ :

$
[v]_cal(B)=mat(1;1;1;1).
$

Cela signifie

$
v=u_1+u_2+u_3+u_4.
$

En additionnant,

$
v=(1,0,0,0)+(1,1,0,0)+(1,1,1,0)+(1,1,1,1)
$

$
=(4,3,2,1).
$

Donc

$
[v]_cal(C)=mat(4;3;2;1).
$

*Méthode matricielle :* $[v]_cal(C)=P[v]_cal(B)$, ce qui fournit le même résultat.

== 3. Coordonnées de trois vecteurs dans $cal(B)$

Un vecteur $w=(a,b,c,d)$ s'écrit de manière unique

$
w=lambda_1 u_1+lambda_2 u_2+lambda_3 u_3+lambda_4 u_4.
$

En identifiant les coordonnées,

$
cases(
  a=lambda_1+lambda_2+lambda_3+lambda_4,
  b=lambda_2+lambda_3+lambda_4,
  c=lambda_3+lambda_4,
  d=lambda_4.
)
$

On résout en remontant :

$
lambda_4=d,
quad lambda_3=c-d,
$

$
lambda_2=b-c,
quad lambda_1=a-b.
$

On dispose donc de la formule générale

$
[w]_cal(B)=mat(a-b;b-c;c-d;d).
$

=== Premier vecteur : $(1,0,0,0)$

$
[(1,0,0,0)]_cal(B)=mat(1;0;0;0).
$

Ce résultat est immédiat puisque $(1,0,0,0)=u_1$.

=== Deuxième vecteur : $(0,0,0,1)$

$
[(0,0,0,1)]_cal(B)=mat(0;0;-1;1).
$

En effet,

$
(0,0,0,1)=u_4-u_3.
$

=== Troisième vecteur : $(1,-3,2,4)$

On applique la formule générale avec $a=1$, $b=-3$, $c=2$, $d=4$ :

$
[(1,-3,2,4)]_cal(B)
=mat(
  1-(-3);
  -3-2;
  2-4;
  4
)
=mat(4;-5;-2;4).
$

Vérification directe :

$
4u_1-5u_2-2u_3+4u_4=(1,-3,2,4).
$

== 4. Méthode de la matrice inverse

La matrice de passage de la base $cal(B)$ vers la base canonique est

$
P=mat(
  1,1,1,1;
  0,1,1,1;
  0,0,1,1;
  0,0,0,1
).
$

Son inverse est

$
P^(-1)=mat(
  1,-1,0,0;
  0,1,-1,0;
  0,0,1,-1;
  0,0,0,1
).
$

On vérifie que $P^(-1)P=I_4$.

Pour tout $w in RR^4$,

$
[w]_cal(C)=P[w]_cal(B),
quad
[w]_cal(B)=P^(-1)[w]_cal(C).
$

Les colonnes de $P$ expriment les *vecteurs de la nouvelle base dans l'ancienne*, tandis que les colonnes de $P^(-1)$ expriment les vecteurs de la base canonique dans $cal(B)$.

== À retenir

Pour calculer des coordonnées :

1. Construire $P$ à l'aide des vecteurs de la nouvelle base écrits dans la base canonique.
2. Vérifier que $P$ est inversible.
3. Pour passer des coordonnées dans $cal(B)$ aux coordonnées canoniques, multiplier par $P$.
4. Pour passer des coordonnées canoniques à celles de $cal(B)$, multiplier par $P^(-1)$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les réponses aux trois questions et les deux méthodes de calcul des coordonnées figurent sur les photographies. Le système général, la matrice inverse explicite et les vérifications sont des développements reconstitués à partir de l'énoncé et des notes.
]
