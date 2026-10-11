// source-confidence: high
// source-note: statement and numbering cross-checked against TD01_dictionnaire-donnees-dcc-mcd.pdf.
// source-note: questions 1 to 9 are transcribed from the supplied handwritten correction; the final comment on question 9 is kept close to the source wording.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 1 — Exercice 3 — Modèle Conceptuel de Données

== 1. Définitions

*Entité.* Une entité est une classe d'éléments qui regroupe des rubriques.

*Association.* Une association représente une relation entre plusieurs entités.

*Cardinalité.* Elle indique le nombre de fois qu'une occurrence d'une entité peut participer à une association.

*Identifiant d'entité.* La correction le décrit comme un sous-ensemble sélectionné de ses propriétés permettant d'identifier l'entité.

*Identifiant d'association.* Il est composé des identifiants des entités qui participent à l'association ; il est implicite.

== 2. Nombre d'entités et d'associations

La correction indique :

- *9 entités* ;
- *12 associations*.

== 3–4. Arité et association réflexive

La correction relève :

- *11 associations binaires* ;
- *1 association ternaire* ;
- aucune association d'arité strictement supérieure à 3 ;
- *1 association réflexive* : l'association *approvisionne*, où l'entité *Usine* intervient deux fois.

== 5. Identifiant d'une entité

Pour l'entité *Produit*, l'identifiant relevé est :

$ refPdt $

== 6. Identifiant d'une association

Pour l'association *visite*, la correction donne comme identifiant l'ensemble formé de :

$ (numCli, refRepr) $

== 7. Identifiant de l'association approvisionne

La correction donne :

$ (numUsine_1, numUsine_2, refPdt) $

Les deux occurrences de *numUsine* correspondent aux deux rôles joués par l'entité *Usine* dans l'association réflexive.

== 8. Lecture des cardinalités

=== Association règle

- un client règle de zéro à plusieurs factures ;
- une facture est réglée par un et un seul client.

=== Association concerne

- un produit peut concerner de zéro à plusieurs commandes ;
- une commande concerne de un à plusieurs produits.

=== Association est établie pour

- une facture est établie pour une seule livraison ;
- une livraison peut donner lieu à zéro ou une facture.

=== Association approvisionne

La correction décrit l'association comme reliant des usines qui s'approvisionnent entre elles en produits. L'une des participations de *Usine* est réflexive et la relation implique également *Produit*.

== 9. Commentaire du MCD / erreurs détectées

La correction manuscrite signale principalement deux zones à revoir :

- la partie gauche du MCD autour de *Produit*, *Usine*, *Aire* et du stockage / approvisionnement ;
- la partie droite concernant les clients.

Elle note notamment que les produits sont stockés dans des aires de stockage liées aux usines et qu'une partie du modèle de stockage paraît inutile ou mal placée.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Le commentaire final de la question 9 est très abrégé dans la copie. Il est reformulé sans ajouter de correction qui n'apparaisse pas dans les notes.
]
