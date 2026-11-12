#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

On considère $E = RR^3$ et les deux parties de $E$ :

$
F = {(x,y,z) in E | 3x - 7y + 3z = 1},
$

$
G = {(x,y,z) in E | x - y^2 = 0}.
$

On cherche à déterminer si $F$ et $G$ sont des sous-espaces vectoriels de $E$.

== Ensemble $F$

Tout sous-espace vectoriel de $E$ doit contenir le vecteur nul $0_E = (0,0,0)$.

Or, en substituant les coordonnées de $0_E$ dans l'équation de $F$, on obtient

$
3 dot 0 - 7 dot 0 + 3 dot 0 = 0 != 1.
$

Ainsi, $0_E in.not F$.

*Conclusion :* $F$ n'est pas un sous-espace vectoriel de $E$.

== Ensemble $G$

Vérifions d'abord si $G$ contient le vecteur nul $0_E = (0,0,0)$ :

$
0 - 0^2 = 0.
$

Donc $0_E in G$. Il reste à étudier la stabilité ; pour montrer qu'elle échoue, un contre-exemple suffit.

Prenons $u = (1,1,0)$. On a $u in G$, car

$
1 - 1^2 = 0.
$

Pour le scalaire $lambda = 2$, on obtient

$
2u = (2,2,0).
$

Cependant,

$
2 - 2^2 = -2 != 0.
$

Donc $2u in.not G$. L'ensemble $G$ n'est pas stable par multiplication scalaire.

*Conclusion :* $G$ n'est pas un sous-espace vectoriel de $E$.

== Méthode à retenir

- Si $0_E in.not F$, alors $F$ n'est pas un sous-espace vectoriel.
- Si $0_E in F$, cela ne suffit pas : il faut également la stabilité par addition et par multiplication scalaire.
- Un seul contre-exemple à l'une de ces stabilités suffit pour conclure négativement.
