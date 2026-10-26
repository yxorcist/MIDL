// source-confidence: high
// source-note: exercice 5, fiche officielle TD02_construction-inductive.pdf ; photo 11489.
// source-reconstruction: le défaut du passage de P(1) à P(2) est explicité.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5 — Identifier l'erreur de récurrence

On prétend démontrer la propriété

$
P(n): "dans tout groupe de " n " personnes, toutes ont le même âge".
$

== Initialisation

$P(1)$ est vraie : un groupe d'une personne ne présente aucune différence d'âge.

== Hérédité proposée

On suppose $P(n)$ vraie et on considère $n+1$ personnes $p_1, dots, p_(n+1)$.

On prend les deux sous-groupes de $n$ personnes :

$
G_1 = \{p_1, dots, p_n\}, quad
G_2 = \{p_2, dots, p_(n+1)\}.
$

Par $P(n)$, les membres de chaque sous-groupe ont le même âge.
Le raisonnement prétend que les deux groupes partagent une personne,
ce qui permettrait d'en déduire un âge commun à tous.

== Erreur : le passage de $P(1)$ à $P(2)$

Pour $n=1$, on cherche à déduire $P(2)$ de $P(1)$. Or :

$
G_1 = \{p_1\}, quad G_2 = \{p_2\},
quad G_1 inter G_2 = ∅.
$

Les deux groupes n'ont *aucun élément commun* : on ne peut donc
pas conclure que $p_1$ et $p_2$ ont le même âge.

Pour $n>=2$, l'intersection comporte $n-1>=1$ personnes.
L'argument du recouvrement fonctionnerait alors *sous l'hypothèse* $P(n)$,
mais le premier passage $P(1) => P(2)$ n'a pas été établi.

== Conclusion

*L'initialisation est correcte, mais l'hérédité proposée n'est pas démontrée
au rang $n=1$.* La preuve par récurrence est donc invalide.

_Remarque._ « On ne peut pas démontrer $P(2)$ par cet argument » ne signifie
pas, à lui seul, « $P(2)$ est fausse ». Pour réfuter effectivement $P(2)$,
il suffit de choisir deux personnes d'âges différents.
