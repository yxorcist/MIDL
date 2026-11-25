// source-confidence: medium
// source-note: photo 9.06.00 PM.jpeg : TD1 exercice 2, arbres de construction.
// source-uncertainty: formule originale du numéro 1 et arbre complet du numéro 4 non lisibles ; seules les parties certaines sont transcrites.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 2 — Syntaxe et arbres

== 1. Formule incorrectement construite

La correction manuscrite indique que *des parenthèses manquent* et que *le symbole de conjonction est mal placé*. L'expression ne respecte donc pas la syntaxe propositionnelle.

L'expression exacte à corriger n'est pas dans le cadrage de la photographie.

== 2. Arbre de construction lisible

L'arbre de la copie a pour racine une disjonction : à gauche la variable $p$, à droite l'implication de $q$ vers $r$.

$
p or (q => r)
$

Ordre de construction : former $q => r$, puis réunir cette formule et $p$ par une disjonction.

== 4. Arbre plus complexe

La copie montre une conjonction à la racine, deux branches également conjonctives, une implication avec antécédent $p$ et conséquent $(r or q)$, et plusieurs négations. Le nombre précis de négations et certains symboles terminaux ne sont pas suffisamment nets pour écrire la formule complète.

*Principe.* Une négation s'applique à une formule ; un connecteur binaire joint deux formules. On vérifie la syntaxe de bas en haut en partant des variables.
