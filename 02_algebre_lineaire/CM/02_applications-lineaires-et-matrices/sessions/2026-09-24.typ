#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 24/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Déterminant et matrices d'applications linéaires]
]
#line(length: 100%)
#v(0.7em)

= Déterminant — propriétés

#remark([
  Le déterminant n'est pas une application linéaire sur l'espace des matrices.
])

#proposition([
  Soit $A in M_n(K)$.

  1. $A$ est inversible si et seulement si

     $
     det(A) != 0.
     $

     Dans ce cas,

     $
     det(A^(-1)) = 1 / det(A).
     $

  2. On a

     $
     det(A^T)=det(A).
     $

  3. Si $B$ est obtenue à partir de $A$ en échangeant deux colonnes, alors

     $
     det(B)=-det(A).
     $
])

#remark([
  Le critère d'inversibilité peut aussi se lire en termes de colonnes : une matrice carrée est inversible si et seulement si ses colonnes forment une base de $K^n$.
])

= Puissances et polynômes de matrices

Soit $A in M_n(K)$.

Pour $k in NN$, on définit

$
A^k =
cases(
I_n & "si " k=0,
underbrace(A A dots A, k " facteurs") & "si " k>=1.
)
$

#remark([
  Il ne faut pas oublier que

  $
  A^0=I_n.
  $
])

== Polynôme d'une matrice

Soit

$
P=a_0+a_1 X+dots.h+a_p X^p in K[X].
$

On définit

$
P(A)
=
a_0 I_n+a_1 A+dots.h+a_p A^p
in M_n(K).
$

== Exemple

Pour

$
P=X^4-1
quad "et" quad
Q=X^2-2X,
$

les notes évaluent ces polynômes sur différentes matrices et montrent que deux matrices différentes peuvent annuler ou non un même polynôme.

Le calcul se fait toujours en remplaçant la constante $1$ du polynôme par la matrice identité $I_n$ de taille compatible.

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

= Matrices, applications linéaires, rang et composition

== Isomorphisme entre applications linéaires et matrices

#theorem([
  L'application

  $
  "Mat"_(cal(E),cal(F)) :
  L_K(E,F) -> M_(p,n)(K),
  quad
  phi -> "Mat"_(cal(E),cal(F))(phi)
  $

  est un isomorphisme d'espaces vectoriels.
])

En particulier, pour toute matrice

$
A in M_(p,n)(K),
$

il existe une unique application linéaire

$
phi in L_K(E,F)
$

telle que

$
A="Mat"_(cal(E),cal(F))(phi).
$

== Rang d'une matrice

Le rang d'une matrice $A in M_(p,n)(K)$ est la dimension du sous-espace vectoriel de $K^p$ engendré par les colonnes de $A$.

#proposition([
  Soit $A in M_(p,n)(K)$.

  Le rang de $A$ est égal au rang de l'application linéaire

  $
  K^n -> K^p,
  quad
  X -> A X.
  $
])

Si

$
A="Mat"_(cal(E),cal(F))(phi),
$

alors

$
"rg"(A)="rg"(phi).
$

#remark([
  On a toujours

  $
  "rg"(A) <= min(p,n).
  $
])

== Matrice d'une composée

Soient $E,F,G$ des $K$-espaces vectoriels de dimensions finies, munis de bases respectives $cal(E)$, $cal(F)$ et $cal(G)$.

Soient

$
phi in L_K(E,F)
quad "et" quad
psi in L_K(F,G).
$

#theorem([
  La matrice de la composée vérifie

  $
  "Mat"_(cal(E),cal(G))(psi compose phi)
  =
  "Mat"_(cal(F),cal(G))(psi)
  "Mat"_(cal(E),cal(F))(phi).
  $
])
