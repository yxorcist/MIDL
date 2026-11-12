#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

$
F = {u in E, 3x - 7y + 3z = 1}
$

$
G = {u in E, x - y^2 = 0},
quad E = RR^3.
$

== $F$ SEV ?

$
0_E in F ? quad 3 dot 0 - 7 dot 0 + 3 dot 0 != 1
$

$F$ n'est pas un SEV.

== $G$ SEV ?

$
0_E in G ? quad 0 - 0^2 = 0, quad 0_E in G.
$

Stabilité :

Prenons $u = (1,1,0) in G$ car $1 - 1^2 = 0$.

$
2u = (2,2,0) in G ? quad 2 - 2^2 != 0
$

$G$ n'est pas stable par multiplication scalaire.

$G$ n'est pas un SEV.
