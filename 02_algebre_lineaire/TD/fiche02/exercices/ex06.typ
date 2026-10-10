// source-confidence: high
// source-note: numbering and matrices cross-checked against the official TD02 sheet.
// source-note: the supplied handwritten page contains row reductions for all six matrices.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6

Déterminer le rang des matrices $A,B,C,D,E,F$ de l'énoncé.

== Matrice $A$

La réduction manuscrite donne une forme échelonnée avec deux lignes non nulles :
$
A
~
mat(
  1, 2, 3;
  0, -1, -2;
  0, 0, 0;
).
$

Donc
$
"rg"(A)=2.
$

== Matrice $B$

La réduction donne trois pivots :
$
B
~
mat(
  1, 1, 1;
  0, 1, 3;
  0, 0, 2;
).
$

Donc
$
"rg"(B)=3.
$

== Matrice $C$

La réduction donne
$
C
~
mat(
  1, -2, 1;
  0, 1, 0;
  0, 0, 0;
).
$

Donc
$
"rg"(C)=2.
$

== Matrice $D$

La réduction manuscrite fait apparaître trois lignes non nulles, donc
$
"rg"(D)=3.
$

== Matrice $E$

La réduction donne deux lignes non nulles, donc
$
"rg"(E)=2.
$

== Matrice $F$

La réduction manuscrite conduit à une matrice dont une seule ligne est non nulle :
$
F
~
mat(
  1+i, 2-i, 1+2i;
  0, 0, 0;
  0, 0, 0;
).
$

Donc
$
"rg"(F)=1.
$
