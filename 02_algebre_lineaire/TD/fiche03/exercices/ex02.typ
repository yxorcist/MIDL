// source-confidence: high
// source-note: photographies 10902 (questions 1-2) et 11280, 11282 (rappel de l'image), recoupées avec l'énoncé officiel TD03_endomorphismes-changements-bases.pdf.
// source-note: le calcul de A²=A et le rang 2 sont confirmés symboliquement ; noyau et image explicités comme compléments dérivés des données de la photo.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2 — Reconnaître une projection par sa matrice

Soit $phi$ l'endomorphisme de $RR^3$ représenté, dans la base canonique, par

$
A=mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
).
$

On souhaite montrer que $phi$ est une projection, puis déterminer les dimensions de son image et de son noyau.

== 1. Vérifier la propriété de projection

Un produit matriciel donne

$
A^2=
mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
)
mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
)
=
mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
)
=A.
$

Ainsi,

$
"Mat"(phi compose phi)=A^2=A="Mat"(phi).
$

Par unicité de l'application linéaire représentée par une matrice dans des bases fixées,

$
phi compose phi=phi.
$

Donc *$phi$ est une projection*.

== 2. Déterminer le rang

Les notes procèdent par échelonnement. On peut aussi vérifier le rang directement.

Les colonnes vérifient

$
C_3=C_1-C_2/2.
$

Donc

$
"rg"(A)<=2.
$

D'autre part, le mineur formé par les deux premières lignes et les deux premières colonnes vaut

$
det(mat(-3,2;2,0))=-4 != 0.
$

Donc

$
"rg"(A)>=2.
$

Ainsi,

$
"rg"(phi)="rg"(A)=2.
$

Par conséquent,

$
dim("Im"(phi))=2,
$

et, par le théorème du rang,

$
dim("Ker"(phi))=3-2=1.
$

L'image est donc un plan vectoriel de $RR^3$ ; le noyau est une droite vectorielle.

== 3. Équation du plan et direction de la droite (nouvelle photographie)

L'énoncé demande une équation cartésienne du plan $P="Im"(phi)$ et un vecteur directeur de la droite $D="Ker"(phi)$.

D'après la question précédente, $P$ est engendré par les deux colonnes indépendantes

$
v_1=(-3,2,4),
quad
v_2=(2,0,-2).
$

Ces deux vecteurs vérifient l'équation

$
2x-y+2z=0.
$

En effet,

$
2(-3)-2+2 dot 4=0
$

et

$
2 dot 2-0+2(-2)=0.
$

Le plan d'équation $2x-y+2z=0$ contient donc le plan $P$, et ces deux sous-espaces ont dimension $2$. Par conséquent, ils sont égaux :

$
P=\{(x,y,z) in RR^3 : 2x-y+2z=0\}.
$

Pour trouver la droite $D$, on résout $A(x,y,z)^T=0$ :

$
cases(
  -3x+2y-4z=0,
  2x+2z=0,
  4x-2y+5z=0.
)
$

La deuxième équation donne $x=-z$, puis la première donne $2y=z$. Ainsi

$
(x,y,z)=t(-2,1,2),
quad t in RR.
$

Un vecteur directeur de $D$ est donc

$
d=(-2,1,2),
quad D="Vect"((-2,1,2)).
$

On vérifie que $d$ n'est pas dans $P$, puisque $2(-2)-1+2 dot 2=-1 !=0$ : la droite $D$ est supplémentaire du plan $P$.

*Interprétation géométrique :* $phi$ projette tout vecteur de $RR^3$ sur le plan $2x-y+2z=0$ selon la direction $(-2,1,2)$.

== 4. Conclusion géométrique

Comme $phi$ est une projection, on sait que

$
RR^3="Im"(phi) "⊕" "Ker"(phi).
$

Donc $phi$ est la projection *sur le plan $"Im"(phi)$ parallèlement à la droite $"Ker"(phi)$*.

=== Complément de calcul — Bases possibles

On peut choisir pour base du plan image les deux premières colonnes de $A$ :

$
"Im"(phi)="Vect"(
  mat(-3;2;4),
  mat(2;0;-2)
).
$

La résolution de $A x=0$ fournit notamment

$
"Ker"(phi)="Vect"(mat(-2;1;2)).
$

Ces deux descriptions sont cohérentes avec les dimensions obtenues ci-dessus.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* La source manuscrite calcule $A^2=A$, indique $"rg"(A)=2$ et interprète image et noyau comme plan et droite. Les bases explicites de la dernière partie sont une vérification supplémentaire, non une transcription du tableau.
]
