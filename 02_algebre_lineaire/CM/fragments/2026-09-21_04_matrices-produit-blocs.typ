#import "../style.typ": *

= 2.4 Matrices

== Matrices triangulaires et diagonales

Une matrice triangulaire supérieure est de la forme

$
mat(
  a_(1,1), dots, a_(1,n);
  dots.v, dots.down, dots.v;
  0, dots, a_(n,n)
)
$

avec

$
a_(i,j) = 0
quad "si" quad
i > j.
$

Une matrice triangulaire inférieure est de la forme

$
mat(
  a_(1,1), dots, 0;
  dots.v, dots.down, dots.v;
  a_(n,1), dots, a_(n,n)
)
$

avec

$
a_(i,j) = 0
quad "si" quad
i < j.
$

Une matrice carrée est diagonale si

$
a_(i,j) = 0
quad "si" quad
i != j.
$

On la note

$
"diag"(a_(1,1), ..., a_(n,n)).
$

== Notation 2.4.1

Dans $M_(n,p)(K)$, on considère les matrices élémentaires $E_(i,j)$ dont tous les coefficients sont nuls sauf celui de la ligne $i$ et de la colonne $j$, qui vaut $1$.

Ainsi, si

$
A = (a_(i,j)) in M_(n,p)(K),
$

alors

$
A
=
sum_(i=1)^n sum_(j=1)^p a_(i,j) E_(i,j).
$

== Théorème 2.4.2

L'ensemble

$
M_(n,p)(K)
$

est un $K$-espace vectoriel. Son vecteur nul est la matrice nulle, notée $O$ ou $O_(n,p)$.

La famille

$
(E_(1,1), E_(1,2), ..., E_(1,p), E_(2,1), ..., E_(n,p))
$

est une base de $M_(n,p)(K)$, appelée *base canonique*.

En particulier,

$
dim_K(M_(n,p)(K)) = n p.
$

== 2.4.3 Produit matriciel

Soient

$
A = (a_(i,j)) in M_(n,p)(K)
$

et

$
B = (b_(j,k)) in M_(p,q)(K).
$

Alors

$
A B = C in M_(n,q)(K),
$

où

$
C_(i,k)
=
sum_(j=1)^p a_(i,j) b_(j,k).
$

=== Remarque 2.4.3

Pour les matrices élémentaires,

$
E_(i,j) E_(k,l)
=
cases(
  O & "si " j != k,
  E_(i,l) & "si " j = k,
).
$

=== Observations

- Le produit matriciel est associatif.
- Le produit matriciel n'est pas commutatif. Par exemple,

  $
  mat(1, 0) mat(0; 1)
  =
  mat(0)
  $

  tandis que

  $
  mat(0; 1) mat(1, 0)
  =
  mat(0, 0; 1, 0).
  $

- Il peut arriver que $A != O$ et $B != O$ mais que

  $
  A B = O.
  $

- Pour $lambda in K$,

  $
  lambda (A B)
  =
  (lambda A) B
  =
  A (lambda B).
  $

- La matrice identité

  $
  I_n = "diag"(1, ..., 1)
  $

  vérifie, pour les tailles compatibles,

  $
  I_n A = A
  quad "et" quad
  B I_n = B.
  $

== 2.4.4 Matrices par blocs

Une matrice peut être découpée en sous-matrices, appelées *blocs*.

On peut par exemple l'écrire sous la forme

$
A
=
mat(
  A_1, A_2;
  A_3, A_4
),
$

ou plus généralement sous la forme d'une matrice de blocs $(A_(i,j))$.
