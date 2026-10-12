// source-confidence: high
// source-note: photographie manuscrite non datée, intitulée « Polynôme de Lagrange » ; classée en rappels faute de date de CM identifiable.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Polynôme d'interpolation de Lagrange

On considère $n+1$ points donnés

$
(x_0,y_0), (x_1,y_1), dots, (x_n,y_n),
$

avec des abscisses $x_i$ *deux à deux distinctes*.

Pour tout indice $i$ compris entre $0$ et $n$, on définit le polynôme de base de Lagrange

$
l_i(x) = product_(0 <= j <= n, j != i) (x-x_j)/(x_i-x_j).
$

Le produit porte sur tous les indices $j$ différents de $i$.

== Propriété fondamentale

En chaque abscisse $x_k$ de la liste,

$
l_i(x_k) =
cases(
  1 & "si " i=k,
  0 & "si " i != k.
)
$

En effet, si $i != k$, l'un des facteurs du numérateur s'annule ; lorsque $i=k$, chacun des facteurs vaut $1$.

== Interpolation

Le polynôme de Lagrange est

$
P(x) = sum_(i=0)^n y_i l_i(x).
$

Pour tout $k in {0,dots,n}$,

$
P(x_k)
=
sum_(i=0)^n y_i l_i(x_k)
=
y_k.
$

Ainsi, $P$ passe par tous les points donnés. Cette propriété est celle démontrée dans les notes photographiées.
