// source-confidence: medium
// source-note: la photographie donne le système, sa solution et un dessin des deux droites ; les parcours Jacobi/Gauss-Seidel sur le graphe ne sont pas entièrement identifiables.
// source-note: les tableaux complémentaires montrent des trajectoires graphiques de Jacobi et Gauss–Seidel ; les relations ajoutées ci-dessous sont déduites du système affiché.
// source-uncertainty: les flèches manuscrites ne permettent pas de fixer avec certitude chaque point initial de la construction du tableau ; le SVG ne représente que les droites.

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


== 3. Jacobi et Gauss–Seidel : interprétation des trajectoires

Les photographies du tableau montrent des itérations graphiques construites à partir des deux droites qui se coupent en $(1,1)$.

Pour comparer les méthodes à partir du système

$
cases(
  -2x+y=-1,
  x+y=2,
)
$

on l'écrit sous la forme

$
cases(
  x=(y+1)/2,
  y=2-x.
)
$

=== Itération de Jacobi

Les deux nouvelles coordonnées utilisent seulement les coordonnées de l'itération précédente :

$
cases(
  x^(k+1)=(y^k+1)/2,
  y^(k+1)=2-x^k.
)
$

À titre d'exemple, en choisissant $u^0=(0,0)$,

$
u^1=(1/2,2),
quad
u^2=(3/2,3/2).
$

=== Itération de Gauss–Seidel

La seconde coordonnée utilise immédiatement le nouveau $x^(k+1)$ :

$
cases(
  x^(k+1)=(y^k+1)/2,
  y^(k+1)=2-x^(k+1).
)
$

Depuis le même point $u^0=(0,0)$,

$
u^1=(1/2,3/2),
quad
u^2=(5/4,3/4).
$

Les deux constructions se dirigent vers l'intersection $(1,1)$ pour ce système.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Distinction source / calcul.* Le tableau contient les trajectoires illustratives. Le choix du point initial $(0,0)$ et les valeurs numériques des deux exemples ci-dessus sont ajoutés pour clarifier la méthode ; ils ne sont pas transcrits directement du dessin.
]
