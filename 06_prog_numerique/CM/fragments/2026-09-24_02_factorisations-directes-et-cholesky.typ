// source-confidence: high

#import "../style.typ": *

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
