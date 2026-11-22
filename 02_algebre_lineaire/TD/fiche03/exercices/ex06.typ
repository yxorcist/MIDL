// source-confidence: high
// source-note: énoncé officiel AL TD03_endomorphismes-changements-bases.pdf, exercice 6, question 1–5.
// source-note: photo « WhatsApp Image 2026-11-22 at 10.41.07 PM.jpeg » : matrice de passage, inverse, conjugaison, stabilité.
// source-note: haut de « WhatsApp Image 2026-11-22 at 10.41.07 PM (1).jpeg » : trace égale à 3, déterminant nul.
// source-verification: déterminants, inverse, conjugaison, images des vecteurs et trace calculés indépendamment.
// source-reconstruction: démonstration complète de la base et justification du déterminant rédigées à partir du sujet.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 6 — Changement de base et sous-espaces stables

Soit $phi$ l'endomorphisme de $RR^4$ dont la matrice dans la base canonique $cal(B)$ est

$
M = mat(
  1, 0, 1, 0;
  -1, 2, 0, 1;
  1, 0, 1, 0;
  1, 0, 2, -1
).
$

On considère $cal(F) = (u_1,u_2,u_3,u_4)$ avec

$
u_1 = mat(1;1;0;0), quad
u_2 = mat(0;0;1;1),
$

$
u_3 = mat(0;1;0;0), quad
u_4 = mat(0;0;0;1).
$

== 1. Démontrer que $cal(F)$ est une base de $RR^4$

Rangeons les coordonnées des $u_i$ dans les colonnes d'une matrice :

$
P = mat(
  1, 0, 0, 0;
  1, 0, 1, 0;
  0, 1, 0, 0;
  0, 1, 0, 1
).
$

On calcule $det(P) = -1 != 0$. Les quatre vecteurs sont donc linéairement indépendants dans l'espace de dimension $4$. *La famille $cal(F)$ est une base.*

On peut également vérifier directement que toute relation
$
a u_1 + b u_2 + c u_3 + d u_4 = 0
$
impose, en lisant successivement les coordonnées, $a=0$, $b=0$, $c=0$ et $d=0$.

== 2. Matrices de passage

La matrice formée par les colonnes $[u_i]_cal(B)$ est, conformément à la convention du cours, la matrice de passage de $cal(B)$ vers $cal(F)$ :

$
P_(cal(B) -> cal(F))
= P
= mat(
  1, 0, 0, 0;
  1, 0, 1, 0;
  0, 1, 0, 0;
  0, 1, 0, 1
).
$

*Attention à l'orientation des coordonnées :* cette matrice transforme les coordonnées *dans $cal(F)$* en coordonnées *dans $cal(B)$* :

$
[v]_cal(B) = P [v]_cal(F).
$

La matrice de passage réciproque est l'inverse :

$
P_(cal(F) -> cal(B))
= P^(-1)
= mat(
  1, 0, 0, 0;
  0, 0, 1, 0;
  -1, 1, 0, 0;
  0, 0, -1, 1
).
$

On peut l'obtenir par le pivot de Gauss sur la matrice augmentée $(P | I_4)$, ou vérifier directement $P P^(-1) = I_4$.

== 3. Matrice de $phi$ dans la base $cal(F)$

La formule du changement de base donne

$
"Mat"_cal(F)(phi)
= P^(-1) M P.
$

Par multiplication matricielle, on trouve

$
"Mat"_cal(F)(phi)
= mat(
  1, 1, 0, 0;
  1, 1, 0, 0;
  0, 0, 2, 1;
  0, 0, 0, -1
).
$

Pour contrôler les colonnes, on peut aussi calculer directement les images des vecteurs de $cal(F)$ :

$
phi(u_1) = u_1 + u_2,
quad
phi(u_2) = u_1 + u_2,
$

$
phi(u_3) = 2 u_3,
quad
phi(u_4) = u_3 - u_4.
$

Les coordonnées de ces quatre images sont précisément les colonnes de la matrice ci-dessus.

== 4. Stabilité de deux sous-espaces

On pose

$
E = "Vect"(u_1,u_2),
quad
F = "Vect"(u_3,u_4).
$

Pour $v = a u_1 + b u_2 in E$, la linéarité donne

$
phi(v) = a (u_1+u_2) + b (u_1+u_2)
= (a+b)u_1 + (a+b)u_2 in E.
$

Donc *$E$ est stable par $phi$*.

De même, si $w = c u_3 + d u_4 in F$,

$
phi(w) = 2c u_3 + d(u_3-u_4)
= (2c+d)u_3 - d u_4 in F.
$

Donc *$F$ est stable par $phi$*.

*Lecture matricielle :* la matrice dans la base $cal(F)$ est *diagonale par blocs* :

$
"Mat"_cal(F)(phi) =
mat(
  1,1,0,0;
  1,1,0,0;
  0,0,2,1;
  0,0,0,-1
).
$

Les blocs hors diagonale sont nuls ; les deux premiers vecteurs de base ne donnent, par $phi$, aucune composante selon les deux derniers, et réciproquement.

== 5. Trace et déterminant de $phi$

La trace et le déterminant sont invariants par changement de base, car les deux matrices représentent le même endomorphisme et sont semblables.

La trace se lit immédiatement :

$
"tr"(phi) = "tr"(M) = 1+2+1-1 = 3.
$

Pour le déterminant, les première et troisième lignes de $M$ sont identiques. Donc

$
det(phi) = det(M)=0.
$

On retrouve ce résultat avec la matrice dans $cal(F)$ : le premier bloc $mat(1,1;1,1)$ a un déterminant nul.

*Conclusion :* $phi$ n'est pas inversible, $det(phi)=0$ et $"tr"(phi)=3$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Énoncé et données vérifiés sur la fiche officielle. Les photos montrent les deux matrices de passage, le calcul de $P^(-1) M P$ et les images des $u_i$. La preuve détaillée de l'indépendance et les justifications explicites de la stabilité et du déterminant ont été complétées et vérifiées indépendamment.
]
