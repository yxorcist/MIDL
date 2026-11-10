// source-confidence: high
// source-note: TD03_interpolation-approximation.pdf, exercice 2 ; valeurs vérifiées avec le sujet officiel.
// source-verification: le dernier point est (-4, -53), pas (-4, +53).
// revision-note: présentation alignée sur les indices à partir de 0 et la résolution manuscrite du 10 novembre 2026.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2 — Différences divisées de Newton

== Énoncé et objectif

Les six points donnés sont :

#table(
  columns: 6,
  inset: 5pt,
  align: center,
  [*$x_i$*], [$-2$], [$1$], [$4$], [$-1$], [$3$], [$-4$],
  [*$y_i$*], [$-1$], [$2$], [$59$], [$4$], [$24$], [$-53$],
)

*Question :* déterminer le degré du polynôme passant par ces points, à l'aide de la table des différences divisées.

Avec six abscisses distinctes, l'interpolateur est unique et de degré *au plus 5*. Il peut être de degré inférieur : c'est précisément ce que le tableau permet de déterminer.

On garde l'ordre des points donné dans l'énoncé. Il n'est pas nécessaire de trier les $x_i$.

== 1. Définition et indices

On numérote les points de $0$ à $5$.

La différence divisée $D_(i,k)$ utilise les points d'indices $i, i+1, dots, i+k$ :

- $i$ indique le *premier point* ;
- $k$ indique l'*ordre*, donc $k+1$ points sont utilisés ;
- le dernier point a pour indice $i+k$.

L'ordre zéro contient simplement les ordonnées :

$
D_(i,0)=y_i.
$

Pour $1 <= k <= 5$ et $0 <= i <= 5-k$, on calcule :

$
D_(i,k) = (D_(i+1,k-1)-D_(i,k-1))/(x_(i+k)-x_i).
$

*Mémo :* « différence du bas moins celle du haut, divisée par la dernière abscisse moins la première ». Chaque valeur utilise *deux différences divisées de l'ordre précédent*.

== 2. Construction colonne par colonne

*Ordre 0 :* on recopie les six valeurs de $y_i$ :
$(-1, 2, 59, 4, 24, -53)$.

*Ordre 1 :* différences entre deux points consécutifs.

$
D_(0,1)=(2-(-1))/(1-(-2))=1,
quad
D_(1,1)=(59-2)/(4-1)=19,
$

$
D_(2,1)=(4-59)/(-1-4)=11,
quad
D_(3,1)=(24-4)/(3-(-1))=5,
$

$
D_(4,1)=(-53-24)/(-4-3)=11.
$

*Ordre 2 :* différences de deux valeurs de l'ordre 1 ; le dénominateur utilise les abscisses extrêmes des trois points.

$
D_(0,2)=(19-1)/(4-(-2))=3,
quad
D_(1,2)=(11-19)/(-1-1)=4,
$

$
D_(2,2)=(5-11)/(3-4)=6,
quad
D_(3,2)=(11-5)/(-4-(-1))=-2.
$

*Ordre 3 :*

$
D_(0,3)=(4-3)/(-1-(-2))=1,
quad
D_(1,3)=(6-4)/(3-1)=1,
$

$
D_(2,3)=(-2-6)/(-4-4)=1.
$

*Ordres 4 et 5 :*

$
D_(0,4)=(1-1)/(3-(-2))=0,
quad
D_(1,4)=(1-1)/(-4-1)=0,
$

$
D_(0,5)=(0-0)/(-4-(-2))=0.
$

== 3. Tableau des différences divisées

#table(
  columns: (0.8fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr),
  inset: 4pt,
  align: center,
  [*$x_i$*], [*$D_(i,0)$*], [*$D_(i,1)$*], [*$D_(i,2)$*], [*$D_(i,3)$*], [*$D_(i,4)$*], [*$D_(i,5)$*],
  [$-2$], [$-1$], [$1$], [$3$], [$1$], [$0$], [$0$],
  [$1$], [$2$], [$19$], [$4$], [$1$], [$0$], [],
  [$4$], [$59$], [$11$], [$6$], [$1$], [], [],
  [$-1$], [$4$], [$5$], [$-2$], [], [], [],
  [$3$], [$24$], [$11$], [], [], [], [],
  [$-4$], [$-53$], [], [], [], [], [],
)

Les coefficients de Newton se trouvent *sur la première ligne* :

$
a_0=D_(0,0)=-1,
quad a_1=D_(0,1)=1,
quad a_2=D_(0,2)=3,
$

$
a_3=D_(0,3)=1,
quad a_4=D_(0,4)=0,
quad a_5=D_(0,5)=0.
$

Le dernier coefficient non nul est $a_3$. Par conséquent :

$
box(deg(P)=3)
$

*C'est la réponse à l'exercice.* Construire explicitement le polynôme n'est pas demandé.

== 4. Construction du polynôme (vérification facultative)

À l'ordre $k$, on ajoute le coefficient $a_k$ multiplié par les $k$ facteurs correspondant aux *abscisses précédentes*. Le dernier point de ce groupe est déjà pris en compte lors du calcul de $a_k$.

$
P(x)=a_0+a_1(x-x_0)
+a_2(x-x_0)(x-x_1)
+a_3(x-x_0)(x-x_1)(x-x_2).
$

Les termes d'ordres 4 et 5 disparaissent puisque $a_4=a_5=0$.

En remplaçant les coefficients et les abscisses :

$
P(x)=-1+(x+2)+3(x+2)(x-1)+(x+2)(x-1)(x-4).
$

Après développement :

$
box(P(x)=x^3-2x+3)
$

Quelques contrôles :

$
P(-2)=-8+4+3=-1,
quad
P(4)=64-8+3=59,
$

$
P(-4)=-64+8+3=-53.
$

== 5. Algorithme à retenir

1. Recopier les $y_i$ dans la colonne d'ordre $0$.
2. Pour chaque ordre $k=1, dots, N-1$, remplir la colonne avec les deux valeurs voisines de la précédente.
3. Au dénominateur, soustraire les *abscisses extrêmes* des $k+1$ points concernés.
4. Lire les coefficients $a_k=D_(0,k)$ sur la première ligne.
5. Le *dernier coefficient non nul* donne le degré ; calculer le polynôme uniquement si demandé.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Attention au sujet :* la dernière ordonnée est bien $-53$. Une erreur de signe ici modifierait les dernières différences divisées, et donc le degré.
]
