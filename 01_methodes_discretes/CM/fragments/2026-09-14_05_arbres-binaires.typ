#import "../style.typ": *

= Arbres binaires étiquetés

Les photographies du tableau complètent les notes manuscrites avec la construction
inductive des arbres binaires étiquetés.

On note $"AB"$ l'ensemble des arbres binaires étiquetés. Le tableau introduit un
ensemble d'étiquettes $A subset.eq Sigma^*$.

== Vocabulaire

Un arbre binaire comporte notamment :

- une *racine* ;
- des *nœuds internes* ;
- des *feuilles*.

#align(center)[
  #raw("        racine\n          a\n         / \\\n        b   c\n       / \\   \\\n      □   □   □", block: true)
]

== Définition inductive

La construction notée au tableau est :

- *(B)* l'arbre vide appartient à $"AB"$ :

  $
  ∅ in "AB" ;
  $

- *(I)* si $g, d in "AB"$ et si $a in A$, alors

  $
  (g, a, d) in "AB".
  $

Le triplet $(g, a, d)$ représente un arbre dont :

- $g$ est le sous-arbre gauche ;
- $a$ est l'étiquette de la racine ;
- $d$ est le sous-arbre droit.

En particulier, une feuille étiquetée $a$ peut être représentée par

$
(∅, a, ∅).
$

Cette écriture permet de représenter récursivement tout arbre binaire étiqueté.

== Arbres binaires complets

Le tableau définit un *arbre binaire complet* comme un arbre binaire dont toutes
les feuilles sont à la même hauteur.

On note $"ABC" subset.eq "AB"$ l'ensemble de ces arbres.

La hauteur $h(t)$ d'un arbre $t$ est indiquée comme le nombre d'arêtes du plus
long chemin allant de la racine à une feuille.

La caractérisation inductive visible au tableau est :

- l'arbre vide appartient à $"ABC"$ ;
- si $g, d in "ABC"$, si $h(g) = h(d)$ et si $a in A$, alors

  $
  (g, a, d) in "ABC".
  $

La condition $h(g) = h(d)$ force les deux sous-arbres construits sous une même
racine à avoir la même hauteur, ce qui conserve le caractère complet de l'arbre.
