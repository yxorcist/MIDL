#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 24/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Gauss, factorisations directes et méthodes itératives]
]
#line(length: 100%)
#v(0.7em)

// source-confidence: medium
// source-uncertainty: the raw note says to exchange columns when a pivot is zero; this wording is preserved rather than silently corrected.

= Méthode de Gauss — complexité et transformations

On considère un système linéaire

$
A x = b,
$

où

$
x = mat(x_1; dots.v; x_n)
$

est le vecteur inconnu.

La méthode de Gauss transforme ce système en un système équivalent

$
A' x = b',
$

où $A'$ est triangulaire supérieure.

Les notes distinguent trois indices dans l'algorithme :

- $k$ : indice des itérations ;
- $i$ : indice des lignes ;
- $j$ : indice des colonnes.

Les trois boucles imbriquées conduisent à une complexité en

$
O(n^3).
$

Après comptage des divisions, additions et multiplications, les notes indiquent plus précisément un coût de l'ordre de

$
O((2 n^3) / 3).
$

== Cas d'un pivot nul

Les notes indiquent que, si un élément servant de pivot est nul, il faut procéder à des échanges de colonnes.

#remark[
Cette formulation est conservée telle qu'elle apparaît dans la source brute ; elle devra être vérifiée avec la formulation exacte du cours.
]

== Transformations conservant les solutions

Pour passer de $A$ à $A'$, les transformations relevées sont :

- ajout ou retrait d'une ligne à une autre ;
- multiplication d'une ligne par une valeur ;
- permutation de deux lignes.

Elles permettent d'obtenir un système équivalent, sans changement de solution.

// source-confidence: high

= Factorisations et méthodes directes

Les notes présentent une écriture de la matrice sous la forme

$
A = M N.
$

Alors

$
A x = b
<=> M N x = b
<=> N x = M^(-1) b.
$

La résolution est séparée en deux étapes. En posant

$
y = M^(-1) b,
$

on résout successivement

$
cases(
  y = M^(-1) b,
  N x = y,
)
$

puis

$
x = N^(-1) y.
$

L'idée est donc de choisir des matrices $M$ et $N$ ayant des formes particulières qui rendent les résolutions intermédiaires simples.

== Décomposition $L U$

On considère une décomposition

$
A = L U,
$

avec :

- $L$ triangulaire inférieure ;
- $U$ triangulaire supérieure.

Les variantes citées dans les notes sont :

- *Doolittle* : les coefficients diagonaux de $L$ valent $1$ ;
- *Crout* : les coefficients diagonaux de $U$ valent $1$ ;
- *Cholesky* : la factorisation prend la forme
  $
  A = R^T R.
  $

== Condition pour la méthode de Cholesky

Pour admettre la forme

$
A = R^T R,
$

la matrice $A$ doit être symétrique et définie positive, c'est-à-dire vérifier

$
x^T A x > 0
$

pour tout $x in RR^n$ non nul.

// source-confidence: high
// source-confidence-note: worked Cholesky example verified against classroom board photo 2026-09-24.

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

// source-confidence: medium
// source-uncertainty: the numerical value written for epsilon in the stopping criterion is ambiguous in the raw note and is intentionally not normalized.

= Méthodes indirectes — méthodes itératives

On considère

$
A x = b,
$

avec $A$ inversible.

Les méthodes itératives cherchent à déterminer une approximation de $x$ aussi précise que possible.

Les notes utilisent une décomposition

$
A = M - N,
$

où $M$ est choisie de façon à être facilement inversible, par exemple triangulaire, orthogonale ou diagonale.

On obtient

$
A x = b
<=> (M - N) x = b
<=> M x = N x + b.
$

En multipliant par $M^(-1)$,

$
x = M^(-1) N x + M^(-1) b.
$

On pose alors

$
F(x) = M^(-1) N x + M^(-1) b,
$

et le problème devient une équation de point fixe

$
x = F(x).
$

== Itération

On choisit un vecteur initial $x^(0)$.

Pour $k >= 0$,

$
x^(k+1)
=
F(x^(k))
=
M^(-1) N x^(k) + M^(-1) b.
$

La question centrale est alors celle de la convergence de cette suite vers la solution.

== Critères d'arrêt relevés

Les notes indiquent deux contrôles pratiques.

Premièrement, imposer un nombre maximal d'itérations, par exemple

$
"NbIterMax" = 10^5.
$

Deuxièmement, tester à chaque itération le résidu

$
norm(A x^(k) - b) <= epsilon.
$

Lorsque ce critère est satisfait, l'approximation est considérée comme suffisamment bonne.

#remark[
La valeur numérique associée à $epsilon$ est ambiguë dans la source brute ; elle n'est pas fixée ici.
]
