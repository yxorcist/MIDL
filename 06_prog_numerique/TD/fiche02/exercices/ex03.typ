// source-confidence: medium
// source-note: la photographie donne le système, sa solution et un dessin des deux droites ; les parcours Jacobi/Gauss-Seidel sur le graphe ne sont pas entièrement identifiables.
// source-uncertainty: les trajectoires d'itération dessinées à la main ne sont pas reproduites ; le SVG reconstruit uniquement les deux droites et leur intersection.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 3 — Résolution graphique

== 1. Résoudre le système

Les deux équations sont

$
cases(
  y=-1+2x,
  x+y=2.
)
$

En remplaçant $y$ dans la seconde équation,

$
x+(-1+2x)=2
<=> 3x=3
<=> x=1.
$

Puis

$
y=-1+2(1)=1.
$

Ainsi, l'unique solution est

$
(x,y)=(1,1).
$

Chaque équation représente une droite dans le plan ; leur point d'intersection représente la solution du système.

#align(center)[
  #image("../figures/ex03-droites.svg", width: 82%)
]

== 2. Écritures des deux équations

La feuille utilise aussi les formes

$
-2x+y=-1
quad "et" quad
x+y=2,
$

c'est-à-dire

$
y=-1+2x
quad "et" quad
y=2-x.
$

Les noms *Jacobi* et *Gauss–Seidel* figurent sur le dessin de la séance. Celui-ci montre des constructions d'itérations, mais la photographie ne permet pas d'en reconstituer avec certitude le point de départ ni toutes les flèches : ces trajectoires sont donc omises.
