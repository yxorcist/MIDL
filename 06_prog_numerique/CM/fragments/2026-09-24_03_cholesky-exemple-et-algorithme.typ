// source-confidence: medium
// source-uncertainty: the worked Cholesky computation stops during step 2 in the raw note; the off-diagonal update formula is also ambiguous and is therefore not reconstructed.

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

#remark[
La source brute s'interrompt au début de l'étape 2. La suite du calcul n'est donc pas reconstruite ici.
]

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
