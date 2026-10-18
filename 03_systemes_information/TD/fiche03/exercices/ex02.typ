// source-confidence: high
// source-note: sujet imprimé TD03_modele-logique-donnees.pdf (ex. 2) et photos 10998, 11001.
// source-reconstruction: l'instance numérique est choisie comme exemple cohérent ; la copie comporte des tableaux dont certains champs sont peu lisibles.
// source-reconstruction: la clé composée de requete et les contraintes référentielles sont inférées du schéma.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2 — Analyse du modèle logique de données

== Schéma fourni

Le sujet donne :

- client(numCli, raisSocCli, addrCli)
- contrat(numContr, objContr, dateDebContr, numCli)
- employe(numEmpl, nomEmpl, prenomEmpl, dateNaissEmpl, codeQualif)
- qualification(codeQualif, libellé, tarifJour)
- intervention(numEmpl, numContr, codeQualif)
- requete(numContr, codeQualif, nbHomme)

== 1. Clés primaires

#table(
  columns: (1fr, 2.2fr),
  inset: 5pt,
  [*Relation*], [*Clé primaire*],
  [client], [numCli],
  [contrat], [numContr],
  [employe], [numEmpl],
  [qualification], [codeQualif],
  [requete], [(numContr, codeQualif)],
  [intervention], [(numEmpl, numContr, codeQualif)],
)

La clé composée impose l'unicité d'un *ensemble* de colonnes. Ainsi un même contrat peut demander plusieurs qualifications ; le couple contrat-qualification ne doit pas être répété dans requete.

== 2. Clés étrangères

- contrat.numCli → client.numCli
- employe.codeQualif → qualification.codeQualif
- requete.numContr → contrat.numContr
- requete.codeQualif → qualification.codeQualif
- intervention.numEmpl → employe.numEmpl
- intervention.numContr → contrat.numContr
- intervention.codeQualif → qualification.codeQualif

*Contrainte complémentaire raisonnable :* intervention.(numContr, codeQualif) peut référencer la clé composée requete.(numContr, codeQualif), afin d'interdire une affectation qui ne correspond pas à une demande. Ce lien est inféré du rôle des relations.

== 3. Explication du schéma

Une entreprise réalise des contrats pour ses clients en affectant des employés selon leur qualification.

- client : identité et adresse du client ;
- contrat : objet, date de début et client concerné ;
- employe : identité de l'employé et qualification possédée ;
- qualification : libellé et tarif journalier de cette qualification ;
- requete : nombre d'hommes demandés dans une qualification pour un contrat ;
- intervention : employé affecté à un contrat avec une qualification donnée.

La relation requete décrit *un besoin*, tandis que la relation intervention décrit *une affectation effective*.

== 4. Instance cohérente (exemple reconstruit)

Le sujet demande d'inventer des tuples ; les valeurs ci-dessous sont donc des exemples et non des données imprimées.

#table(
  columns: 3,
  inset: 4pt,
  [*client.numCli*], [*raisSocCli*], [*addrCli*],
  [981], [Alpha Services], [Clermont-Ferrand],
  [922], [Bêta Conseil], [Thiers],
)

#table(
  columns: 3,
  inset: 4pt,
  [*qualification.codeQualif*], [*libellé*], [*tarifJour*],
  [Q10], [Agent], [110],
  [Q11], [Technicien], [200],
)

#table(
  columns: 4,
  inset: 4pt,
  [*contrat.numContr*], [*objContr*], [*dateDebContr*], [*numCli*],
  [1], [Nettoyage], [2026-09-01], [981],
  [2], [Maintenance], [2026-09-02], [922],
)

#table(
  columns: 5,
  inset: 4pt,
  [*employe.numEmpl*], [*nomEmpl*], [*prenomEmpl*], [*dateNaissEmpl*], [*codeQualif*],
  [661], [Durand], [Lucas], [2000-05-15], [Q10],
  [772], [Bernard], [Sarah], [2001-04-17], [Q11],
)

#table(
  columns: 3,
  inset: 4pt,
  [*requete.numContr*], [*codeQualif*], [*nbHomme*],
  [1], [Q10], [3],
  [2], [Q11], [2],
)

#table(
  columns: 3,
  inset: 4pt,
  [*intervention.numEmpl*], [*numContr*], [*codeQualif*],
  [661], [1], [Q10],
  [772], [2], [Q11],
)

Les identifiants référencés existent tous dans les tables cibles. Chaque affectation correspond aussi à un couple de demande présent dans requete.

== 5. Représentation graphique du MLD

Une flèche est dessinée *de la clé étrangère vers la clé primaire référencée* :

- contrat → client ;
- employe → qualification ;
- requete → contrat et qualification ;
- intervention → employe, contrat et qualification ;
- intervention → requete par le couple (numContr, codeQualif), si on impose la référence composée.

== Méthode d'examen

1. Surligner les clés primaires (simples ou composées).
2. Rechercher les noms de clés réutilisés dans d'autres tables : clés étrangères candidates.
3. Expliquer l'organisation métier en une phrase par relation.
4. Pour inventer des tuples, remplir d'abord les tables indépendantes (client et qualification), puis les tables à références.
5. Dessiner une flèche pour chaque clé étrangère, en contrôlant les types et l'existence de la clé cible.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Traçabilité.* Schéma et questions issus du TD imprimé ; sens des relations et exemple inspirés des photos. La réécriture détaillée et les valeurs d'exemple sont reconstruites.
]
