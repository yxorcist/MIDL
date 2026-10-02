// source-confidence: high
// source-note: numbering and statement cross-checked against the official TD02 sheet; the supplied handwritten page contains the end of the coefficient computation and the explicit formula.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

On cherche une application linéaire

$
phi: RR^2 -> RR
$

telle que

$
phi(-1,1)=2
quad "et" quad
phi(1,1)=4.
$

Toute application linéaire de $RR^2$ dans $RR$ s'écrit

$
phi(x,y)=a x+b y
$

pour certains réels $a,b$.

Les conditions imposées donnent

$
cases(
-a+b=2,
a+b=4.
)
$

En additionnant les deux équations,

$
2b=6,
$

donc

$
b=3.
$

Puis

$
a=1.
$

Le couple $(a,b)$ est donc déterminé de manière unique.

Ainsi, il existe une unique application linéaire vérifiant les conditions de l'énoncé, et elle est donnée par

$
boxed(phi(x,y)=x+3y).
$
