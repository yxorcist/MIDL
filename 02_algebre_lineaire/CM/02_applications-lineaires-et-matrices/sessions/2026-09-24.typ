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

Dans les bases canoniques de $K^3$ et $K^2$, on considère

$
"Mat"(phi)
=
mat(
  2, 1, 0;
  3, 5, -1;
)
$

et

$
v=(1,0,7).
$

Alors

$
[v]
=
mat(1;0;7)
$

et

$
[phi(v)]
=
mat(
  2, 1, 0;
  3, 5, -1;
)
mat(1;0;7)
=
mat(2;-4).
$

Donc

$
phi(v)=(2,-4).
$

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
  "rg"(A) <= p.
  $

  Si

  $
  A="Mat"_(cal(E),cal(F))(phi),
  $

  alors

  $
  "rg"(A)="rg"(phi) <= n=dim(E).
  $

  Ainsi,

  $
  "rg"(A) <= min(p,n).
  $
])

== Preuve du lien entre rang d'une matrice et rang d'une application

On considère l'isomorphisme de coordonnées

$
Theta:F -> M_(p,1)(K),
quad
v -> [v]_(cal(F)).
$

Comme $Theta$ est bijective, elle conserve la dimension des sous-espaces.

Or

$
"Im"(phi)
=
"Vect"(phi(e_1),dots,phi(e_n)).
$

Donc

$
"rg"(phi)
=
dim("Vect"(phi(e_1),dots,phi(e_n)))
$

et, en appliquant $Theta$,

$
"rg"(phi)
=
dim("Vect"([phi(e_1)]_(cal(F)),dots,[phi(e_n)]_(cal(F)))).
$

Mais ces vecteurs de coordonnées sont précisément les colonnes de

$
A="Mat"_(cal(E),cal(F))(phi).
$

Ainsi,

$
"rg"(phi)="rg"(A).
$

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

== Corollaire — isomorphismes et matrices inversibles

Supposons maintenant

$
dim(E)=dim(F)=n.
$

Soit

$
phi:E->F
$

linéaire. Alors

$
phi " est un isomorphisme"
$

si et seulement si

$
"Mat"_(cal(E),cal(F))(phi)
$

est inversible.

Dans ce cas,

$
"Mat"_(cal(F),cal(E))(phi^(-1))
=
("Mat"_(cal(E),cal(F))(phi))^(-1).
$

=== Preuve

Si $phi$ est un isomorphisme, sa bijection réciproque $phi^(-1)$ vérifie

$
phi compose phi^(-1)=id_F
quad "et" quad
phi^(-1) compose phi=id_E.
$

En passant aux matrices et en utilisant le théorème sur la composée,

$
"Mat"_(cal(E),cal(F))(phi)
"Mat"_(cal(F),cal(E))(phi^(-1))
=
I_n.
$

La matrice de $phi$ est donc inversible, d'inverse

$
"Mat"_(cal(F),cal(E))(phi^(-1)).
$

Réciproquement, supposons

$
A="Mat"_(cal(E),cal(F))(phi)
$

inversible, d'inverse $B$.

Par l'isomorphisme entre applications linéaires et matrices, il existe une unique
application linéaire

$
psi:F->E
$

telle que

$
"Mat"_(cal(F),cal(E))(psi)=B.
$

Alors

$
AB=I_n
quad "et" quad
BA=I_n.
$

Le théorème sur la composée donne

$
phi compose psi=id_F
quad "et" quad
psi compose phi=id_E.
$

Ainsi $phi$ est un isomorphisme et

$
psi=phi^(-1).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source du 28/09.* Les photographies plus nettes du cours ont permis de compléter
  l'exemple de la proposition 2.5.4, la preuve du lien entre rangs et le corollaire
  sur l'inversibilité.
])
