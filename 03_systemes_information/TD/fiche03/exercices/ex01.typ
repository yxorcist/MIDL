// source-confidence: high
// source-note: photographie manuscrite 10995.jpg, en-tête « TD 3 », « exercice 1 ».
// source-note: questions 1 à 4 et leurs définitions retranscrites en conservant la distinction MCD / MLD.
// source-uncertainty: l'énoncé imprimé du TD03 n'est pas fourni ; les libellés des quatre questions sont ceux inférés des réponses.
// source-uncertainty: la dernière ligne du verso ou une éventuelle suite de l'exercice n'est pas visible.
// source-verification: les précisions pédagogiques ajoutées sont identifiées explicitement et ne sont pas présentées comme extraites de la copie.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 1 — Vocabulaire du modèle relationnel

== 1. Définitions : structure des données

*Table ou relation.* Tableau constitué de colonnes et de lignes, qui porte des données sur un sujet.

*Attribut ou colonne.* Représente une caractéristique des données.

*Clé primaire.* Attribut ou ensemble d'attributs qui permet d'identifier chaque ligne de façon unique. Une clé primaire ne peut pas être `NULL`.

*Clé étrangère.* Attribut ou ensemble d'attributs qui fait référence à la clé primaire d'une autre table ou de la même table.

*Arité.* Nombre de colonnes d'une relation.

*Schéma d'une relation.* Décrit la structure de la table, son nom et ses attributs.

*Schéma d'une base de données relationnelle.* Ensemble des schémas des relations qui composent la base de données, avec les contraintes associées.

*Modèle logique de données (MLD).* Représentation des données sous forme de relations, avec les attributs, les clés primaires et les clés étrangères. Le MLD traduit généralement le modèle conceptuel de données (MCD).

== 2. Définitions : contenu d'une relation

*Valeur.* Donnée précise prise par un attribut.

*Valeur NULL.* Valeur absente ; elle ne signifie pas la même chose que le nombre `0`.

*Tuple.* Ligne d'une table qui rassemble les valeurs des différents attributs pour un enregistrement.

*Instance d'une relation.* Contenu réel d'une relation à un instant donné, c'est-à-dire l'ensemble des tuples présents dans la table.

*Cardinalité d'une relation.* Nombre de lignes (tuples) de cette relation.

*Instance d'une base de données relationnelle.* Ensemble des données présentes dans la base à un instant donné.

== 3. Identifiant et occurrence

*Identifiant.* Propriété qui permet de distinguer de manière unique chaque élément d'une entité.

Dans la copie, cette notion est rapprochée de la *clé primaire*.

*Occurrence.* Élément concret d'une entité. Dans le passage au modèle logique, elle est représentée par un tuple (une ligne).

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Précision terminologique ajoutée.* En MCD, on parle d'un identifiant d'entité ; dans une relation du MLD, on parle de clé primaire. Les deux notions se correspondent lors du passage du modèle conceptuel au modèle logique, mais n'appartiennent pas au même niveau de modélisation.
]

== 4. Exemple : occurrence et instance

*Occurrence du MCD.* Un étudiant particulier constitue une occurrence de l'entité « Étudiant ».

*Instance de la relation.* Ensemble des lignes de la table « Étudiant » à un instant donné.

Autrement dit, une occurrence décrit un élément particulier, tandis que l'instance d'une relation désigne tous ses enregistrements à l'instant considéré.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Limite de la source.* La photographie montre une seule page manuscrite, intitulée « TD 3 — exercice 1 ». Aucun autre exercice de cette fiche n'est fourni sur cette image ; aucune correction supplémentaire n'a été reconstituée.
]
