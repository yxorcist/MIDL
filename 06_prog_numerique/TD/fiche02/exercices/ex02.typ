// source-confidence: medium
// source-note: transcription des pages manuscrites du TD2, exercice 2.
// source-uncertainty: les valeurs écrites pour Gauss-Seidel sur la dernière page ne satisfont pas les relations itératives ; les valeurs corrigées sont identifiées ci-dessous.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 2 — Jacobi et Gauss–Seidel

== 1. Première écriture du système

On considère

$
mat(
  4, 1, 0;
  -1, 3, 6;
  -2, -5, -2;
)
mat(x_1; x_2; x_3)
=
mat(8; 3; 8).
$

En écrivant $A=D+(A-D)$, avec

$
D=mat(4,0,0;0,3,0;0,0,-2),
$

la méthode de Jacobi donne

$
x^(k+1) = D^(-1)(b-(A-D)x^k).
$

Avec

$
A-D=mat(0,1,0;-1,0,6;-2,-5,0),
$

on obtient les relations

$
cases(
  x_1^(k+1) = 2 - x_2^k / 4,
  x_2^(k+1) = 1 + x_1^k / 3 - 2 x_3^k,
  x_3^(k+1) = -4 - x_1^k - 5 x_2^k / 2.
)
$

Pour le point de départ $x^0=mat(0;0;0)$,

$
x^1=mat(2;1;-4).
$

Puis

$
x^2
=
mat(
  2 - 1/4;
  1 + 2/3 + 8;
  -4 - 2 - 5/2;
)
=
mat(7/4;29/3;-17/2).
$

*Remarque.* La matrice initiale n'est pas à diagonale strictement dominante. Cette seule constatation ne prouve pas que Jacobi diverge : elle signifie seulement que le critère suffisant de convergence ne s'applique pas. La note manuscrite en déduit directement une non-convergence, ce qui n'est pas un raisonnement suffisant.

== 2. Changement de variable et dominance diagonale

Les notes posent

$
y' = y + 2z,
quad
y=y'-2z.
$

Le système devient

$
cases(
  4x+y'-2z=8,
  -x+3y'=3,
  -2x-5y'+8z=8.
)
$

Donc, pour l'inconnue $u=(x,y',z)^T$,

$
A' = mat(4,1,-2;-1,3,0;-2,-5,8),
quad
A'u=mat(8;3;8).
$

La matrice $A'$ est à diagonale strictement dominante *par lignes*, puisque

$
4>1+2,
quad
3>1+0,
quad
8>2+5.
$

La méthode de Jacobi appliquée au *système transformé* converge donc.

== 3. Jacobi sur le système transformé

On note $D="diag"(4,3,8)$.

$
D u^(k+1) = b-(A'-D)u^k.
$

Les relations itératives sont

$
cases(
  x^(k+1) = 2 - y'^(k)/4 + z^k/2,
  y'^(k+1) = 1 + x^k/3,
  z^(k+1) = 1 + x^k/4 + 5y'^(k)/8.
)
$

Avec $u^0=mat(0;0;0)$, on trouve

$
u^1=mat(2;1;1).
$

Puis

$
u^2=mat(9/4;5/3;17/8).
$

== 4. Gauss–Seidel sur le système transformé

On écrit $A'=L+(A'-L)$, où $L$ est la partie triangulaire inférieure de $A'$, diagonale comprise.

La relation matricielle est

$
L u^(k+1) = b-(A'-L)u^k.
$

Pour chaque coordonnée,

$
u_i^(k+1)
=
1/a_(i,i)
(
 b_i
 - sum_(j=1)^(i-1) a_(i,j)u_j^(k+1)
 - sum_(j=i+1)^n a_(i,j)u_j^k
).
$

Dans notre cas,

$
cases(
  x^(k+1) = 2 - y'^(k)/4 + z^k/2,
  y'^(k+1) = 1 + x^(k+1)/3,
  z^(k+1) = 1 + x^(k+1)/4 + 5y'^(k+1)/8.
)
$

Les valeurs nouvelles sont réutilisées immédiatement, à la différence de Jacobi.

À partir de $u^0=mat(0;0;0)$,

$
x^1=2,
quad
y'^1=5/3,
$

et

$
z^1=1+2/4+(5/8)(5/3)=61/24.
$

Donc

$
u^1=mat(2;5/3;61/24).
$

L'itération suivante commence par

$
x^2 = 2-(5/3)/4+(61/24)/2=137/48,
$

$
y'^2=1+(137/48)/3=281/144.
$

Les notes manuscrites indiquent à la place $z^1=11/24$, $x^2=65/48$ et $y'^2=-28/36$. *Ces résultats sont incompatibles avec le système affiché et sont reproduits ici uniquement pour signaler l'écart de transcription/calcul.*

== 5. Critère d'arrêt

La forme générique notée pour Gauss–Seidel est accompagnée du résidu

$
epsilon = norm(A' u^(k+1)-b).
$

On peut arrêter lorsque $epsilon$ atteint la tolérance fixée dans l'énoncé.
