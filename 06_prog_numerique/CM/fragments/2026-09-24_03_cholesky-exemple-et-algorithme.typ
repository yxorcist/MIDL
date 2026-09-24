// source-confidence: high
// source-confidence-note: worked Cholesky example verified against classroom board photo 2026-09-24.

#import "../style.typ": *

= Cholesky — exemple et schéma algorithmique

Considérons

$
A = mat(
  1, 1, 1;
  1, 2, 2;
  1, 2, 3;
).
$

Pour $x = (x_1, x_2, x_3)^T$, les notes calculent

$
x^T A x
=
(x_1 + x_2 + x_3)^2
+
(x_2 + x_3)^2
+
x_3^2
> 0.
$

La matrice est donc utilisée comme exemple pour la factorisation

$
A = R^T R.
$

Le système

$
A x = b
$

devient alors

$
R^T R x = b.
$

En introduisant un vecteur intermédiaire $y$, la résolution se fait en deux systèmes triangulaires :

$
cases(
  R^T y = b,
  R x = y,
)
$

== Début du calcul de $R$

Avec $R$ triangulaire supérieure,

$
R =
mat(
  r_(1,1), r_(1,2), r_(1,3);
  0, r_(2,2), r_(2,3);
  0, 0, r_(3,3);
).
$

Les premières relations relevées sont

$
r_(1,1)^2 = 1,
$

puis

$
r_(1,1) r_(1,2) = 1,
$

d'où

$
r_(1,2) = 1,
$

et

$
r_(1,1) r_(1,3) = 1,
$

d'où

$
r_(1,3) = 1.
$

== Suite du calcul de $R$

La deuxième étape donne

$
r_(1,2)^2 + r_(2,2)^2 = 2,
$

donc

$
1 + r_(2,2)^2 = 2,
$

et, avec la diagonale positive choisie pour Cholesky,

$
r_(2,2)=1.
$

Ensuite,

$
r_(1,3) r_(1,2) + r_(2,2) r_(2,3)=2,
$

d'où

$
1 + r_(2,3)=2,
$

et donc

$
r_(2,3)=1.
$

Enfin,

$
r_(1,3)^2+r_(2,3)^2+r_(3,3)^2=3,
$

donc

$
1+1+r_(3,3)^2=3,
$

ce qui donne

$
r_(3,3)=1.
$

Ainsi,

$
R=
mat(
  1, 1, 1;
  0, 1, 1;
  0, 0, 1;
).
$

== Schéma algorithmique relevé

Pour $i = 1, dots, n$, on calcule

$
s = a_(i,i) - sum_(j=1)^(i-1) r_(j,i)^2.
$

Si

$
s <= 0,
$

l'algorithme s'arrête : $A$ n'est pas définie positive et la factorisation $A = R^T R$ n'existe pas dans le cadre présenté.

Sinon,

$
r_(i,i) = sqrt(s).
$

Pour $j = i+1, dots, n$, les notes donnent ensuite une formule de mise à jour des coefficients $r_(i,j)$.

#remark[
Le placement de $r_(i,i)$ dans cette dernière formule est ambigu dans la source brute. La formule complète n'est pas réécrite afin de ne pas introduire une correction non vérifiée.
]
