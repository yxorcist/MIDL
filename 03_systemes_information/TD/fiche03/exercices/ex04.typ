// source-confidence: medium
// source-note: MCD original de TD03_modele-logique-donnees.pdf, exercice 4, page 2 ; schéma MCD partiellement redessiné sur photo 11004.
// source-reconstruction: les associations A1 à A7 n'ont pas de noms dans le sujet ; les noms et le schéma relationnel proposés sont une solution cohérente, pas une correction officielle.
// source-uncertainty: le brouillon ne résout pas explicitement les « deux erreurs majeures » demandées ; l'analyse ci-dessous propose un traitement raisonnable du cycle d'identification relative A7.
// source-verification: les clés relatives sont propagées dans l'ordre COMMANDE -> LIGNE_CDE -> ENGAGEMENT -> LIVRAISON.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 4 — MCD vers MLD : identification relative

== Lecture du sujet

Le schéma imprimé représente les entités CLIENT, COMMANDE, ARTICLE, LIGNE_CDE, ENGAGEMENT, CAMION et LIVRAISON. Les associations sont provisoirement nommées A1 à A7.

Les attributs de base visibles sont :

- CLIENT : cliId, cliNom, cliSiret ;
- COMMANDE : cdeId, cdeNo, cdeDate, cdeStatut ;
- ARTICLE : artId, artNom, artRef, prixHT ;
- LIGNE_CDE : ligneCdeId, Quantité ;
- ENGAGEMENT : engId, engDate, Quantité ;
- CAMION : camId, camNom ;
- LIVRAISON : livraisonId, bordereauNo, livrDate, livrStatut, Quantité.

Dans les associations A2, A3 et A4, le symbole (R) indique une *identification relative*. Par exemple, un numéro local de ligne de commande n'est unique qu'à l'intérieur de sa commande.

== 1. Corriger le MCD invalide

Le schéma comporte notamment l'association réflexive A7 sur LIVRAISON :

- un rôle est marqué (0,n) ;
- le rôle opposé est marqué (1,1(R)).

Cette auto-identification relative est problématique.

*Premier problème :* une livraison ne peut pas être identifiée uniquement relativement à une autre livraison si aucune livraison initiale ne peut être identifiée sans prédécesseur ; on obtient une chaîne qui exige indéfiniment un parent.

*Deuxième problème :* le schéma identifie déjà LIVRAISON relativement à ENGAGEMENT via A4. Le maintien d'une identification relative supplémentaire par A7 introduit deux chemins d'identification concurrents pour la même livraison.

*Correction proposée :* conserver A4 comme lien identifiant de LIVRAISON vers ENGAGEMENT, et remplacer A7, si l'on souhaite conserver l'idée de succession des livraisons, par une association réflexive ordinaire :

- une livraison peut succéder à zéro ou une livraison antérieure ;
- une livraison peut être suivie de zéro ou plusieurs livraisons ;
- *aucun* rôle de A7 n'est identifiant ; le rôle successeur a cardinalité (0,1), et non (1,1(R)).

Une autre correction possible consiste à supprimer A7 si le cahier des charges ne demande pas de liens entre livraisons.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Interprétation, non correction certifiée du professeur.* Le sujet demande deux erreurs majeures, mais les photographies disponibles ne contiennent pas leur résolution explicite. Les deux anomalies ci-dessus sont étroitement liées à A7 et à l'identification de LIVRAISON ; cette proposition rend la conversion en MLD cohérente.
]

== 2. Comprendre le MCD et nommer les associations

Les noms suivants sont des noms *proposés*, car le sujet n'affiche que A1 à A7.

#table(
  columns: (0.6fr, 2fr, 3.3fr),
  inset: 4pt,
  [*Code*], [*Nom proposé*], [*Lecture métier*],
  [A1], [PASSE], [Un client peut passer plusieurs commandes ; une commande appartient à un client],
  [A2], [CONTIENT], [Une commande contient des lignes identifiées localement],
  [A3], [FAIT OBJET D'ENGAGEMENT], [Une ligne peut avoir plusieurs engagements identifiés localement],
  [A4], [DONNE LIEU À], [Un engagement peut avoir plusieurs livraisons identifiées localement],
  [A5], [CONCERNE], [Chaque ligne correspond à un article],
  [A6], [EST TRANSPORTÉE PAR], [Chaque livraison est affectée à un camion],
  [A7], [SUCCÈDE À], [Une livraison peut éventuellement faire suite à une autre, après correction],
)

Les cardinalités minimales (0,n) des parents signifient que l'existence d'une entité n'impose pas nécessairement celle d'un enfant.

== 3. Générer le MLD

Dans le modèle ci-dessous, les attributs entre parenthèses notés *PK* forment la clé primaire. Les attributs qui copient une clé d'une autre relation sont des clés étrangères.

=== Entités indépendantes

- CLIENT(*cliId*, cliNom, cliSiret)
- ARTICLE(*artId*, artNom, artRef, prixHT)
- CAMION(*camId*, camNom)

=== Première dépendance — Commande vers client

- COMMANDE(*cdeId*, cdeNo, cdeDate, cdeStatut, cliId)

Clé primaire : cdeId.

Clé étrangère : cliId → CLIENT.cliId.

=== Identification relative — Ligne de commande

- LIGNE_CDE(*cdeId*, *ligneCdeId*, Quantité, artId)

Clé primaire : (cdeId, ligneCdeId).

Clés étrangères : cdeId → COMMANDE.cdeId ; artId → ARTICLE.artId.

Une ligne porte donc son identifiant local *et* la clé de la commande dont elle dépend.

=== Identification relative — Engagement

- ENGAGEMENT(*cdeId*, *ligneCdeId*, *engId*, engDate, Quantité)

Clé primaire : (cdeId, ligneCdeId, engId).

Clé étrangère composée : (cdeId, ligneCdeId) → LIGNE_CDE.

=== Identification relative — Livraison

- LIVRAISON(*cdeId*, *ligneCdeId*, *engId*, *livraisonId*, bordereauNo, livrDate, livrStatut, Quantité, camId)

Clé primaire : (cdeId, ligneCdeId, engId, livraisonId).

Clé étrangère composée : (cdeId, ligneCdeId, engId) → ENGAGEMENT.

Clé étrangère simple : camId → CAMION.camId.

Si l'association A7 est maintenue comme *succession facultative*, on ajoute un identifiant de livraison précédente avec une référence adaptée à la clé composée, mais *sans* l'utiliser pour identifier la livraison courante.

=== Bilan

*Sept relations* sont obtenues :

1. CLIENT ;
2. COMMANDE ;
3. ARTICLE ;
4. LIGNE_CDE ;
5. ENGAGEMENT ;
6. CAMION ;
7. LIVRAISON.

Il n'est pas nécessaire d'ajouter une table pivot pour les associations de cardinalité maximale 1 du côté de l'entité dépendante.

== Procédure pour résoudre les MCD avec identification relative

1. Repérer chaque (1,1(R)) dans le dessin : cela annonce une identification relative.
2. Identifier la table parente et sa clé primaire.
3. Recopier *toute* la clé primaire parente dans la clé primaire de l'entité fille.
4. Ajouter l'identifiant local de l'entité fille à cette clé.
5. Répéter cette propagation le long de la chaîne.
6. Ajouter les clés étrangères des associations 1,N ordinaires (ici vers CLIENT, ARTICLE et CAMION).
7. Vérifier l'absence de cycle d'identification ; sinon, corriger le MCD avant de générer le MLD.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Reconstruction guidée.* Les sept entités et leurs attributs viennent de la feuille. Le choix de correction de A7, les noms d'associations et la propagation détaillée des clés sont proposés à partir de la méthode de passage du MCD au MLD. D'autres corrections du schéma peuvent être acceptables selon les règles enseignées.
]
