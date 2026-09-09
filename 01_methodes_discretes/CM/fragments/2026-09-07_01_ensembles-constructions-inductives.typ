#import "../style.typ": *

== Ensembles et constructions inductives

Un ensemble peut être décrit de deux manières principales :

- *implicitement*, par une propriété ;
- *explicitement*, en énumérant ses éléments.

Par exemple :

$ A = {x in ZZ | x " est pair"} $

ou :

$ A = {2, 4, 8} $

#definition[
  *Définition — Construction inductive.*

  Une définition inductive comporte généralement :

  - une *base* ;
  - une *règle de construction* permettant d'obtenir de nouveaux éléments
    à partir d'éléments déjà construits.
]

Exemple : pour construire les entiers naturels, on peut partir de $0$ puis
imposer la règle :

$ n in NN => n + 1 in NN $

