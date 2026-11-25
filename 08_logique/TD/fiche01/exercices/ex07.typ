// source-confidence: high for the five transcribed premises and derivation.
// source-note: photo 9.06.00 PM (3).jpeg, exercice 7, énigme du trésor.
// source-verification: semantic entailment of TP checked from premises 1–4; no conclusion about TG follows without ARC.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 7 — Énigme du trésor

== Traduction des propositions

Les abréviations sont reprises de la copie :

- *MLAC* : la maison est située près d'un lac.
- *TC* : le trésor est dans la cuisine.
- *AVO* : l'arbre dans la cour avant est un chêne.
- *ARC* : l'arbre dans la cour arrière est un chêne.
- *TP* : le trésor est enterré sous le poteau.
- *TG* : le trésor est dans le garage.

Les cinq informations notées sont :

1. Si la maison est près d'un lac, alors le trésor n'est pas dans la cuisine.
2. Si l'arbre de la cour avant est un chêne, alors le trésor est dans la cuisine.
3. La maison est près d'un lac.
4. Soit l'arbre de la cour avant est un chêne, soit le trésor est sous le poteau.
5. Si l'arbre de la cour arrière est un chêne, alors le trésor est dans le garage.

Sous forme logique :

$
"MLAC" => not "TC"
$

$
"AVO" => "TC"
$

$
"MLAC"
$

$
"AVO" or "TP"
$

$
"ARC" => "TG".
$

== Raisonnement

La troisième prémisse établit "MLAC". La première implique donc

$
not "TC".
$

Par *modus tollens* appliqué à la deuxième prémisse, puisque "AVO" impliquerait "TC", nous concluons

$
not "AVO".
$

La quatrième prémisse fournit "AVO" ou "TP". Puisque "AVO" est faux, il reste

$
"TP".
$

*Conclusion démontrée : le trésor est sous le poteau.*

== Portée exacte

La cinquième prémisse n'a pas été utilisée dans ce raisonnement. Cela ne la rend pas fausse ou inutile dans tous les contextes : elle est simplement superflue pour déduire "TP".

Les cinq prémisses *n'excluent pas à elles seules "TG"* : elles n'indiquent ni "ARC" ni sa négation, et n'énoncent pas explicitement une unique cachette. Conclure à l'exclusivité de l'emplacement nécessiterait une hypothèse supplémentaire.

*Méthode.* Utiliser successivement le modus ponens, le modus tollens et l'élimination d'une disjonction lorsqu'un de ses deux termes est faux.
