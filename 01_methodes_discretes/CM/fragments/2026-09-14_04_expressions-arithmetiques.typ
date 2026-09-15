#import "../style.typ": *

= Exemple : expressions arithmétiques

Les notes introduisent un alphabet d'expressions

$
Sigma_(exp) = {0, 1, dots, 9, +, -, *, /, (, )}.
$

On considère ensuite l'ensemble $N$ des entiers non nuls écrits en base $10$.
Il est lui-même décrit inductivement.

- Base : tout chiffre $a in {1, 2, dots, 9}$ appartient à $N$.
- Règle : si $s in N$ et $a in {0, 1, dots, 9}$, alors le mot obtenu en
  concaténant $s$ puis $a$ appartient à $N$.

On obtient

$
N = {1, 2, dots, 9, 10, 11, 12, dots}.
$

== Définition inductive de $Arith$

L'ensemble $Arith$ des expressions arithmétiques contient comme cas de base :

- $0$ ;
- les entiers de $N$.

Autrement dit,

$
N union {0} subset.eq Arith.
$

Puis, si $g, d in Arith$, alors les expressions construites avec les quatre
opérations appartiennent encore à $Arith$ :

$
(g + d), quad (g * d), quad (g / d), quad (g - d) in Arith.
$

== Arbre syntaxique d'une expression

Le tableau donne l'exemple

$
E = ((2 + 5) * (3 + 8)) in Arith.
$

La structure de construction de $E$ peut être représentée par l'arbre suivant :

#align(center)[
  #raw("        *\n       / \\\n      +   +\n     / \\ / \\\n    2  5 3  8", block: true)
]

La racine correspond à l'opération construite en dernier. Les sous-arbres gauche
et droit correspondent aux deux sous-expressions utilisées par cette opération.
