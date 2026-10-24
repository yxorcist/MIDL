// source-confidence: high
// source-note: photos 11482 (exercice 5, questions 1 à 4) et 11481 (fin de l'exercice 4), vérifiées avec l'énoncé officiel TD03_endomorphismes-changements-bases.pdf.
// source-reconstruction: on développe les produits matriciels et on résout la question 5 absente des photographies.
// source-verification: determinant de P = -1 ; Q=P^(-1) ; Q*P=P*Q=I_3 ; Mat_F(phi)=Q*A ; Mat_B(phi)=A*Q ; les deux dernières sont semblables.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 5 — Matrices d'un endomorphisme et changements de bases

== Données

Dans $RR^3$, on considère la famille $cal(F)=(v_1,v_2,v_3)$, où

$
v_1=(-1,1,0),
quad v_2=(2,0,1),
quad v_3=(0,1,1).
$

On note $cal(B)=(e_1,e_2,e_3)$ la base canonique.

L'application linéaire $phi:RR^3 -> RR^3$ est définie par

$
phi(v_1)=e_1,
quad
phi(v_2)=e_1-e_2,
quad
phi(v_3)=e_3.
$

== 1. Vérifier que $cal(F)$ est une base de $RR^3$

Soient $alpha,beta,gamma in RR$ tels que

$
alpha v_1+beta v_2+gamma v_3=0.
$

En développant,

$
cases(
  -alpha+2beta=0,
  alpha+gamma=0,
  beta+gamma=0.
)
$

On déduit successivement $gamma=-alpha$, $beta=alpha$, puis

$
-alpha+2alpha=alpha=0.
$

Par suite $alpha=beta=gamma=0$.

La famille $cal(F)$ est donc libre ; elle contient trois vecteurs dans un espace de dimension 3. *Elle est une base de $RR^3$.*

Autre vérification : la matrice de ses vecteurs en colonnes est

$
P=mat(
  -1,2,0;
  1,0,1;
  0,1,1
).
$

On calcule $det(P)=-1 !=0$.

== 2. Matrice de $phi$ avec deux bases différentes

=== 2(a). Pourquoi l'endomorphisme est-il unique ?

Une application linéaire est entièrement déterminée par l'image des vecteurs d'une base.

Comme $cal(F)$ est une base, chaque $x in RR^3$ s'écrit de manière unique

$
x=alpha v_1+beta v_2+gamma v_3.
$

La linéarité impose alors

$
phi(x)=alpha phi(v_1)+beta phi(v_2)+gamma phi(v_3).
$

Cela définit un unique endomorphisme.

=== 2(b). Matrice dans $cal(F)$ au départ et $cal(B)$ à l'arrivée

On note

$
A="Mat"_(cal(F),cal(B))(phi).
$

Les colonnes sont les coordonnées dans la *base d'arrivée $cal(B)$* des images des vecteurs de la *base de départ $cal(F)$*.

Or

$
[phi(v_1)]_cal(B)=mat(1;0;0),
$

$
[phi(v_2)]_cal(B)=mat(1;-1;0),
quad
[phi(v_3)]_cal(B)=mat(0;0;1).
$

Donc

$
A=mat(
  1,1,0;
  0,-1,0;
  0,0,1
).
$

*Attention :* $A$ n'est pas, en général, la matrice de $phi$ dans une seule et même base : ici les bases de départ et d'arrivée sont différentes.

== 3. Matrices de passage $P$ et $Q$

=== 3(a). Terminologie

On note

$
P="Mat"_(cal(F),cal(B))(id_(RR^3)),
$

$
Q="Mat"_(cal(B),cal(F))(id_(RR^3)).
$

Ces matrices sont les *matrices de passage* entre les deux bases, prises dans des sens opposés.

- $P$ transforme les coordonnées dans $cal(F)$ en coordonnées dans $cal(B)$.
- $Q$ transforme les coordonnées dans $cal(B)$ en coordonnées dans $cal(F)$.

=== 3(b). Calculer $P$

Les colonnes de $P$ sont les coordonnées des vecteurs $v_1,v_2,v_3$ dans la base canonique.

On a donc

$
P=mat(
  -1,2,0;
  1,0,1;
  0,1,1
).
$

Pour tout $x in RR^3$,

$
[x]_cal(B)=P[x]_cal(F).
$

=== 3(c). Calculer $Q$

Les deux matrices sont inverses :

$
Q=P^(-1).
$

En calculant l'inverse de $P$, par exemple par pivot de Gauss sur la matrice augmentée $(P mid I_3)$, on trouve

$
Q=mat(
  1,2,-2;
  1,1,-1;
  -1,-1,2
).
$

Les multiplications $P Q=Q P=I_3$ permettent de vérifier le résultat.

Pour tout $x in RR^3$,

$
[x]_cal(F)=Q[x]_cal(B).
$

== 4. Matrices de $phi$ dans une même base

=== 4(a). Matrice dans la base $cal(F)$

Pour $x in RR^3$,

$
[phi(x)]_cal(B)=A[x]_cal(F).
$

Comme $[phi(x)]_cal(F)=Q[phi(x)]_cal(B)$, on obtient

$
[phi(x)]_cal(F)=Q A[x]_cal(F).
$

Donc

$
"Mat"_cal(F)(phi)=Q A=P^(-1) A.
$

En calculant le produit :

$
"Mat"_cal(F)(phi)
=mat(
  1,-1,-2;
  1,0,-1;
  -1,0,2
).
$

=== 4(b). Matrice dans la base canonique $cal(B)$

On part de

$
[x]_cal(F)=Q[x]_cal(B).
$

Ainsi,

$
[phi(x)]_cal(B)=A Q[x]_cal(B).
$

Donc

$
"Mat"_cal(B)(phi)=A Q=A P^(-1)
$

$
=mat(
  2,3,-3;
  -1,-1,1;
  -1,-1,2
).
$

=== Contrôle des deux formules

Notons $M_F="Mat"_cal(F)(phi)$ et $M_B="Mat"_cal(B)(phi)$.

Les deux représentations vérifient

$
M_B=P M_F P^(-1),
$

car

$
P(Q A)P^(-1)=A P^(-1).
$

Les calculs concordent donc avec la formule générale de changement de base.

== 5. Quelles matrices sont semblables ? (reconstruction)

Cette question apparaît sur l'énoncé officiel, mais sa solution n'est pas visible sur les photographies.

=== 5(a). $M_F$ et $M_B$

*Oui*, ces matrices sont semblables :

$
M_B=P M_F P^(-1),
$

avec $P$ inversible. Elles représentent le *même endomorphisme* dans deux bases différentes.

On peut aussi vérifier qu'elles ont même trace et même déterminant :

$
"tr"(M_F)="tr"(M_B)=3,
$

$
det(M_F)=det(M_B)=1.
$

Ces égalités sont des conséquences de la similitude, mais elles ne suffisent pas à la prouver à elles seules.

=== 5(b). $A$ et $M_B$

*Non*, elles ne sont pas semblables dans cet exercice.

La matrice $A$ représente l'application avec $cal(F)$ au départ et $cal(B)$ à l'arrivée, contrairement à $M_B$ où la base canonique est utilisée des deux côtés.

D'ailleurs,

$
"tr"(A)=1
quad "alors que" quad
"tr"(M_B)=3.
$

Et également

$
det(A)=-1,
quad
det(M_B)=1.
$

Deux matrices semblables doivent avoir la même trace et le même déterminant. C'est impossible ici.

== Méthode à retenir

1. Vérifier qu'une famille de vecteurs est une base : famille libre de taille maximale, ou déterminant non nul.
2. Pour une matrice à bases différentes, *chaque colonne est écrite dans la base d'arrivée*.
3. La matrice $P$ formée par les nouveaux vecteurs dans la base canonique vérifie $[x]_cal(B)=P[x]_cal(F)$.
4. L'inverse $Q=P^(-1)$ permet le trajet inverse.
5. Si $A="Mat"_(cal(F),cal(B))(phi)$, alors

   $
   "Mat"_cal(F)(phi)=P^(-1) A
   quad "et" quad
   "Mat"_cal(B)(phi)=A P^(-1).
   $

6. Deux matrices représentant un *même endomorphisme dans deux bases complètes* sont semblables. La similitude conserve notamment la trace et le déterminant.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les données, la résolution de l'indépendance, les matrices $A$, $P$ et $Q$ ainsi que les formules de la question 4 proviennent des photographies. Les produits numériques détaillés et la question 5 sont reconstruits à partir de l'énoncé imprimé et vérifiés par calcul.
]
