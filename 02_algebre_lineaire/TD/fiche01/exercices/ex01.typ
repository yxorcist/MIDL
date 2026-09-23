#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

On considère dans $E = RR^3$ :

$
F = {(x,y,z) in E | 3x - 7y + 3z = 1}
$

et

$
G = {(x,y,z) in E | x - y^2 = 0}.
$

== Ensemble $F$

Le vecteur nul n'appartient pas à $F$, car

$
3 dot 0 - 7 dot 0 + 3 dot 0 = 0 != 1.
$

Donc $F$ n'est pas un sous-espace vectoriel de $E$.

== Ensemble $G$

On a

$
(1,1,0) in G
$

car

$
1 - 1^2 = 0.
$

Mais

$
2(1,1,0) = (2,2,0)
$

et

$
2 - 2^2 = -2 != 0.
$

Donc $(2,2,0) in.not G$ : $G$ n'est pas stable par multiplication externe.

Ainsi $G$ n'est pas un sous-espace vectoriel de $E$.
