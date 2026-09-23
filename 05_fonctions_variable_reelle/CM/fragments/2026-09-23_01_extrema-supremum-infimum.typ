#import "../style.typ": *

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
