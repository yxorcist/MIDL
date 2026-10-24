// source-confidence: high
// source-note: TD01_systemes-lineaires.pdf (Ingénierie et programmation numériques, 2026–2027), exercice 5.
// source-reconstruction: résolution Cholesky complète calculée à partir de la matrice A et du vecteur b imprimés, indépendamment des notes manuscrites.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 5 — Résoudre un système par Cholesky

== Énoncé officiel

On considère le système $A x=b$ avec
$
A=mat(64,40,24;40,29,17;24,17,19),
quad
b=mat(1;1;1).
$

On demande le déterminant de $A$, puis la résolution par la méthode de Cholesky.

== 1. Vérifier la possibilité d'une décomposition de Cholesky

La matrice est symétrique. Les mineurs principaux dominants sont
$
Delta_1=64>0, quad Delta_2=64 dot 29-40^2=256>0,
$
et
$
Delta_3=det(A)=2304>0.
$
Par le critère de Sylvester, *$A$ est définie positive*. Elle admet donc une décomposition unique $A=L L^T$ avec $L$ triangulaire inférieure et diagonale strictement positive.

== 2. Calculer $L$

La décomposition de Cholesky donne
$
L=mat(8,0,0;5,2,0;3,1,3).
$

Vérification :
$
L L^T
=mat(64,40,24;40,29,17;24,17,19)=A.
$

En particulier,
$
det(A)=det(L)^2=(8 dot 2 dot 3)^2=2304.
$

== 3. Résoudre $L y=b$

On résout le premier système triangulaire :
$
cases(8y_1=1,
      5y_1+2y_2=1,
      3y_1+y_2+3y_3=1).
$
On obtient successivement
$
y_1=1/8, quad y_2=3/16, quad y_3=7/48.
$

== 4. Résoudre $L^T x=y$

On effectue la remontée dans
$
cases(8x_1+5x_2+3x_3=1/8,
      2x_2+x_3=3/16,
      3x_3=7/48).
$
D'où
$
x_3=7/144,quad x_2=5/72,quad x_1=-53/1152.
$

La solution unique est donc
$
x=mat(-53/1152;5/72;7/144).
$

Un remplacement direct dans le système initial redonne $A x=(1,1,1)^T$.

== Méthode à retenir

1. Vérifier la symétrie et le caractère défini positif de la matrice.
2. Factoriser $A=L L^T$.
3. Résoudre successivement $L y=b$ (descente) et $L^T x=y$ (remontée).
4. Vérifier $A x=b$.
