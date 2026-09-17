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

La méthode de Gauss effectue des combinaisons linéaires de lignes qui conservent le même ensemble de solutions.

Pour la matrice augmentée $(A | b)$, on élimine successivement les coefficients situés sous les pivots.

Pour un pivot d'indice $k$, et pour chaque ligne $i > k$, les notes introduisent le multiplicateur

$
alpha_i^(k) = a_(i,k)^(k) / a_(k,k)^(k).
$

Puis les coefficients sont mis à jour par

$
a_(i,j)^(k+1) = a_(i,j)^(k) - alpha_i^(k) a_(k,j)^(k).
$

Cette opération annule le coefficient situé sous le pivot en colonne $k$.

== Schéma algorithmique relevé dans les notes

Pour $k=1$ jusqu'à $n-1$ :

- pour $i=k+1$ jusqu'à $n$ ;
- calculer $alpha_i^(k)$ ;
- mettre à jour les coefficients de la ligne $i$ à partir de la ligne pivot $k$.

À l'issue de l'élimination, le système obtenu est triangulaire supérieur ; il est alors résolu par remontée.

#remark[
La dernière page des notes donne ce schéma sous forme d'algorithme sur la matrice augmentée $(A | b)$. La borne exacte de la boucle sur les colonnes est peu lisible sur la photographie ; elle n'est donc pas surinterprétée ici.
]
