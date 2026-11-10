// source-confidence: high
// source-note: TD03_modele-logique-donnees.pdf, page 3, exercice 5 (MCD vers MLD).
// source-note: photo 12356 : copie manuscrite des tables de la partie « Exercice 5 ».
// source-verification: identifications relatives et deux CIF contrôlées sur le MCD officiel.
// source-reconstruction: propagation des identifiants, clés primaires et étrangères et schéma vectoriel explicités.
// source-note: « on obtient 7 relations », au-dessus du titre Exercice 5 sur la photo, appartient à l'exercice précédent.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 5 — Traduction d'un MCD en MLD

== Énoncé

À partir du MCD fourni, comprendre le modèle et générer le modèle logique des données (MLD).

Le domaine représenté est celui d'appareils installés sur des sites, effectuant des mesures associées à des périodes et à des semaines.

== 1. Lire le MCD

Les entités et leurs attributs sont :

- *PERIODE* : id_periode (identifiant), num_dans_annee.
- *SEMAINE* : num_dans_periode (identifiant relatif), date_cible.
- *SITE* : id_site (identifiant), coordonnee_X, coordonnee_Y, altitude, surface.
- *TYPE_APPAREIL* : ref_appareil (identifiant), famille_appareil, modele, unite_mesure.
- *APPAREIL* : id_appareil (identifiant relatif).
- *(CALENDRIER)* : date_debut_app_site.
- *(CALENDRIER2)* : date_mesure.

Les associations du MCD sont :

- *composer* : une période contient des semaines. La semaine est identifiée relativement à sa période (1,1(R)).
- *définir* : un appareil est identifié relativement à son type (1,1(R)).
- *équiper* : relie un site, un appareil et une date de début d'installation ; porte date_fin_app_site.
- *mesurer* : relie une semaine, un appareil et une date de mesure ; porte mesure, ecart_date_cible, remarque_mesure.

=== Interpréter les deux CIF

Sur le schéma officiel, la CIF de gauche va vers *SITE* : un couple (appareil, date_debut_app_site) détermine le site de l'installation.

La CIF de droite va vers *SEMAINE* : un couple (appareil, date_mesure) détermine la semaine associée à la mesure.

Ces contraintes sont importantes pour trouver les clés des tables d'association. Une cardinalité 1,1(R) indique en revanche une *identification relative* : la clé de l'entité parente appartient à la clé de l'entité fille.

== 2. Traduire les entités

On utilise les abréviations *PK* (clé primaire) et *FK* (clé étrangère).

1. *PERIODE* : id_periode (PK), num_dans_annee.
2. *SEMAINE* : id_periode (PK, FK), num_dans_periode (PK), date_cible.
3. *SITE* : id_site (PK), coordonnee_X, coordonnee_Y, altitude, surface.
4. *TYPE_APPAREIL* : ref_appareil (PK), famille_appareil, modele, unite_mesure.
5. *APPAREIL* : ref_appareil (PK, FK), id_appareil (PK).

*Explication.* L'identifiant de SEMAINE est composé de (id_periode, num_dans_periode), et celui de APPAREIL est composé de (ref_appareil, id_appareil). Leurs colonnes respectives faisant référence à PERIODE et TYPE_APPAREIL jouent simultanément le rôle de PK et de FK.

== 3. Traduire les dates et associations

La photo représente séparément les deux entités de calendrier :

6. *CALENDRIER* : date_debut_app_site (PK).
7. *EQUIPER* : ref_appareil (PK, FK), id_appareil (PK, FK), date_debut_app_site (PK, FK), id_site (FK), date_fin_app_site.
8. *CALENDRIER2* : date_mesure (PK).
9. *MESURER* : ref_appareil (PK, FK), id_appareil (PK, FK), date_mesure (PK, FK), id_periode (FK), num_dans_periode (FK), mesure, ecart_date_cible, remarque_mesure.

=== Pourquoi ces clés ?

Dans *EQUIPER*, la CIF précise que (appareil, date_debut_app_site) détermine le site. L'appareil étant identifié relativement au type, on obtient la clé composée :

$
("ref_appareil", "id_appareil", "date_debut_app_site").
$

L'attribut id_site est une clé étrangère vers SITE, mais n'est pas nécessaire pour distinguer deux installations sous la CIF donnée.

Dans *MESURER*, la CIF précise que (appareil, date_mesure) détermine la semaine. La clé composée est donc :

$
("ref_appareil", "id_appareil", "date_mesure").
$

Les colonnes (id_periode, num_dans_periode) désignent conjointement la semaine.

=== Clés étrangères composites

- (ref_appareil, id_appareil) de EQUIPER et de MESURER référence APPAREIL.
- (id_periode, num_dans_periode) de MESURER référence SEMAINE.
- id_site de EQUIPER référence SITE.
- date_debut_app_site de EQUIPER référence CALENDRIER.
- date_mesure de MESURER référence CALENDRIER2.

== 4. Représentation graphique du MLD

#align(center)[
  #image("../figures/ex05-mld.svg", width: 100%)
]

Les flèches sont orientées de la table qui porte la clé étrangère vers celle qui est référencée. Le diagramme redessine les tables et les liens visibles sur la photographie.

== 5. Synthèse et précautions

- Deux identifications relatives : PERIODE vers SEMAINE et TYPE_APPAREIL vers APPAREIL.
- Deux associations avec attributs : EQUIPER et MESURER.
- Deux CIF permettant de réduire les clés primaires de ces associations.
- Deux entités CALENDRIER distinctes, telles qu'elles sont représentées dans le MCD et sur la copie.

Avec ce choix de modélisation, le schéma contient *neuf relations*. On pourrait, pour une implémentation physique différente, stocker les dates directement dans EQUIPER et MESURER sans tables de calendrier dédiées ; ce n'est cependant pas la représentation retenue dans les notes.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les entités, attributs, cardinalités et CIF sont vérifiés dans TD03_modele-logique-donnees.pdf. La disposition des tables est visible sur la photo 12356. Les PK/FK composées et la représentation vectorielle sont déduites des contraintes officielles et clairement distinguées de la copie. Le total « 7 relations » figurant au-dessus de « Exercice 5 » sur la photographie appartient à l'exercice 4.
]
