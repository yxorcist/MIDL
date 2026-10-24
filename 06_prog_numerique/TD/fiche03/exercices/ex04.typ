// source-confidence: high
// source-note: photos 10961 et 10963, rubrique « Ex4 — Moindres carrés ».
// source-note: énoncé officiel TD03_interpolation-approximation.pdf ex04 : cinq couples vérifiés directement dans le tableau imprimé.
// source-verification: les dérivées, équations normales et coefficients ont été recalculés.
// source-uncertainty: le résultat manuscrit b≈-1,71 est incompatible avec les quatre moyennes écrites ; la valeur correcte est b≈1,01.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 4 — Ajustement affine par les moindres carrés

== Objectif

On cherche la droite $y=a x+b$ qui ajuste au mieux $n$ points $(x_i,y_i)$.

Pour chaque point, l'écart vertical est $y_i-(a x_i+b)$. On minimise la somme des carrés de ces écarts :

$
S(a,b)=sum_(i=1)^n (y_i-(a x_i+b))^2.
$

== Développement de la somme

On développe :

$
S(a,b)
=sum_(i=1)^n (y_i^2+(a x_i+b)^2-2y_i(a x_i+b)).
$

En regroupant les termes,

$
S(a,b)
=sum_(i=1)^n y_i^2
+a^2 sum_(i=1)^n x_i^2
+n b^2
+2a b sum_(i=1)^n x_i
-2a sum_(i=1)^n x_i y_i
-2b sum_(i=1)^n y_i.
$

== Équations normales

On annule les dérivées partielles pour chercher le minimum :

$
(partial S)/(partial a)
=2a sum_(i=1)^n x_i^2
+2b sum_(i=1)^n x_i
-2 sum_(i=1)^n x_i y_i
=0,
$

$
(partial S)/(partial b)
=2n b
+2a sum_(i=1)^n x_i
-2 sum_(i=1)^n y_i
=0.
$

Cela donne le système

$
cases(
  a sum_(i=1)^n x_i^2
  +b sum_(i=1)^n x_i
  =sum_(i=1)^n x_i y_i,
  a sum_(i=1)^n x_i
  +n b
  =sum_(i=1)^n y_i.
)
$

== Moyennes et formules pour $a$ et $b$

On note

$
bar(x)=1/n sum_(i=1)^n x_i,
quad
bar(y)=1/n sum_(i=1)^n y_i,
$

$
bar(x^2)=1/n sum_(i=1)^n x_i^2,
quad
bar(x y)=1/n sum_(i=1)^n x_i y_i.
$

En supposant que toutes les abscisses ne sont pas égales, de sorte que

$
bar(x^2)-bar(x)^2>0,
$

on obtient

$
a=(bar(x y)-bar(x)bar(y))/(bar(x^2)-bar(x)^2),
$

et

$
b=bar(y)-a bar(x).
$

La seconde formule est aussi égale à

$
b=(bar(y)bar(x^2)-bar(x)bar(x y))/(bar(x^2)-bar(x)^2).
$

== Tableau officiel des points

#table(columns: 5, inset: 5pt, align: center,
  [$x_i$],[$1$],[$3$],[$4$],[$6$],
  [$y_i$],[$1.5$],[$2$],[$2.6$],[$4$],
)
Le dernier couple est $(7,3.5)$ ; les cinq points ont donc pour abscisses $1,3,4,6,7$ et ordonnées $1.5,2,2.6,4,3.5$.

== Application numérique visible dans la copie

Les statistiques calculées à partir des cinq couples officiels sont

$
bar(x)=4.2,
quad
bar(y)=2.72,
quad
bar(x^2)=22.2,
quad
bar(x y)=13.28.
$

D'où

$
bar(x)^2=4.2^2=17.64.
$

La pente vaut

$
a=(13.28-4.2 dot 2.72)/(22.2-17.64)
=1.856/4.56
approx 0.4070.
$

Puis

$
b=2.72-a dot 4.2
approx 1.0105.
$

Donc la droite d'ajustement correspondante est

$
y approx 0.41x+1.01.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction vérifiée.* La photographie donne $a approx 0,41$ mais indique $b approx -1,71$. Ce dernier nombre correspond approximativement à $-a bar(x)$, sans ajouter $bar(y)$. Avec les quatre statistiques écrites sur la feuille, la bonne ordonnée à l'origine est $b approx +1,01$.
]

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Vérification de la source.* Les cinq couples ont été relevés du TD officiel et les quatre moyennes de la copie sont compatibles avec les données imprimées.
]
