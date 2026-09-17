#import "../style.typ": *

= Matrices inversibles, systèmes et déterminant

== Matrice inverse

#definition(title: "Matrice inversible")[
Une matrice carrée $A in "M"_n(K)$ est inversible s'il existe une matrice $B in "M"_n(K)$ telle que

$
A B = B A = I_n.
$

Cette matrice $B$ est unique et se note $A^(-1)$.
]

#proposition(title: "Propriétés")[
Si $A$ et $B$ sont inversibles, alors

$
(A B)^(-1) = B^(-1) A^(-1).
$

Pour un scalaire $alpha != 0$,

$
(alpha A)^(-1) = 1/alpha A^(-1).
$
]

== Système linéaire

Un système d'équations linéaires s'écrit sous la forme

$
A x = b,
$

où $A in "M"_n(K)$ et $b in "M"_(n,1)(K)$ sont connus, tandis que $x in "M"_(n,1)(K)$ est le vecteur inconnu.

Si $A$ est inversible, le système admet une solution unique :

$
x = A^(-1) b.
$

== Déterminant

Le déterminant d'une matrice carrée $A$ est noté $det(A)$. Les notes rappellent son calcul par développement suivant une ligne ou une colonne.

Pour une matrice d'ordre $n$, en développant suivant la première ligne :

$
det(A) = sum_(j=1)^n (-1)^(1+j) a_(1,j) det(A_(1,j)),
$

où $A_(1,j)$ désigne la matrice obtenue en supprimant la première ligne et la colonne $j$.

== Caractérisations équivalentes de l'inversibilité

#proposition(title: "Pour une matrice carrée A")[
Les propriétés suivantes sont équivalentes :

1. $A$ est inversible ;
2. $det(A) != 0$ ;
3. $"rang"(A) = n$ ;
4. le système homogène $A x = 0$ admet comme unique solution $x = 0$ ;
5. pour tout $b in K^n$, le système $A x = b$ admet exactement une solution.
]

Le rang est présenté comme le nombre maximal de lignes — ou de colonnes — linéairement indépendantes.
