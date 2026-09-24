#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 23/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Extrema, supremum et infimum]
]
#line(length: 100%)
#v(0.7em)

= Extrema, borne supérieure et borne inférieure

== Plus grand et plus petit élément

#definition([
  Soit $A$ une partie de $RR$.

  On dit que $A$ possède un *plus grand élément* s'il existe $a in A$ tel que $a$ soit un majorant de $A$.
  On note alors

  $
  a = max(A).
  $

  On dit que $A$ possède un *plus petit élément* s'il existe $b in A$ tel que $b$ soit un minorant de $A$.
  On note alors

  $
  b = min(A).
  $
])

#remark([
  Une partie de $RR$ ne possède pas toujours de plus petit élément ou de plus grand élément.
])

#example([
  Pour

  $
  A = ]0,1],
  $

  le nombre $1$ est le plus grand élément de $A$ :

  $
  max(A)=1.
  $

  En revanche, $A$ ne possède pas de plus petit élément.
])

#proposition([
  Toute partie finie non vide de $RR$ possède un plus petit élément et un plus grand élément.
])

#proposition([
  Soit $A$ une partie de $RR$.

  - Si $A$ possède un plus grand élément, alors celui-ci est unique.
  - Si $A$ possède un plus petit élément, alors celui-ci est unique.
])

== Borne supérieure et borne inférieure

#definition([
  Soit $A$ une partie majorée de $RR$.

  Si l'ensemble des majorants de $A$ possède un plus petit élément, cet élément est appelé la *borne supérieure* de $A$ et est noté

  $
  sup(A).
  $
])

#definition([
  Soit $A$ une partie minorée de $RR$.

  Si l'ensemble des minorants de $A$ possède un plus grand élément, cet élément est appelé la *borne inférieure* de $A$ et est noté

  $
  inf(A).
  $
])

#example([
  Pour

  $
  A = ]0,1],
  $

  on a

  $
  sup(A)=1
  quad "et" quad
  inf(A)=0.
  $

  Pour

  $
  B = ]-oo,2[,
  $

  on a

  $
  sup(B)=2,
  $

  bien que $B$ ne possède pas de plus grand élément.
])

#proposition([
  Soit $A$ une partie de $RR$.

  - Si $A$ possède un plus grand élément, alors

    $
    max(A)=sup(A).
    $

  - Si $A$ possède un plus petit élément, alors

    $
    min(A)=inf(A).
    $
])

== Preuve dans le cas du maximum

Supposons que $A$ possède un plus grand élément.

Comme $max(A) in A$ et que $max(A)$ est un majorant de $A$, on a

$
sup(A) <= max(A).
$

D'autre part, $sup(A)$ est un majorant de $A$ et $max(A) in A$, donc

$
max(A) <= sup(A).
$

Ainsi,

$
max(A)=sup(A).
$

= Existence et caractérisation de la borne supérieure

#proposition(title: "Théorème.", [
  Toute partie non vide majorée de $RR$ admet une borne supérieure.

  Toute partie non vide minorée de $RR$ admet une borne inférieure.
])

#proposition(title: "Théorème.", [
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
