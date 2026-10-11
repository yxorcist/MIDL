// source-confidence: high
// source-note: statement and numbering cross-checked against TD02_dependances-fonctionnelles.pdf.
// source-note: correction transcribed from the supplied handwritten page.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 2 — Exercice 1 — Questions de cours

== 1. Dépendance fonctionnelle

Une rubrique $B$ dépend fonctionnellement d'une rubrique $A$, noté

$ A -> B $

si, pour une valeur donnée de $A$, il existe une seule valeur possible de $B$.

== 2. Types de dépendances fonctionnelles

*DF simple.* La partie gauche contient une seule rubrique.

*DF à partie gauche composée.* La partie gauche contient plusieurs rubriques.

*DF réflexive.* La cible est déjà contenue dans la source.

*DF symétrique.* On a les deux dépendances

$ A -> B quad "et" quad B -> A. $

*DF élémentaire.* On ne peut supprimer aucune rubrique de la partie gauche sans perdre la dépendance fonctionnelle.

*DF directe.* Elle n'est pas obtenue par transitivité à partir d'autres dépendances fonctionnelles.

== 3. Propriétés

=== a) Réflexivité

Si $B subset.eq A$, alors

$ A -> B. $

Exemple :

$ (A,B,C) -> B. $

=== b) Projection

Si

$ A -> (B,C,D), $

alors

$ A -> B, quad A -> C, quad A -> D. $

=== c) Addition

Si

$ A -> B quad "et" quad A -> C, $

alors

$ A -> (B,C). $

=== d) Augmentation

Si

$ A -> B, $

alors

$ (A,C) -> (B,C). $

=== e) Transitivité

Si

$ A -> B quad "et" quad B -> C, $

alors

$ A -> C. $

== 4. Pourquoi ne garder que certaines DF ?

La correction répond que les autres dépendances peuvent être *déduites* à partir de celles obtenues avec les propriétés précédentes.

En l'absence de DF symétriques, on peut donc concentrer le travail sur les DF *non réflexives, élémentaires, directes et à but simple*.
