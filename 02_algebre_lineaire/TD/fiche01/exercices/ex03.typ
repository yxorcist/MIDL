#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

On considère dans $RR^4$

$
v_1=(0,-1,1,1),
quad
v_2=(2,1,-1,1),
quad
v_3=(1,1,-1,0),
$

et

$
F="Vect"(v_1,v_2,v_3).
$

== Question 1.a — Extraire une base de $F$

On cherche les relations linéaires entre $v_1,v_2,v_3$ :

$
alpha v_1 + beta v_2 + lambda v_3 = 0.
$

Le système associé est

$
cases(
  2 beta + lambda = 0,
  -alpha + beta + lambda = 0,
  alpha - beta - lambda = 0,
  alpha + beta = 0,
).
$

La réduction de Gauss effectuée dans les notes conduit à une variable libre, avec

$
alpha - beta = lambda,
quad
-2 beta = lambda.
$

La famille $(v_1,v_2,v_3)$ est donc liée, et $v_3$ s'exprime à partir de $v_1$ et $v_2$.

En revanche, $(v_1,v_2)$ est libre. Comme elle engendre encore $F$,

$
B=(v_1,v_2)
$

est une base de $F$.

Ainsi,

$
dim(F)=2.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction disponible.* La photographie fournie s'arrête au début de la question 1.b. Les questions suivantes de l'exercice ne sont donc pas complétées ici.
]
