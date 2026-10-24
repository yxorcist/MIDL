// source-confidence: high
// source-note: TD03_ensembles-fonctions.pdf (L. Nourine) et photographies manuscrites 11492.
// source-reconstruction: les justifications manquantes sont explicitées et les erreurs mathématiques des notes sont corrigées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 1

== 1. Appartenance et inclusion

Pour tout ensemble $x$ :

- *a)* $x in \{x\}$ : *vrai* par définition du singleton.
- *b)* $\{x\} subset.eq \{x\}$ : *vrai*, tout ensemble est inclus dans lui-même.
- *c)* $\{x\} in \{x\}$ : *faux* en théorie ordinaire des ensembles : il faudrait $\{x\}=x$, impossible pour un ensemble bien fondé.
- *d)* $\{x\} in \{\{x\}\}$ : *vrai* ; le seul élément du singleton extérieur est $\{x\}$.
- *e)* $emptyset subset.eq \{x\}$ : *vrai*, le vide est inclus dans tout ensemble.
- *f)* $emptyset in \{x\}$ : *vrai si et seulement si $x=emptyset$*. Ce n'est pas une affirmation universelle pour un $x$ quelconque.

*Attention :* appartenir ($in$) et être inclus ($subset.eq$) sont deux relations différentes.

== 2. Répétitions dans un ensemble

L'écriture $E=\{1,2,3,1,4\}$ désigne bien un ensemble : les répétitions ne comptent pas. Ainsi

$ E=\{1,2,3,4\}. $

*Correction d'une erreur des notes :* un ensemble peut être décrit avec des éléments répétés ; ce ne sont pas des éléments supplémentaires.

== 3. Ensemble défini par compréhension

Si $E$ est un ensemble et $P(x)$ une propriété de ses éléments, alors

$ F=\{x in E mid P(x)\} $

est un sous-ensemble de $E$ (axiome de séparation). On choisit uniquement les éléments de $E$ qui satisfont $P$.

L'ensemble $A=\{x in NN mid exists y in NN, x=2y\}$ est l'ensemble des entiers naturels *pairs*. Son complémentaire dans $NN$ est l'ensemble des entiers naturels *impairs* :

$ NN ∖ A = \{2k+1 mid k in NN\}. $

== Méthode

Pour tester une appartenance à un singleton, identifier son unique élément. Pour un ensemble défini par compréhension, commencer par le domaine de sélection ; le complémentaire est toujours pris relativement à un univers indiqué.
