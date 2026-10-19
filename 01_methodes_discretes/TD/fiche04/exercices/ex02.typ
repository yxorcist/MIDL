// source-confidence: high
// source-note: sujet imprimé TD04_relations-ordres.pdf (exercice 2), photo manuscrite 11078 Q1.
// source-reconstruction: preuve par élément de la question 2 ajoutée depuis l'énoncé, non visible sur la copie.
// source-verification: les sens de composition sont fixés explicitement pour éviter d'inverser l'ordre des facteurs.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 2 — Identités entre relations binaires

Soient $R_1$, $R_2$ et $R$ trois relations sur un ensemble $E$.

On utilise la convention

$
(x,z) in S compose R
quad <=> quad
exists y in E:
(x,y) in R " et " (y,z) in S.
$

== 1. Réciproque d'une composition

On veut montrer

$
(R_1 compose R_2)^(-1)=R_2^(-1) compose R_1^(-1).
$

=== Démonstration par équivalences

Soient $x,z in E$.

$
(x,z) in (R_1 compose R_2)^(-1)
$

$
<=> (z,x) in R_1 compose R_2
$

$
<=> exists y in E:
(z,y) in R_2 " et " (y,x) in R_1
$

$
<=> exists y in E:
(x,y) in R_1^(-1) " et " (y,z) in R_2^(-1)
$

$
<=> (x,z) in R_2^(-1) compose R_1^(-1).
$

Les deux relations contiennent les mêmes couples : elles sont égales.

*Méthode.* En inversant une composée, on inverse l'ordre des relations et chacune des relations prises séparément.

== 2. Composition distributive sur l'union

Il faut prouver

$
(R_1 union R_2) compose R
=
(R_1 compose R) union (R_2 compose R).
$

Cette démonstration complète l'énoncé : elle n'est pas visible sur la photographie.

Soient $x,z in E$.

$
(x,z) in (R_1 union R_2) compose R
$

$
<=> exists y in E:
(x,y) in R " et " (y,z) in R_1 union R_2
$

$
<=> exists y in E:
(x,y) in R " et "
((y,z) in R_1 " ou " (y,z) in R_2).
$

On distribue le « et » sur le « ou », puis l'existence du même intermédiaire sur les deux possibilités :

$
<=> (exists y: (x,y) in R " et " (y,z) in R_1)
$

$
quad "ou" quad
(exists y: (x,y) in R " et " (y,z) in R_2).
$

Cela revient à

$
(x,z) in (R_1 compose R) union (R_2 compose R).
$

D'où l'égalité demandée.

== Méthode générale

Pour montrer que deux expressions de relations sont égales, choisir un couple arbitraire $(x,z)$, dérouler les définitions avec « si et seulement si », puis conclure que ce couple appartient à l'une exactement quand il appartient à l'autre.
