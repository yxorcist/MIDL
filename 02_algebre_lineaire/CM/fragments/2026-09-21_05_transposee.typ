#import "../style.typ": *

= 2.4.5 Transposée

== Définition 2.4.5

Soit

$
A = (a_(i,j)) in M_(n,p)(K).
$

On définit sa transposée

$
A^T = (a'_(i,j)) in M_(p,n)(K)
$

par

$
a'_(i,j) = a_(j,i).
$

Autrement dit, on échange les lignes et les colonnes de $A$.

La transposée définit une application

$
T : M_(n,p)(K) -> M_(p,n)(K),
quad
A -> A^T.
$

== Proposition 2.4.6

1. Si $A in M_(n,p)(K)$, alors

   $
   (A^T)^T = A.
   $

2. Si $A,B in M_(n,p)(K)$ et $lambda in K$, alors

   $
   (lambda A + B)^T
   =
   lambda A^T + B^T.
   $

   Autrement dit, l'application de transposition est linéaire.

3. Si

   $
   A in M_(n,p)(K)
   quad "et" quad
   B in M_(p,q)(K),
   $

   alors

   $
   (A B)^T = B^T A^T.
   $

=== Démonstration du point 1

Posons

$
A = (a_(i,j)).
$

Si

$
A^T = (b_(i,j)),
$

alors

$
b_(i,j) = a_(j,i).
$

En transposant une seconde fois, le coefficient $(i,j)$ redevient $a_(i,j)$.

Donc

$
(A^T)^T = A.
$

=== Démonstration du point 2

Posons

$
A = (a_(i,j))
quad "et" quad
B = (b_(i,j)).
$

Le coefficient $(i,j)$ de

$
(lambda A + B)^T
$

est

$
lambda a_(j,i) + b_(j,i),
$

qui est exactement le coefficient $(i,j)$ de

$
lambda A^T + B^T.
$

Ainsi,

$
(lambda A + B)^T
=
lambda A^T + B^T.
$
