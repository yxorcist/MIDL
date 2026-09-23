#import "../style.typ": *

= Existence et caractérisation de la borne supérieure

#theorem([
  Toute partie non vide majorée de $RR$ admet une borne supérieure.

  Toute partie non vide minorée de $RR$ admet une borne inférieure.
])

#theorem([
  Soit $A$ une partie majorée non vide de $RR$ et soit $M in RR$.

  Les assertions suivantes sont équivalentes :

  1. $M=sup(A)$.

  2. $M$ est un majorant de $A$ et, pour tout $epsilon>0$, il existe $a_epsilon in A$ tel que

     $
     M-epsilon < a_epsilon <= M.
     $

  3. $M$ est un majorant de $A$ et il existe une suite $(a_n)_(n>=1)$ d'éléments de $A$ telle que

     $
     a_n -> M.
     $
])

== Preuve de la caractérisation par $epsilon$

Supposons

$
M=sup(A).
$

Alors $M$ est un majorant de $A$.

Soit $epsilon>0$.

Si aucun élément de $A$ ne vérifiait

$
M-epsilon < a,
$

alors $M-epsilon$ serait encore un majorant de $A$, strictement inférieur à $M$.

Cela contredirait le fait que $M$ est le plus petit des majorants.

Il existe donc $a_epsilon in A$ tel que

$
M-epsilon < a_epsilon <= M.
$

Réciproquement, supposons que $M$ soit un majorant de $A$ et que

$
forall epsilon>0, quad exists a_epsilon in A, quad M-epsilon < a_epsilon <= M.
$

Soit $M'$ un majorant de $A$.

Si $M'<M$, alors en prenant

$
epsilon=M-M'>0,
$

il existerait $a_epsilon in A$ tel que

$
M' = M-epsilon < a_epsilon,
$

ce qui contredirait le fait que $M'$ est un majorant.

Ainsi tout majorant $M'$ de $A$ vérifie

$
M <= M'.
$

Donc $M$ est le plus petit majorant de $A$ :

$
M=sup(A).
$

== Caractérisation séquentielle

Supposons

$
M=sup(A).
$

Pour tout $n>=1$, on applique la caractérisation précédente avec

$
epsilon=1/n.
$

Il existe alors $a_n in A$ tel que

$
M-1/n < a_n <= M.
$

Donc

$
0 <= M-a_n < 1/n.
$

Comme

$
1/n -> 0,
$

on obtient, par encadrement,

$
a_n -> M.
$

Réciproquement, supposons que $M$ soit un majorant de $A$ et qu'il existe une suite $(a_n)$ d'éléments de $A$ telle que

$
a_n -> M.
$

Soit $epsilon>0$.

Par convergence, il existe $N in NN$ tel que pour tout $n>=N$,

$
abs(a_n-M)<epsilon.
$

En particulier,

$
M-epsilon<a_n<=M.
$

La caractérisation précédente donne alors

$
M=sup(A).
$
