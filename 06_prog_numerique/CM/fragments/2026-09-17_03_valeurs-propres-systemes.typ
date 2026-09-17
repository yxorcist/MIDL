#import "../style.typ": *

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
