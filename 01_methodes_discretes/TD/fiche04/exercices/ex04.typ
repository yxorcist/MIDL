// source-confidence: high
// source-note: énoncé de l'exercice 4 dans TD04_relations-ordres.pdf ; aucune correction manuscrite de cet exercice n'est visible.
// source-reconstruction: démonstration complète ajoutée à partir de la définition imprimée.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 4 — Équivalence par parité sur $ZZ$

On définit sur $ZZ$ la relation

$
x R y quad <=> quad x+y " est pair".
$

== Réflexivité

Pour tout $x in ZZ$, $x+x=2x$ est pair. Donc $x R x$.

== Symétrie

Si $x R y$, alors $x+y$ est pair. Comme $y+x=x+y$, on a aussi $y R x$.

== Transitivité

Supposons $x R y$ et $y R z$. Il existe $k,h in ZZ$ tels que

$
x+y=2k,
quad y+z=2h.
$

En additionnant ces égalités puis en soustrayant $2y$,

$
x+z=(x+y)+(y+z)-2y
=2(k+h-y).
$

Donc $x+z$ est pair et $x R z$.

Ainsi $R$ est une relation d'équivalence.

== Classes d'équivalence

Comme

$
(x+y)-(x-y)=2y,
$

$x+y$ est pair si et seulement si $x-y$ est pair. Autrement dit, $x$ et $y$ ont la même parité.

Il existe donc deux classes :

$
[0]_R=\{2k: k in ZZ\}
$

et

$
[1]_R=\{2k+1: k in ZZ\}.
$

Tout entier est pair ou impair, et les deux classes sont disjointes.

*Méthode.* Remplacer « somme paire » par « même parité », puis choisir un représentant pair et un représentant impair.
