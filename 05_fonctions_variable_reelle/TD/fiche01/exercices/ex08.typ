// source-confidence: high
// source-uncertainty: the official TD statement is available, but no handwritten correction for this exercise was supplied.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 8 — Examen terminal Juin 2026

Soient $(u_n)_(n in NN^*)$ et $(v_n)_(n in NN^*)$ des suites à termes
strictement positifs.

== Question 1

On suppose qu'il existe $n_0 in NN^*$ tel que, pour tout $n>=n_0$,

$
u_(n+1)/u_n
<=
v_(n+1)/v_n.
$

Vérifier que la suite

$
(u_n/v_n)_(n>=n_0)
$

est décroissante et que, pour tout $n>=n_0$,

$
0 <= u_n <= (u_(n_0)/v_(n_0)) v_n.
$

On suppose dorénavant que

$
u_n=1/n^alpha,
quad
alpha in RR.
$

== Question 2

Montrer que, lorsque $n->+oo$,

$
u_(n+1)/u_n
=
1-alpha/n+o(1/n).
$

== Question 3

Pour tout $n in NN^*$, on pose

$
v_n
=
(1 dot 3 dot 5 dots (2n-1))
/
(2 dot 4 dot 6 dots (2n)).
$

=== 3.a

Calculer

$
v_(n+1)/v_n
$

puis déterminer $beta in RR$ tel que

$
v_(n+1)/v_n
=
1-beta/n+o(1/n)
$

quand $n->+oo$.

=== 3.b

En déduire un équivalent de

$
v_(n+1)/v_n-u_(n+1)/u_n
$

lorsque

$
alpha != beta.
$

=== 3.c

Montrer que, pour tout

$
alpha>1/2,
$

il existe un entier $N in NN$ tel que, pour tout $n>=N$,

$
v_(n+1)/v_n-u_(n+1)/u_n
>=0.
$

=== 3.d

En utilisant la question 1, donner la nature de la série

$
sum v_n.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction manquante.* L'exercice figure sur la fiche TD officielle, mais
  aucune correction manuscrite correspondante n'a été fournie.
]
