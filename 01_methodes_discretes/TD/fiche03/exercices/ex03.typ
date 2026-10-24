// source-confidence: high
// source-note: TD03_ensembles-fonctions.pdf (L. Nourine) et photographies manuscrites 11492.
// source-reconstruction: les justifications manquantes sont explicitées et les erreurs mathématiques des notes sont corrigées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 3

== 1. Première loi de De Morgan

Dans un univers $U$ contenant $A$ et $B$, il faut montrer que le complémentaire de $A union B$ est l'intersection des complémentaires :

$ U ∖ (A union B) = (U ∖ A) inter (U ∖ B). $

Soit $x in U$. Alors :

$ x in U ∖ (A union B) $

$ <=> x in.not A union B $

$ <=> (x in.not A) "et" (x in.not B) $

$ <=> x in (U ∖ A) inter (U ∖ B). $

Les deux ensembles ont les mêmes éléments, donc ils sont égaux.

== 2. Différence d'une union

$ (A union B) ∖ C = (A ∖ C) union (B ∖ C). $

Pour tout $x$ :

$ x in (A union B) ∖ C $

$ <=> (x in A "ou" x in B) "et" x in.not C $

$ <=> (x in A "et" x in.not C) "ou" (x in B "et" x in.not C) $

$ <=> x in (A ∖ C) union (B ∖ C). $

== 3. Décomposition suivant $B$

$ A = (A inter B) union (A ∖ B). $

Si $x in A$, alors soit $x in B$ et $x in A inter B$, soit $x in.not B$ et $x in A ∖ B$. Réciproquement, chaque terme de la réunion est inclus dans $A$.

*Technique réutilisable :* pour prouver une égalité d'ensembles, prendre un élément quelconque et enchaîner des équivalences logiques dans les deux sens.
