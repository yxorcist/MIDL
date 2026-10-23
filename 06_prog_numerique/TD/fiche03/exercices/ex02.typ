// source-confidence: high
// source-note: exercice 2 de TD03_interpolation-approximation.pdf, recoupé avec les photographies du tableau du 23 octobre 2026 (11447, 11452, 11453).
// source-reconstruction: la table complète des différences divisées et le polynôme sont calculés à partir de l'énoncé imprimé ; le tableau photographié montre la méthode, mais pas tous les nombres.
// source-uncertainty: la dernière ordonnée paraît être +53 sur les photos du tableau, tandis que le sujet imprimé donne -53. Le calcul ci-dessous suit le sujet : avec +53, le degré serait 5, et non 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2 — Interpolation de Newton et différences divisées

== Données

Le sujet imprimé donne six points appartenant à un polynôme :

#table(
  columns: 6,
  inset: 5pt,
  align: center,
  [*$x_i$*], [$-2$], [$1$], [$4$], [$-1$], [$3$], [$-4$],
  [*$y_i$*], [$-1$], [$2$], [$59$], [$4$], [$24$], [$-53$],
)

*Question.* Déterminer le degré du polynôme en construisant la table des différences divisées de Newton.

Il n'est pas nécessaire de réordonner les abscisses : on conserve leur ordre dans le sujet.

== 1. Formule de calcul

On prend les indices $i=1,dots,6$ et on définit les différences divisées d'ordre zéro par

$
D_(i,0)=y_i.
$

Pour tout $k>=1$ et tout $1<=i<=6-k$, on calcule ensuite

$
D_(i,k) =
(D_(i+1,k-1)-D_(i,k-1))/(x_(i+k)-x_i).
$

En particulier,

$
D_(i,1)=(y_(i+1)-y_i)/(x_(i+1)-x_i),
$

puis

$
D_(i,2)=(D_(i+1,1)-D_(i,1))/(x_(i+2)-x_i).
$

À chaque ordre, le dénominateur utilise les deux abscisses *extrêmes* du groupe de points.

== 2. Première colonne de différences

Les différences d'ordre $1$ valent successivement :

$
D_(1,1)=(2-(-1))/(1-(-2))=1,
$

$
D_(2,1)=(59-2)/(4-1)=19,
$

$
D_(3,1)=(4-59)/(-1-4)=11,
$

$
D_(4,1)=(24-4)/(3-(-1))=5,
$

$
D_(5,1)=(-53-24)/(-4-3)=11.
$

À l'ordre $2$ :

$
D_(1,2)=(19-1)/(4-(-2))=3,
quad
D_(2,2)=(11-19)/(-1-1)=4,
$

$
D_(3,2)=(5-11)/(3-4)=6,
quad
D_(4,2)=(11-5)/(-4-(-1))=-2.
$

À l'ordre $3$ :

$
D_(1,3)=(4-3)/(-1-(-2))=1,
$

$
D_(2,3)=(6-4)/(3-1)=1,
quad
D_(3,3)=(-2-6)/(-4-4)=1.
$

Aux ordres suivants, toutes les différences sont nulles :

$
D_(1,4)=D_(2,4)=0,
quad
D_(1,5)=0.
$

== 3. Tableau triangulaire

#table(
  columns: (0.8fr, 0.8fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr),
  inset: 4pt,
  align: center,
  [*$x_i$*], [*$D_(i,0)$*], [*ordre 1*], [*ordre 2*], [*ordre 3*], [*ordre 4*], [*ordre 5*],
  [$-2$], [$-1$], [$1$], [$3$], [$1$], [$0$], [$0$],
  [$1$], [$2$], [$19$], [$4$], [$1$], [$0$], [],
  [$4$], [$59$], [$11$], [$6$], [$1$], [], [],
  [$-1$], [$4$], [$5$], [$-2$], [], [], [],
  [$3$], [$24$], [$11$], [], [], [], [],
  [$-4$], [$-53$], [], [], [], [], [],
)

La première ligne du triangle fournit les coefficients de Newton :

$
b_0=-1,
quad
b_1=1,
quad
b_2=3,
quad
b_3=1,
quad
b_4=b_5=0.
$

Les différences d'ordre $4$ sont toutes nulles, mais celles d'ordre $3$ ne le sont pas. Le polynôme est donc *de degré exactement 3*.

== 4. Polynôme sous forme de Newton

La forme de Newton utilise les coefficients de la première ligne :

$
P(x)=
b_0
+b_1(x-x_1)
+b_2(x-x_1)(x-x_2)
+b_3(x-x_1)(x-x_2)(x-x_3).
$

En substituant les valeurs :

$
P(x)=-1+(x+2)+3(x+2)(x-1)+(x+2)(x-1)(x-4).
$

En développant :

$
P(x)=x^3-2x+3.
$

On vérifie que cette expression prend bien les six ordonnées du sujet en leurs abscisses respectives, y compris

$
P(-4)=-64+8+3=-53.
$

== 5. Méthode à retenir

1. Copier les points *dans l'ordre donné*.
2. Calculer les différences de premier ordre en utilisant deux abscisses consécutives.
3. Recommencer pour obtenir les ordres supérieurs ; le dénominateur emploie les deux abscisses extrêmes.
4. Chercher le dernier ordre dont les différences ne sont pas nulles : c'est le degré du polynôme.
5. Si le polynôme est demandé, lire ses coefficients dans la première ligne de la table.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Écart entre tableau et sujet.* Les photos du tableau semblent indiquer $y_6=53$ ; le sujet officiel indique $y_6=-53$. Avec le signe positif, les différences d'ordre $4$ et $5$ ne s'annulent pas, et l'interpolateur serait de degré $5$. La correction présentée suit le document imprimé.
]
