// source-confidence: high
// source-note: sujet imprimé TD03_modele-logique-donnees.pdf, exercice 3, six mini-MCD, pages 1-2.
// source-note: photographies 11001 et 11004 (schémas partiels des cas 1 à 6).
// source-reconstruction: l'interprétation de toutes les cardinalités vient du sujet, non d'une lecture incertaine des petits champs de la photo.
// source-reconstruction: pour le cas 6, la clé étrangère de l'auto-association est placée dans intervention (hypothèse de rôle explicite).
// source-verification: comptage des relations et détermination des tables pivots à partir des cardinalités.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3 — Traduction MCD vers MLD

== Règles de passage utilisées

- Une *entité* donne en général une table ; son identifiant devient la clé primaire.
- Une association *1,N* se traduit par une clé étrangère dans la table du côté associé à *au plus une* occurrence, sans créer de table pivot si l'association ne porte pas de multiplicité supplémentaire.
- Une association *N,N* devient une table associative, dite *table pivot*, contenant les clés étrangères des participants et ses propres attributs.
- Une association *ternaire N,N,N* devient en principe une table associative dont la clé est composée des clés des trois participants.
- Une auto-association *1,N* se traduit généralement par une clé étrangère vers la même table ; une auto-association *N,N* requiert une table pivot avec deux colonnes jouant des rôles différents.

On conserve les noms d'attributs du sujet, notamment dateDeb, dateFin et pourcentService.

== Cas 1 — DIRIGE : EMPLOYE et EQUIPE

Le dessin indique : un employé dirige de 0 à n équipes ; chaque équipe est dirigée par exactement un employé (1,1).

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *MLD :*

  EMPLOYE(*numEmpl*, nom, prenom, dateNaiss, grade)

  EQUIPE(*codeEq*, fonction, numEmpl)
]

Dans EQUIPE, numEmpl est une clé étrangère vers EMPLOYE.numEmpl et doit être renseignée, puisqu'une équipe possède exactement un dirigeant.

*Nombre de relations : 2.* Aucune table pivot.

== Cas 2 — TRAVAILLE DANS : EMPLOYE et EQUIPE

L'association porte dateDeb, dateFin et pourcentService. Chacun des deux côtés est de cardinalité (1,n).

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *MLD :*

  EMPLOYE(*numEmpl*, nom, prenom, dateNaiss, grade)

  EQUIPE(*codeEq*, fonction)

  TRAVAILLE_DANS(*numEmpl*, *codeEq*, dateDeb, dateFin, pourcentService)
]

Dans TRAVAILLE_DANS, la clé primaire est le couple (numEmpl, codeEq). Les deux attributs sont aussi des clés étrangères vers EMPLOYE et EQUIPE.

Les trois autres attributs décrivent *la participation* d'un employé à une équipe, et non l'employé ou l'équipe eux-mêmes.

*Nombre de relations : 3.* TRAVAILLE_DANS est une table pivot.

*Précision de modélisation :* cette traduction enregistre une relation courante par couple employé-équipe. Pour enregistrer plusieurs périodes historiques de ce même couple, il faudrait faire évoluer l'identification, par exemple en ajoutant dateDeb à la clé.

== Cas 3 — COLLABORE AVEC : auto-association N,N

L'association relie EMPLOYE à lui-même. Les deux cardinalités sont (0,n), avec l'attribut datePremiere.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *MLD :*

  EMPLOYE(*numEmpl*, nom, prenom, dateNaiss, grade)

  COLLABORATION(*numEmplA*, *numEmplB*, datePremiere)
]

Les deux colonnes numEmplA et numEmplB sont des clés étrangères vers EMPLOYE.numEmpl ; leur couple forme la clé primaire.

*Nombre de relations : 2.* COLLABORATION est une table pivot.

Pour traduire une collaboration *symétrique*, on peut choisir conventionnellement de stocker chaque paire non ordonnée une seule fois, par exemple avec numEmplA inférieur à numEmplB. C'est une règle de gestion ajoutée, non dessinée dans la copie.

== Cas 4 — TRAVAILLE DANS : association ternaire

Le dessin relie EMPLOYE, CONTRAT et EQUIPE, tous trois de cardinalité (1,n). Les attributs de l'association sont dateDeb, dateFin et pourcentService.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *MLD :*

  EMPLOYE(*numEmpl*, nom, prenom, dateNaiss, grade)

  CONTRAT(*numContr*, numCli, dateSign, tarifHT)

  EQUIPE(*codeEq*, fonction)

  TRAVAILLE_DANS(*numEmpl*, *numContr*, *codeEq*, dateDeb, dateFin, pourcentService)
]

Dans TRAVAILLE_DANS, la clé primaire est le triplet (numEmpl, numContr, codeEq). Chacun de ces trois attributs référence sa table d'origine.

Le triplet indique : *quel employé participe à quel contrat dans quelle équipe*. Les dates et le pourcentage sont propres à cette participation.

*Nombre de relations : 4.* TRAVAILLE_DANS est une table pivot ternaire.

== Cas 5 — SUPERVISE : auto-association 1,N

D'après le dessin, chaque employé est supervisé par 0 ou 1 employé, tandis qu'un superviseur peut encadrer de 0 à n employés.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *MLD :*

  EMPLOYE(*numEmpl*, nom, prenom, dateNaiss, grade, numSuperviseur)
]

L'attribut numSuperviseur est une clé étrangère *facultative* vers EMPLOYE.numEmpl. Une valeur absente signifie qu'aucun superviseur n'est renseigné.

*Nombre de relations : 1.* Pas de table pivot.

Il convient de définir les *rôles* de la relation réflexive pour ne pas confondre le superviseur et l'employé supervisé.

== Cas 6 — INTERVIENT et FAIT SUITE À

Le MCD contient trois entités :

- INTERVENTION(refInterv, date)
- CONTRAT(numContr, numCli, dateSign, tarifHT)
- EQUIPE(codeEq, fonction)

Une intervention est liée à un contrat et à une équipe, avec cardinalité (1,1) du côté d'INTERVENTION et (1,n) du côté des deux autres entités.

L'association récursive FAIT SUITE À possède (0,1) pour une intervention successeur et (0,n) pour une intervention précédente.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *MLD :*

  CONTRAT(*numContr*, numCli, dateSign, tarifHT)

  EQUIPE(*codeEq*, fonction)

  INTERVENTION(*refInterv*, date, numContr, codeEq, refIntervPrecedente)
]

Dans INTERVENTION :

- numContr référence CONTRAT ;
- codeEq référence EQUIPE ;
- refIntervPrecedente référence INTERVENTION.refInterv et peut être absent.

Cette dernière clé exprime qu'une intervention peut faire suite à *au plus une* autre intervention, alors qu'une intervention antérieure peut avoir plusieurs suivantes.

*Nombre de relations : 3.* Aucune table pivot supplémentaire : l'association ternaire peut se rabattre sur INTERVENTION car chaque intervention n'est rattachée qu'à un contrat et une équipe.

== 2. Nombre de relations obtenues

#table(
  columns: 2,
  inset: 5pt,
  [*Mini-MCD*], [*Nombre de relations*],
  [1 — DIRIGE], [2],
  [2 — TRAVAILLE DANS (binaire)], [3],
  [3 — COLLABORE AVEC], [2],
  [4 — TRAVAILLE DANS (ternaire)], [4],
  [5 — SUPERVISE], [1],
  [6 — INTERVIENT / FAIT SUITE À], [3],
)

Si l'on compte les six mini-MCD *indépendamment*, ils produisent au total 15 schémas de relations. Ce total n'est pas celui d'une base unique : plusieurs mini-MCD réutilisent les mêmes noms d'entités sans décrire le même modèle global.

== 3. Tables dites « pivots »

Les tables pivots sont :

- cas 2 : TRAVAILLE_DANS ;
- cas 3 : COLLABORATION ;
- cas 4 : TRAVAILLE_DANS (ternaire).

Dans les cas 1, 5 et 6, les clés étrangères peuvent être placées dans les tables existantes sans nouvelle table associative.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Séparation source / raisonnement.* Le TD donne exactement six mini-MCD, leurs cardinalités et demande les trois questions ; les photos esquissent les schémas. Les noms numSuperviseur, numEmplA, numEmplB et refIntervPrecedente, ainsi que l'explication des choix de clés, sont des reconstructions de la correction.
]
