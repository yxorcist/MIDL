// source-confidence: high for determinant results, medium for source-matrix transcription
// source-note: numbering and matrices cross-checked against official TD02.
// source-note: M1–M3 from the earlier batch; M4–M6 determinant results from handwritten photograph 10901. Original coefficients of M4–M6 are not reproduced here.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 8

== Matrice M1

La correction manuscrite donne

$
det(M_1)=-2.
$

Donc $M_1$ est inversible.

== Matrice M2

On obtient

$
det(M_2)=a b c.
$

Ainsi, $M_2$ est inversible si et seulement si

$
a b c != 0.
$

== Matrice M3

Dans la matrice $M_3$, la quatrième colonne est trois fois la première.

Les colonnes sont donc liées et

$
det(M_3)=0.
$

Ainsi, $M_3$ n'est pas inversible.

== Matrice M4

Le calcul manuscrit donne

$
det(M_4)=0.
$

Donc $M_4$ *n'est pas inversible*.

== Matrice M5

Le déterminant obtenu dans la correction est

$
det(M_5)=(a+3)^2(a+1).
$

Ainsi,

$
det(M_5) != 0
quad <=> quad
a != -3 " et " a != -1.
$

Par conséquent, $M_5$ est inversible exactement si $a$ n'appartient pas à l'ensemble $ {-3,-1} $.

== Matrice M6

Le développement du déterminant est noté dans la correction sous la forme

$
det(M_6)=-x^3+7x^2-4x-12.
$

On factorise :

$
det(M_6)=-(x+1)(x-2)(x-6).
$

Par conséquent, pour $x in RR$,

$
M_6 " est inversible "
quad <=> quad
x in.not {-1,2,6}.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source et vérification.* Ces trois résultats proviennent de la photographie 10901 (suite de l'exercice 8). Les factorisations ont été vérifiées algébriquement. Les matrices originales ne sont pas entièrement retranscrites, faute de source nette ; conserver la fiche officielle pour les coefficients.
]
