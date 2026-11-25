// source-confidence: high
// source-note: photo 9.06.00 PM (2).jpeg, exercice 6 ; rappels des connecteurs à droite de la copie.
// source-verification: transformations vérifiées par les lois de De Morgan et les équivalences propositionnelles.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 6 — Construire les formules avec négation et conjonction

== 1. Grammaire de base

La note veut montrer que les connecteurs *négation* et *conjonction* suffisent pour exprimer les autres connecteurs.

Soit $V$ l'ensemble des variables propositionnelles. L'ensemble $cal(F)$ des formules est engendré par :

- *Base* : toute variable de $V$ est une formule.
- *Négation* : si $F in cal(F)$, alors $not F in cal(F)$.
- *Conjonction* : si $F,G in cal(F)$, alors $(F and G) in cal(F)$.

On peut alors exprimer les autres connecteurs par des *formules logiquement équivalentes* construites uniquement avec ces deux connecteurs.

== 2. Disjonction, implication, équivalence

*Disjonction*, par De Morgan :

$
F or G equiv not (not F and not G).
$

*Implication* :

$
F => G equiv not F or G equiv not (F and not G).
$

*Équivalence* :

$
F <=> G equiv (F => G) and (G => F).
$

En n'utilisant que les connecteurs primitifs, cela donne

$
F <=> G equiv
not (F and not G) and not (G and not F).
$

La copie note également une construction via l'implication dans chaque sens : il s'agit du même résultat.

== 3. Précision sur la construction

Les formes à droite sont des *formules équivalentes*, pas des égalités syntaxiques : la formule d'origine peut encore comporter des connecteurs qui ne font pas partie de la grammaire choisie.

La propriété se propage par induction sur la construction de n'importe quelle formule : on remplace chaque occurrence de disjonction, d'implication et d'équivalence par sa définition en négations et conjonctions.

*Conclusion :* négation et conjonction forment une base fonctionnellement complète pour la logique propositionnelle classique.
