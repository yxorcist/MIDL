// source-confidence: high
// source-note: photo 10963 : début de TD03 exercice 5, transformation logarithmique pour la régression puissance.
// source-note: sujet imprimé TD03_interpolation-approximation.pdf, exercice 5, donnant explicitement les cinq couples.
// source-reconstruction: calculs numériques et coefficients de la loi puissance déduits du sujet après la dernière ligne visible sur la photo.
// source-verification: régression des couples logarithmiques recalculée indépendamment ; le critère minimisé est l'erreur quadratique dans l'espace logarithmique.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 5 — Régression puissance

== 1. Modèle à ajuster et données

On cherche une approximation des points par

$
y=a x^b.
$

Le sujet fournit les données :

#table(
  columns: 5,
  inset: 5pt,
  align: center,
  [*x₁ = 0,5*], [*x₂ = 1*], [*x₃ = 1,5*], [*x₄ = 2*], [*x₅ = 2,5*],
  [0,49], [1,60], [3,36], [6,44], [10,16],
)

La copie photographie le début de la méthode : il faut transformer le modèle en relation affine, puis appliquer les moindres carrés.

== 2. Linéarisation par le logarithme

Comme tous les xᵢ et yᵢ sont strictement positifs, on prend le logarithme :

$
ln(y_i)=ln(a)+b ln(x_i).
$

On pose

$
X_i=ln(x_i),
quad
Y_i=ln(y_i),
$

et l'on cherche une droite

$
Y_i=A X_i+B,
$

avec A = b et B = ln(a), donc a = e^B.

Cette étape est la *partie manuscrite* de la correction.

== 3. Tableau des données transformées

Les valeurs numériques suivantes sont calculées à partir des données du TD (arrondies à six décimales).

#table(
  columns: (0.8fr, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  align: center,
  [*xᵢ*], [*yᵢ*], [*Xᵢ = ln(xᵢ)*], [*Yᵢ = ln(yᵢ)*], [*i*],
  [0,5], [0,49], [−0,693147], [−0,713350], [1],
  [1], [1,60], [0], [0,470004], [2],
  [1,5], [3,36], [0,405465], [1,211941], [3],
  [2], [6,44], [0,693147], [1,862529], [4],
  [2,5], [10,16], [0,916291], [2,318458], [5],
)

== 4. Coefficients par la méthode des moindres carrés

On applique à (Xᵢ, Yᵢ) la méthode de l'exercice 4 :

$
A=(bar(X Y)-bar(X) bar(Y))/(bar(X^2)-bar(X)^2)
$

et

$
B=bar(Y)-A bar(X).
$

Les moyennes, calculées sans arrondir les logarithmes intermédiaires, valent approximativement :

- moyenne de X : 0,264351 ;
- moyenne de Y : 1,029916 ;
- moyenne de X au carré : 0,392979 ;
- moyenne des produits X fois Y : 0,880249.

On obtient alors

$
A approx 1.881750,
quad
B approx 0.532473.
$

On retrouve les paramètres cherchés :

$
b=A approx 1.881750,
$

$
a=e^B approx 1.703140.
$

== 5. Courbe approchée

La loi de puissance ajustée par la régression linéarisée est

$
y approx 1.70314 x^1.88175.
$

Au besoin, on peut utiliser des coefficients arrondis :

$
y approx 1.70 x^1.88.
$

== Vérification et précaution

Quelques valeurs prédites par la formule non arrondie sont :

- x = 0,5 : y prédit ≈ 0,462 (observé : 0,49) ;
- x = 1 : y prédit ≈ 1,703 (observé : 1,60) ;
- x = 2 : y prédit ≈ 6,276 (observé : 6,44) ;
- x = 2,5 : y prédit ≈ 9,552 (observé : 10,16).

La méthode minimise ici la somme des *écarts au carré entre les logarithmes*, pas directement la somme des carrés des écarts des y originaux. Elle correspond à la linéarisation demandée au tableau ; une minimisation non linéaire directement sur y donnerait en général des paramètres différents.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Partie ajoutée depuis l'énoncé.* La photo ne donne que la transformation logarithmique. Les tableaux, les moyennes, les coefficients et les vérifications sont une résolution reconstituée à partir de l'énoncé imprimé, et non une transcription de la suite manuscrite.
]
