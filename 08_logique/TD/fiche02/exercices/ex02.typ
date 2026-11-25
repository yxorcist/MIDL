// source-confidence: high for question 1, medium for question 2 because no target conclusion is legible.
// source-note: photo 9.06.00 PM (4).jpeg, fin de page (début de l'exercice 2).
// source-note: photo 9.06.00 PM (5).jpeg : table de vérité, contre-modèle et second ensemble d'hypothèses.
// source-reconstruction: dans la question 2, la déduction de r est une application naturelle des hypothèses notées, mais le but à démontrer est absent de la photographie.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 2 — Conséquence logique et contre-modèles

== Définition

Une conclusion $F$ est une *conséquence logique* d'un ensemble d'hypothèses $Delta$ si, dans toute interprétation qui rend vraies *toutes* les hypothèses, $F$ est également vraie.

On note cette relation de conséquence :

$
Delta models F.
$

Pour réfuter une conséquence logique, il suffit de donner *un contre-modèle* : une interprétation satisfaisant toutes les hypothèses, mais rendant la conclusion fausse.

== 1. Est-ce que deux implications réciproques impliquent une disjonction ?

Les notes fixent

$
Delta = {p => q, q => p}.
$

On cherche à savoir si les hypothèses entraînent $p or q$.

#table(
 columns: 5,
 align: center,
 [$p$], [$q$], [$p => q$], [$q => p$], [$p or q$],
 [1], [1], [1], [1], [1],
 [1], [0], [0], [1], [1],
 [0], [1], [1], [0], [1],
 [0], [0], [1], [1], [0],
)

Dans la dernière ligne, $p=0$ et $q=0$. Les deux hypothèses valent $1$ et la conclusion vaut $0$.

Donc

$
Delta " n'entraîne pas " (p or q).
$

La correction indique : *le raisonnement n'est pas valide*. L'interprétation $p=0$, $q=0$ en est le contre-exemple.

*Remarque.* Les hypothèses affirment $p <=> q$ ; elles peuvent être satisfaites aussi bien lorsque $p$ et $q$ sont simultanément vrais que lorsqu'ils sont simultanément faux.

== 2. Autre ensemble d'hypothèses

La photographie montre :

$
Delta_2 = {p, (p => q), (not q or r)}.
$

Elle remarque que

$
not q or r equiv q => r.
$

Le même ensemble peut donc s'écrire

$
Delta_2 = {p, p => q, q => r}.
$

*Déduction ajoutée à partir des hypothèses.* Si l'objectif est de conclure $r$, la conséquence est valide :

1. On dispose de $p$.
2. Avec $p => q$, on obtient $q$ (modus ponens).
3. Avec $q => r$, on obtient $r$ (modus ponens).

Ainsi les hypothèses *entraînent* $r$.

*Limite de provenance.* La conclusion que l'exercice demandait précisément à cette sous-question n'est pas lisible sur la photographie. La dérivation de $r$ est correcte mathématiquement, mais n'est pas présentée comme une transcription certaine de la consigne officielle.
