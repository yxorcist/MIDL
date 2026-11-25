// source-confidence: high for the argument visible; medium for the unavailable official statement.
// source-note: photo 9.06.00 PM (1).jpeg, bottom, continued at start of photo 9.06.00 PM (2).jpeg.
// source-reconstruction: the non-empty clause assumption is made explicit.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 4 — Forme normale conjonctive positive

== Observation de la copie

On considère une formule écrite sous forme normale conjonctive :

$
F = C_1 and C_2 and dots and C_k.
$

Chaque $C_i$ est une clause : une disjonction de littéraux. Dans le cas étudié, toutes les clauses contiennent uniquement des *variables non niées*, reliées par des disjonctions.

== Montrer que la formule est satisfaisable

Prenons l'interprétation $v$ définie par

$
v(p) = 1
$

pour toute variable propositionnelle $p$ de la formule.

Chaque clause *non vide* $C_i$ contient au moins une variable vraie et vaut donc $1$. Ainsi

$
v(F) = v(C_1) and dots and v(C_k) = 1.
$

On a exhibé une interprétation satisfaisant $F$. Elle est donc *consistante*.

== Nuance

La conclusion suppose qu'aucune clause n'est vide (la clause vide représenterait le faux). Il ne s'ensuit *pas* que $F$ soit une tautologie : avec toutes les variables à $0$, une clause positive non vide est fausse.

*Provenance.* Les photos montrent la forme $C_1 and dots and C_k$ puis la conclusion « une conjonction de clauses vraies est vraie ». Les précisions sur la clause vide et la distinction satisfaisabilité/tautologie sont ajoutées.
