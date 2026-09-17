#import "../style.typ": *

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
