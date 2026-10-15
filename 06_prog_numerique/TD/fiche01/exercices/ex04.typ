// source-confidence: high
// source-note: TD 1, exercice 4 ; données relues sur les photos 10813 et 10814.
// source-note: calculs d'élimination et résultat vérifiés indépendamment.
// source-uncertainty: le déterminant -4 noté dans la copie est incorrect pour la matrice affichée ; la valeur correcte est -10.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 4 — Déterminant et résolution de système

On considère le système $A x=b$ avec

$
A=mat(
  2,4,-2,0;
  1,2,0,1;
  3,-1,1,2;
  0,-1,2,1
),
quad
x=mat(x_1;x_2;x_3;x_4),
quad
b=mat(-6;0;8;6).
$

== 1. Écriture matricielle

Le système s'écrit

$
cases(
  2x_1+4x_2-2x_3=-6,
  x_1+2x_2+x_4=0,
  3x_1-x_2+x_3+2x_4=8,
  -x_2+2x_3+x_4=6.
)
$

== 2. Déterminant de $A$

Pour réduire la matrice, on échange d'abord $L_1$ et $L_2$, puis $L_2$ et $L_4$.
On multiplie ensuite la deuxième ligne par $-1$ et on élimine sous les pivots.

Les deux permutations changent deux fois le signe du déterminant ; la multiplication par $-1$ le change encore une fois. On obtient finalement une matrice triangulaire dont les pivots sont

$
1, 1, -13, -10/13.
$

Le produit de ces pivots vaut $10$. En tenant compte des opérations,

$
det(A)=-10 != 0.
$

Donc $A$ est inversible et le système admet une unique solution.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Vérification de la copie.* Un calcul manuscrit conclut à $det(A)=-4$.
  Ce résultat est incorrect pour la matrice transcrite. La valeur vérifiée est
  $-10$ ; la conclusion « matrice inversible » reste vraie.
]

== 3. Élimination de Gauss

La matrice augmentée de départ est

$
mat(
  2,4,-2,0,-6;
  1,2,0,1,0;
  3,-1,1,2,8;
  0,-1,2,1,6
).
$

On applique successivement :

- $L_1 ↔ L_2$ ;
- $L_2 ↔ L_4$ ;
- $L_2 <- -L_2$ ;
- $L_3 <- L_3-3L_1$ et $L_4 <- L_4-2L_1$ ;
- $L_3 <- L_3+7L_2$.

On obtient

$
mat(
  1,2,0,1,0;
  0,1,-2,-1,-6;
  0,0,-13,-8,-34;
  0,0,-2,-2,-6
).
$

Pour éliminer la troisième variable de la dernière ligne, on applique

$
L_4 <- L_4-(2/13)L_3.
$

La forme triangulaire devient

$
mat(
  1,2,0,1,0;
  0,1,-2,-1,-6;
  0,0,-13,-8,-34;
  0,0,0,-10/13,-10/13
).
$

La remontée donne successivement

$
x_4=1,
quad
-13x_3-8=-34
=> x_3=2,
$

$
x_2-2 dot 2-1=-6
=> x_2=-1,
$

et

$
x_1+2(-1)+1=0
=> x_1=1.
$

Ainsi,

$
x=mat(1;-1;2;1).
$

== 4. Vérification

Un contrôle direct donne

$
A mat(1;-1;2;1)=mat(-6;0;8;6)=b.
$

La solution finale écrite dans les notes manuscrites est donc correcte.
