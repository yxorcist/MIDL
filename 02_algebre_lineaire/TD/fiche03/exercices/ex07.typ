// source-confidence: high for official statement, basis, linearity, and first two images.
// source-note: official TD03_endomorphismes-changements-bases.pdf, exercice 7, questions 1–3.
// source-note: photo « WhatsApp Image 2026-11-22 at 10.41.07 PM (1).jpeg » : démonstration de linéarité, images des polynômes, calculs en bases B et C.
// source-correction: la photo écrit phi((X-1)^2)=-4 X^2+12 X-8 (et une dernière colonne erronée). Calcul correct : -8 X^2+12 X-4 ; les matrices ci-dessous utilisent cette valeur.
// source-verification: identités polynomiales et matrice de changement de base contrôlées par calcul algébrique indépendant.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 7 — Endomorphisme de l'espace des polynômes

On considère l'espace vectoriel

$
E = RR_2[X]
$

des polynômes réels de degré au plus $2$, et la famille

$
cal(B) = (1, X+1, (X-1)^2).
$

On définit l'application

$
phi(P) = 2(X-1)P - (X^2+2X-1)P'.
$

== 1. Vérifier que $cal(B)$ est une base de $E$

Comme $dim(E)=3$, il suffit de montrer que les trois polynômes sont linéairement indépendants.

Supposons que

$
alpha dot 1 + beta (X+1) + gamma (X-1)^2 = 0.
$

En développant,

$
gamma X^2 + (beta-2gamma)X + (alpha+beta+gamma) = 0.
$

Le polynôme nul a tous ses coefficients nuls :

$
cases(
  gamma=0,
  beta-2gamma=0,
  alpha+beta+gamma=0.
)
$

Donc $alpha=beta=gamma=0$. La famille $cal(B)$ est libre et contient trois éléments : *c'est une base de $E$*.

On peut également former la matrice des coordonnées de la famille dans la base canonique $cal(C)=(1,X,X^2)$ :

$
P=mat(
  1,1,1;
  0,1,-2;
  0,0,1
).
$

Elle est triangulaire supérieure, avec $det(P)=1!=0$, ce qui confirme le résultat.

== 2. Montrer que $phi$ est linéaire et prend ses valeurs dans $E$

Soient $P,Q in E$ et $lambda in RR$. Par linéarité de la dérivation :

$
phi(lambda P+Q)
&= 2(X-1)(lambda P+Q) - (X^2+2X-1)(lambda P'+Q') \
&= lambda (2(X-1)P-(X^2+2X-1)P') \
&quad + 2(X-1)Q-(X^2+2X-1)Q' \
&= lambda phi(P)+phi(Q).
$

Il reste à vérifier que les images sont bien de degré au plus $2$.

Écrivons $P(X)=aX^2+bX+c$. En développant la définition de $phi$, les termes en $X^3$ s'annulent :

$
phi(P)(X)
= (b-6a)X^2 + (2a-4b+2c)X + (b-2c).
$

C'est un polynôme de degré au plus $2$. Ainsi *$phi$ est un endomorphisme de $RR_2[X]$*.

== 3. Matrice de $phi$ dans $cal(B)$ : première méthode

Calculons les images des trois vecteurs de la base et exprimons-les dans $cal(B)$.

=== Image de $1$

$
phi(1) = 2(X-1) = -4 + 2(X+1).
$

Donc

$
[phi(1)]_cal(B)=mat(-4;2;0).
$

=== Image de $X+1$

Comme $(X+1)'=1$,

$
phi(X+1)
&=2(X-1)(X+1)-(X^2+2X-1) \
&=X^2-2X-1 \
&=(X-1)^2-2.
$

D'où

$
[phi(X+1)]_cal(B)=mat(-2;0;1).
$

=== Image de $(X-1)^2$ — calcul corrigé

La photo manuscrite comporte ici une erreur arithmétique. Puisque $((X-1)^2)'=2(X-1)$, on obtient

$
phi((X-1)^2)
&=2(X-1)^3-2(X-1)(X^2+2X-1) \
&=2(X-1)((X-1)^2-(X^2+2X-1)) \
&=2(X-1)(-4X+2) \
&=-8X^2+12X-4.
$

En coordonnées dans $cal(B)$,

$
-8X^2+12X-4
=8-4(X+1)-8(X-1)^2.
$

Donc

$
[phi((X-1)^2)]_cal(B)=mat(8;-4;-8).
$

La matrice cherchée a pour colonnes ces trois vecteurs :

$
"Mat"_cal(B)(phi)=
mat(
  -4,-2,8;
  2,0,-4;
  0,1,-8
).
$

== 4. Deuxième méthode : calcul dans la base canonique

Posons $cal(C)=(1,X,X^2)$.

Les images des vecteurs de $cal(C)$ sont :

$
phi(1)=-2+2X,
$

$
phi(X)=1-4X+X^2,
$

$
phi(X^2)=2X-6X^2.
$

Par conséquent,

$
"Mat"_cal(C)(phi)=
mat(
  -2,1,0;
  2,-4,2;
  0,1,-6
).
$

La matrice de passage, avec pour colonnes $[1]_cal(C)$, $[X+1]_cal(C)$ et $[(X-1)^2]_cal(C)$, est

$
P=mat(
  1,1,1;
  0,1,-2;
  0,0,1
).
$

Son inverse est

$
P^(-1)=mat(
  1,-1,-3;
  0,1,2;
  0,0,1
).
$

La formule de changement de base donne

$
"Mat"_cal(B)(phi) = P^(-1) "Mat"_cal(C)(phi) P.
$

On retrouve exactement

$
"Mat"_cal(B)(phi)=
mat(
  -4,-2,8;
  2,0,-4;
  0,1,-8
).
$

== Point d'attention pour la révision

Dans la photo, le calcul de $phi((X-1)^2)$ donne une expression de degré $2$ mais *avec des coefficients erronés*. La vérification par la dérivée, puis le calcul indépendant par la matrice dans la base canonique, produisent tous deux

$
phi((X-1)^2)=-8X^2+12X-4.
$

La troisième colonne de la matrice corrigée est donc $(8,-4,-8)^T$, et non celle recopiée dans les notes.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* L'énoncé officiel fixe les bases et la définition de $phi$. La photo contient les calculs de la linéarité, des trois images et du changement de base. La dernière image de la base, erronée dans la photo, a été corrigée par calcul symbolique ; les deux méthodes indépendantes donnent la même matrice finale.
]
