// source-confidence: high
// source-note: énoncé officiel TD02 Construction inductive, exercice 5 ; photo manuscrite du raisonnement par groupes.
 
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5 — Fausse récurrence sur l'âge des personnes

== Énoncé

On prétend démontrer par récurrence la propriété $P(n)$ : « Dans tout groupe de $n$ personnes, toutes les personnes ont le même âge ».

*Initialisation.* $P(1)$ est vraie : un groupe contenant une seule personne a un seul âge.

*Étape proposée.* Supposons $P(n)$ vraie. Pour un groupe de $n+1$ personnes, soit $G_1$ celui des $n$ premières, et $G_2$ celui des $n$ dernières. Chacun est formé de personnes du même âge par hypothèse de récurrence. L'argument prétend qu'ils ont un membre en commun qui relie les deux âges.

== Où est l'erreur ?

L'intersection $G_1 inter G_2$ est composée des personnes numérotées $2$ à $n$ : elle possède $n-1$ éléments.

- Si $n>=2$, l'intersection est non vide. Les deux groupes ont alors une personne commune, ce qui permet effectivement de conclure pour un groupe de $n+1$ personnes.
- Mais si $n=1$, les groupes sont $G_1=\{1\}$ et $G_2=\{2\}$ : leur intersection est *vide*. L'argument ne peut pas affirmer que les deux personnes ont le même âge.

Le passage crucial $P(1) => P(2)$ *n'a pas été démontré* et est faux en général. Une induction qui fonctionne seulement à partir de $n=2$ ne suffit pas lorsque l'on ne dispose que de $P(1)$.

== Méthode à retenir

Lorsqu'une récurrence manipule deux sous-ensembles se recouvrant, *vérifier que leur intersection est non vide au premier rang de l'hérédité*. Le problème apparaît précisément ici pour $n=1$.
