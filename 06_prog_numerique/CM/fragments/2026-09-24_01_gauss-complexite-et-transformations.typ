// source-confidence: medium
// source-uncertainty: the raw note says to exchange columns when a pivot is zero; this wording is preserved rather than silently corrected.

#import "../style.typ": *

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
