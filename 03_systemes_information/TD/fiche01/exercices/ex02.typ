// source-confidence: high
// source-note: statement and numbering cross-checked against TD01_dictionnaire-donnees-dcc-mcd.pdf.
// source-note: correction transcribed from the supplied handwritten page; the DCC below is reconstructed from the official figure and the handwritten numbering.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 1 — Exercice 2 — Diagramme Conceptuel de Communication

== 1. Définitions

Un *acteur* est une unité active du système. On précise son rôle par son nom.

Un *acteur interne* appartient au système étudié et intervient dans son fonctionnement.

Un *acteur externe* est un partenaire extérieur au système ; dans la correction, il est décrit comme ne prenant pas les décisions internes.

Un *flux* est une transmission d'informations entre acteurs.

== 2. Acteurs du DCC

- acteurs internes : *scolarité*, *UFR / responsable de mention* ;
- acteur externe : *candidat*.

== 3–4. Flux et chronologie

La correction manuscrite compte *5 flux* et les numérote ainsi :

1. dossier de candidature ;
2. dossier à examiner ;
3. dossier complété ;
4. résultat d'admission ;
5. lettre de confirmation.

#figure(
  image("../figures/ex02-dcc.svg", width: 100%),
  caption: [DCC de l'admission — reconstruction fidèle au schéma officiel et à la numérotation manuscrite.],
)

== 5. Description textuelle du schéma

Le candidat envoie son *dossier de candidature* à la scolarité. La scolarité transmet le *dossier à examiner* à l'UFR. L'UFR renvoie un *dossier complété* puis transmet le *résultat d'admission*. Enfin, la scolarité adresse au candidat une *lettre de confirmation*.
