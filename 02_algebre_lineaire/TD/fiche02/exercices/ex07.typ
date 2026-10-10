// source-confidence: high
// source-note: numbering and statement cross-checked against the official TD02 sheet; handwritten correction complete.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

On considère l'endomorphisme $phi$ de $RR^4$ dont la matrice dans la base canonique est

$
M=
mat(
  0, 1, 1, 0;
  -1, -1, 0, 1;
  1, 1, 0, -1;
  -1, 0, 1, 1;
).
$

== Question 1

La réduction manuscrite de $M$ fait apparaître deux pivots.

Donc
$
"rg"(M)=2.
$

Ainsi
$
"rg"(phi)=2.
$

== Question 2

La matrice au carré est nulle. On en déduit que l'image est incluse dans le noyau.

== Question 3

Le rang vaut 2, donc l'image est de dimension 2.

Par le théorème du rang, le noyau est également de dimension 2.

Comme l'image est incluse dans le noyau et que ces deux sous-espaces ont la même dimension, ils sont égaux.
