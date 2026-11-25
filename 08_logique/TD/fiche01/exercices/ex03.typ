// source-confidence: medium
// source-note: photo 9.06.00 PM (1).jpeg : TD1 exercice 3, arbres sémantiques.
// source-uncertainty: les formules complètes des sous-questions ne sont pas toutes identifiables avec certitude.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 3 — Arbres de vérité

== Lire un arbre d'évaluation

Les branches attribuent progressivement les valeurs $0$ et $1$ aux variables. Les feuilles donnent les valeurs de la formule dans les interprétations correspondantes.

- Une formule est *consistante* (satisfaisable) lorsqu'au moins une interprétation la rend vraie.
- Elle est *inconsistante* lorsqu'aucune interprétation ne la rend vraie.
- Elle est *tautologique* lorsque toutes les interprétations la rendent vraie.

== Constats présents sur la photo

*Question 1.* Plusieurs cas sont examinés par ramification. Les expressions inscrites au-dessus de l'arbre ne permettent pas une retranscription fiable de la formule originale.

*Question 3.* La conclusion manuscrite est « consistante » : il existe au moins une branche avec valeur finale vraie.

*Question 4.* La conclusion manuscrite est : « $F$ est inconsistante ; $not F$ est tautologique ». C'est le résultat général suivant :

$
F " inconsistante " <=> not F " tautologique".
$

*Méthode.* Une interprétation témoin suffit pour établir la consistance ; démontrer une tautologie ou une inconsistance nécessite un argument couvrant toutes les interprétations.

*Statut.* Cette transcription est partielle : les arbres n'ont pas été reconstruits avec des formules devinées.
