// source-confidence: high
// source-note: fin de la photographie 10963 : « Exercice 5 (Trouver une régression puissance) ».
// source-note: seule la mise en forme en régression linéaire est visible ; aucune donnée numérique ni aucun résultat d'ajustement ne figure sur la feuille.
// source-uncertainty: correction partielle, la suite de l'exercice n'a pas été fournie.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 5 — Régression puissance (début)

On cherche une courbe de la forme

$
y=a x^b.
$

Pour des données positives $x_i>0$, $y_i>0$, et en supposant $a>0$, on peut appliquer le logarithme :

$
y_i=a x_i^b
quad <=> quad
ln(y_i)=ln(a)+b ln(x_i).
$

On pose les variables transformées

$
X_i=ln(x_i),
quad Y_i=ln(y_i).
$

L'équation devient alors celle d'une droite :

$
Y_i=A X_i+B,
$

avec

$
A=b,
quad B=ln(a).
$

On peut donc appliquer aux couples $(X_i,Y_i)$ la méthode de *régression linéaire par les moindres carrés* de l'exercice 4.

Après avoir estimé les coefficients $A$ et $B$, on retrouve les paramètres de la loi puissance :

$
box(a=e^B),
quad
box(b=A).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction partielle.* La copie s'arrête à cette transformation : aucune série de mesures ni aucune régression numérique n'y est donnée. Les équations ci-dessus restituent exclusivement la méthode présente dans la photographie, avec les conditions de positivité nécessaires pour le logarithme.
]
