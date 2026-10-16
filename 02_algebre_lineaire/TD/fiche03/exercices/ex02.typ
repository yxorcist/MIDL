// source-confidence: high
// source-note: photographie 10902, exercice 2 de TD03.
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

== 3. Conclusion géométrique

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
