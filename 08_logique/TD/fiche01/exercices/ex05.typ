// source-confidence: high
// source-note: photo 9.06.00 PM (2).jpeg, exercice 5, table de vérité.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 5 — Équivalences par tables de vérité

== 1. Équivalence de l'implication et de sa contraposée

La photo compare $p => q$, $not q => not p$ et $not p or q$.

#table(
 columns: 7,
 inset: 5pt,
 align: center,
 [$p$], [$q$], [$p => q$], [$not p$], [$not q$], [$not q => not p$], [$not p or q$],
 [1], [1], [1], [0], [0], [1], [1],
 [1], [0], [0], [0], [1], [0], [0],
 [0], [1], [1], [1], [0], [1], [1],
 [0], [0], [1], [1], [1], [1], [1],
)

Les colonnes correspondantes coïncident. On obtient

$
(p => q) equiv (not q => not p) equiv (not p or q).
$

Il s'agit de *l'équivalence entre implication, contraposée et disjonction*.

== 2. Élément neutre de la conjonction

La copie compare une variable $p$ et la conjonction de $p$ avec une formule toujours vraie $top$.

#table(
 columns: 3,
 align: center,
 [$p$], [$top$], [$p and top$],
 [1], [1], [1],
 [0], [1], [0],
)

On conclut :

$
p and top equiv p.
$

== Méthode

Pour vérifier une équivalence, comparer les colonnes des deux formules pour les $2^n$ valuations des $n$ variables distinctes. Une seule ligne différente suffit à réfuter une équivalence ; l'égalité de toutes les lignes la démontre.
