#import "../style.typ": *

= Matrice d'une application linéaire

Soient $E$ et $F$ deux $K$-espaces vectoriels de dimensions finies

$
dim(E)=n,
quad
dim(F)=p.
$

On choisit des bases

$
cal(E)=(e_1,...,e_n)
$

de $E$ et

$
cal(F)=(f_1,...,f_p)
$

de $F$.

== Application coordonnées

#proposition([
  L'application

  $
  [dot]_(cal(E)) : E -> M_(n,1)(K),
  quad
  u -> [u]_(cal(E))
  $

  est linéaire.
])

== Définition de la matrice d'une application linéaire

Soit

$
phi:E->F
$

une application $K$-linéaire.

#definition([
  La matrice de $phi$ dans la base $cal(E)$ au départ et la base $cal(F)$ à l'arrivée est

  $
  "Mat"_(cal(E),cal(F))(phi)
  =
  (
  [phi(e_1)]_(cal(F))
  dots
  [phi(e_n)]_(cal(F))
  )
  in M_(p,n)(K).
  $
])

Autrement dit, la $j$-ième colonne de la matrice est le vecteur de coordonnées de $phi(e_j)$ dans la base $cal(F)$.

Si

$
"Mat"_(cal(E),cal(F))(phi)=(a_(i,j)),
$

alors

$
phi(e_j)
=
sum_(i=1)^p a_(i,j) f_i.
$

== Formule fondamentale

Pour tout $u in E$,

$
[phi(u)]_(cal(F))
=
"Mat"_(cal(E),cal(F))(phi)
[u]_(cal(E)).
$

== Exemple

Dans l'exemple du tableau, une matrice de taille $2 times 3$ est utilisée avec un vecteur de coordonnées dans $K^3$ pour calculer directement les coordonnées de son image dans $K^2$.
