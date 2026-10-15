// source-confidence: high
// source-note: photographies manuscrites et tableaux du second lot (10839, 10842, 10848, 10853) ; séance CM non datée, conservée en rappels pour éviter une date de séance inventée.

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


== Degré et représentation graphique

Chaque polynôme $l_i$ est de degré $n$ : il contient exactement $n$ facteurs linéaires. Il en résulte

$
deg(P) <= n.
$

Par exemple, pour trois points d'abscisses distinctes, on peut chercher un polynôme de degré au plus $2$ :

$
P(x)=a x^2+b x+c.
$

Le tableau présente cette interprétation comme la recherche d'une courbe polynomiale passant par les points imposés.

== Unicité du polynôme interpolateur

*Complément de justification mathématique.* Si deux polynômes $P$ et $Q$ de degré au plus $n$ passent par les mêmes $n+1$ points d'abscisses distinctes, alors $P-Q$ est de degré au plus $n$ et possède au moins $n+1$ racines distinctes.

Il est donc identiquement nul, ce qui prouve

$
P=Q.
$

La formule de Lagrange donne donc l'unique polynôme de degré au plus $n$ interpolant les valeurs.

== Autres méthodes mentionnées au tableau

Le cours cite également :

- les *différences divisées* et la forme de *Newton* ;
- les *polynômes de Neville*.

Les photographies de ce lot n'en donnent pas les récurrences ou algorithmes. Seule leur mention est donc conservée ici ; aucune formule n'est reconstruite sans source.
