#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 17/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Systèmes linéaires et méthodes directes]
]
#line(length: 100%)
#v(0.7em)

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

= Valeurs propres et résolution de systèmes

== Valeurs propres

Les valeurs propres d'une matrice carrée $A$ sont les solutions de

$
det(A - lambda I_n) = 0.
$

Le polynôme

$
P(lambda) = det(A - lambda I_n)
$

est appelé *polynôme caractéristique*.

#example(title: "Exemple du cours")[
Pour

$
A = mat(1, 4; 2, 3),
$

on obtient

$
P(lambda) = det(mat(1-lambda, 4; 2, 3-lambda))
= (1-lambda)(3-lambda) - 8.
$

Les racines notées dans le cours sont $lambda = -1$ et $lambda = 5$.
]

À une valeur propre $lambda$, un vecteur propre $v != 0$ vérifie

$
A v = lambda v,
$

c'est-à-dire

$
(A - lambda I_n) v = 0.
$

La recherche d'un vecteur propre se ramène donc à la résolution d'un système linéaire homogène.

== Deux familles de méthodes de résolution

Pour résoudre

$
A x = b,
$

le cours distingue :

- les *méthodes directes*, qui donnent en théorie une solution exacte après un nombre fini d'opérations ;
- les *méthodes itératives*, qui construisent des approximations successives de la solution.

La séance commence l'étude des méthodes directes.

= Méthodes directes : Cramer et matrices particulières

== Méthode de Cramer

Pour un système $A x = b$ avec $A$ inversible, la règle de Cramer donne chaque composante de la solution :

$
x_i = det(A_i) / det(A),
$

où $A_i$ est obtenue en remplaçant la colonne $i$ de $A$ par le vecteur $b$.

#example(title: "Exemple de la séance")[
Le système est donné par

$
A = mat(1, 2, 2; 1, 3, 3; 3, 7, 8),
quad
b = mat(2; 2; 3).
$

Le déterminant de $A$ vaut $1$, donc $A$ est inversible. L'application de la règle de Cramer conduit à

$
x = mat(2; 3; -3).
$
]

#remark[
La méthode de Cramer donne bien la solution, mais les notes signalent qu'elle devient coûteuse lorsque la taille du système augmente, car elle nécessite le calcul de plusieurs déterminants.
]

== Matrices particulières

Le cours introduit trois structures utiles pour les méthodes directes.

=== Matrice triangulaire supérieure

Une matrice $A=(a_(i,j))$ est triangulaire supérieure lorsque

$
a_(i,j) = 0 quad "si" quad i > j.
$

=== Matrice triangulaire inférieure

Elle est triangulaire inférieure lorsque

$
a_(i,j) = 0 quad "si" quad i < j.
$

=== Matrice diagonale

Elle est diagonale lorsque

$
a_(i,j) = 0 quad "si" quad i != j.
$

== Résolution facilitée

Si $A$ est diagonale, le système $A x = b$ se résout directement :

$
x_i = b_i / a_(i,i).
$

Si $A$ est triangulaire supérieure, on commence par la dernière équation :

$
x_n = b_n / a_(n,n),
$

puis on remonte par substitution. Pour une matrice triangulaire inférieure, le principe est analogue en partant de la première équation.

= Principe des méthodes directes — élimination de Gauss

Les méthodes directes cherchent à transformer le système

$
A x = b
$

en un système équivalent plus facile à résoudre, typiquement avec une matrice triangulaire ou diagonale.

Les notes présentent l'idée d'une factorisation

$
A = M N,
$

avec $M$ et $N$ carrées. Alors

$
M N x = b
$

et, si $M$ est facile à inverser,

$
N x = M^(-1) b.
$

L'objectif est donc de construire des matrices ou transformations qui simplifient progressivement le système.

== Méthode de Gauss

La méthode de Gauss effectue sur le système des opérations élémentaires sur les lignes :

- combinaisons linéaires de lignes ;
- échanges de lignes.

Ces opérations conservent l'ensemble des solutions. On passe ainsi de $A x = b$ à un système équivalent $A' x = b'$ ayant la même solution $x$.

Pour la matrice augmentée $(A | b)$, on élimine successivement les coefficients situés sous les pivots.

Pour un pivot d'indice $k$, et pour chaque ligne $i > k$, le multiplicateur utilisé est

$
alpha_i^(k) = a_(i,k)^(k) / a_(k,k)^(k).
$

Puis, pour $j = k, dots, n$,

$
a_(i,j)^(k+1) = a_(i,j)^(k) - alpha_i^(k) a_(k,j)^(k),
$

et le second membre est mis à jour par

$
b_i^(k+1) = b_i^(k) - alpha_i^(k) b_k^(k).
$

Cette opération annule le coefficient situé sous le pivot en colonne $k$.

== Schéma algorithmique relevé au tableau

Entrée : une matrice $A$ de taille $n times n$ et un vecteur $b$ de taille $n times 1$.

Pour $k = 1, dots, n-1$ :

- pour $i = k+1, dots, n$ :
  - calculer $alpha_i^(k) = a_(i,k)^(k) / a_(k,k)^(k)$ ;
  - pour $j = k, dots, n$ : mettre à jour $a_(i,j)$ avec la formule précédente ;
  - mettre à jour $b_i$ avec la formule précédente.

À l'issue de l'élimination, le système obtenu est triangulaire supérieur ; il est alors résolu par remontée.

#remark[
Le tableau indique une complexité en $O(n^3)$ pour cette élimination.
]
