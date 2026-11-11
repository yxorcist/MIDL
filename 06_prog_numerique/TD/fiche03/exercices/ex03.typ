// source-confidence: high
// source-note: TD03_interpolation-approximation.pdf, exercice 3.
// revision-note: méthode de Neville, table calculée colonne par colonne ; solution vérifiée avec le travail manuscrit du 11 novembre 2026.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3 — Méthode de Neville

== 1. Données et objectif

Le sujet fournit quatre points dans cet ordre :

#table(
  columns: 4,
  inset: 6pt,
  align: center,
  [*$x_0$*], [*$x_1$*], [*$x_2$*], [*$x_3$*],
  [$0$], [$-5$], [$-1$], [$2$],
)

#table(
  columns: 4,
  inset: 6pt,
  align: center,
  [*$y_0$*], [*$y_1$*], [*$y_2$*], [*$y_3$*],
  [$-3$], [$12$], [$-4$], [$5$],
)

*Question :* calculer la valeur de l'interpolateur en $t=3$ par la *méthode de Neville*.

On ne nous demande pas de développer le polynôme. On calcule donc directement *des nombres*, tous évalués en $t=3$.

== 2. Récurrence de Neville

La valeur $P_(i,j)(t)$ interpole les points consécutifs d'indices $i$ à $j$, inclus.

Au départ :

$
P_(i,i)(t)=y_i.
$

Pour $i<j$ :

$
P_(i,j)(t)=
((x_j-t) P_(i,j-1)(t) + (t-x_i) P_(i+1,j)(t))/(x_j-x_i).
$

*Principe :* chaque case utilise les *deux cases voisines de la colonne précédente*. Le dénominateur est « dernière abscisse moins première abscisse ».

Ici, on fixe $t=3$ dès le départ.

== 3. Calculer le tableau colonne par colonne

*Ordre 0 :* les valeurs initiales sont

$
P_(0,0)(3)=-3,
quad P_(1,1)(3)=12,
quad P_(2,2)(3)=-4,
quad P_(3,3)(3)=5.
$

*Ordre 1 :* deux points par calcul.

$
P_(0,1)(3)
=((-5-3)(-3)+(3-0)12)/(-5-0)
=(24+36)/(-5)=-12.
$

$
P_(1,2)(3)
=((-1-3)12+(3-(-5))(-4))/(-1-(-5))
=(-48-32)/4=-20.
$

$
P_(2,3)(3)
=((2-3)(-4)+(3-(-1))5)/(2-(-1))
=(4+20)/3=8.
$

*Ordre 2 :* trois points par calcul.

$
P_(0,2)(3)
=((-1-3)(-12)+(3-0)(-20))/(-1-0)
=(48-60)/(-1)=12.
$

$
P_(1,3)(3)
=((2-3)(-20)+(3-(-5))8)/(2-(-5))
=(20+64)/7=12.
$

*Ordre 3 :* les quatre points.

$
P_(0,3)(3)
=((2-3)12+(3-0)12)/(2-0)
=(-12+36)/2=12.
$

== 4. Tableau triangulaire final

#table(
  columns: (0.5fr, 0.7fr, 0.9fr, 1fr, 1fr, 1fr),
  inset: 4pt,
  align: center,
  [*$i$*], [*$x_i$*], [*ordre 0*], [*ordre 1*], [*ordre 2*], [*ordre 3*],
  [$0$], [$0$], [$-3$], [$-12$], [$12$], [*$12$*],
  [$1$], [$-5$], [$12$], [$-20$], [$12$], [],
  [$2$], [$-1$], [$-4$], [$8$], [], [],
  [$3$], [$2$], [$5$], [], [], [],
)

La dernière case du tableau est la valeur cherchée :

$
P(3)=P_(0,3)(3)=12.
$

*C'est la réponse complète à l'exercice.*

== 5. Vérification facultative

Le polynôme passant par les quatre points se simplifie en

$
P(x)=x^2+2x-3.
$

Il satisfait les quatre données et vérifie

$
P(3)=3^2+2 dot 3-3=12.
$

Cette vérification est *facultative* : Neville suffit pour répondre à l'énoncé.

== Méthode à retenir

1. Conserver les points dans l'ordre donné : les $x_i$ n'ont pas besoin d'être triés.
2. Fixer immédiatement $t$ à la valeur demandée ($t=3$ ici).
3. Recopier les $y_i$ dans la colonne d'ordre 0.
4. Remplir successivement chaque colonne avec la récurrence de Neville.
5. Lire la valeur dans la dernière case ; aucun développement n'est nécessaire.

*Attention :* si une case a déjà été évaluée en $t=3$, sa valeur est un *nombre*. Il ne faut pas réintroduire une variable $t$ en utilisant cette valeur dans la colonne suivante.
