#import "../style.typ": *

= Systèmes linéaires — rappels sur les matrices

Le cours commence par la résolution de problèmes modélisés par des systèmes d'équations linéaires. Les algorithmes étudiés utilisent des matrices et des vecteurs ; on rappelle donc les notions de base nécessaires.

== Matrices rectangulaires et vecteurs

Une matrice à $n$ lignes et $p$ colonnes, à coefficients dans un corps $K$, est notée

$
A = (a_(i,j)) in "M"_(n,p)(K).
$

Un vecteur colonne à $n$ composantes est un cas particulier de matrice :

$
x = mat(x_1; dots.v; x_n) in "M"_(n,1)(K).
$

== Produit de matrices

Si

$
A in "M"_(n,m)(K)
quad "et" quad
B in "M"_(m,p)(K),
$

alors le produit $A B$ est défini et appartient à $"M"_(n,p)(K)$. Ses coefficients sont

$
(A B)_(i,j) = sum_(k=1)^m a_(i,k) b_(k,j).
$

La condition importante est donc que le nombre de colonnes de $A$ soit égal au nombre de lignes de $B$.

== Transposée

La transposée d'une matrice $A$ est notée $A^T$ et vérifie

$
(A^T)_(i,j) = a_(j,i).
$

Autrement dit, les lignes de $A$ deviennent les colonnes de $A^T$.

== Matrices carrées

Une matrice est carrée lorsque son nombre de lignes est égal à son nombre de colonnes. On note alors simplement

$
"M"_n(K) = "M"_(n,n)(K).
$

Le cours rappelle aussi deux cas particuliers :

- $A$ est *symétrique* si $A^T = A$ ;
- $A$ est *antisymétrique* si $A^T = -A$ ; dans ce cas les coefficients diagonaux sont nuls.

#example(title: "Exemple d'antisymétrie")[
Pour

$
A = mat(0, 1; -1, 0),
$

on a $A^T = -A$.
]
