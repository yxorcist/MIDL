// source-confidence: high for question 1 cleanup, low for the rest because it is not shown in the supplied photo.
// source-note: statement cross-checked against TD02_dependances-fonctionnelles.pdf; only the handwritten cleanup supplied by the user is transcribed.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 2 — Exercice 4 — Le garage

== 1. Épuration des DF

=== a) DF erronées

La correction élimine :

$ 7, quad 8, quad 15, quad 17, quad 18. $

Interprétation de la copie : ces relations ne sont pas des dépendances fonctionnelles valides dans le modèle du garage.

=== b) DF symétriques

La correction note *OK*, car les DF 7 et 18, qui créaient les symétries problématiques avec des DF déjà présentes, ont déjà été retirées à l'étape précédente.

=== c) DF réflexive

On enlève :

$ 16. $

En effet, 16 est

$ "NomPropriétaire" -> "NomPropriétaire". $

=== d) DF non élémentaires

On enlève :

- *20*, à cause de 10 : la rubrique supplémentaire *MarqueVéhicule* est inutile pour obtenir *AdrPropriétaire* ;
- *22*, à cause de 19 : *NumPièce* suffit déjà à déterminer *PrixUnitaire*.

=== e) DF indirectes

On enlève :

- *6*, obtenue à partir de 1 puis 10 ;
- *14*, obtenue à partir de 12 puis 10.

=== Compléments notés sur la copie

La correction manuscrite ajoute deux opérations pratiques :

- supprimer *24*, car son but composé est déjà obtenu par projection ;
- dans *21*, remplacer le libellé *Date* par *DateRéparation* pour lever l'ambiguïté.

== Liste restante après ces suppressions

En appliquant exactement les suppressions notées sur la copie à la liste officielle, il reste :

$ 1,2,3,4,5,9,10,11,12,13,19,21,23. $

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction partielle.* La photo fournie s'arrête à cette épuration. Le graphe final, les rubriques identifiantes, la classification et le MCD des questions 2 à 5 ne sont pas reconstruits sans source manuscrite supplémentaire.
]
