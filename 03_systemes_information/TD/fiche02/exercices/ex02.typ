// source-confidence: high
// source-note: statement and numbering cross-checked against TD02_dependances-fonctionnelles.pdf.
// source-note: correction transcribed from the supplied handwritten pages; graph reconstructed from the listed DF.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 2 — Exercice 2 — DF abstraites

Les DF de départ sont :

1. $A -> (B,C,D,E,I)$ ;
2. $(B,F) -> G$ ;
3. $B -> (G,H,I)$ ;
4. $(I,J) -> (M,N)$ ;
5. $E -> (N,O,P)$.

== 1. DF obtenues immédiatement par projection

La correction développe les buts composés :

$ A -> B, quad A -> C, quad A -> D, quad A -> E, quad A -> I, $

$ (B,F) -> G, $

$ B -> G, quad B -> H, quad B -> I, $

$ (I,J) -> M, quad (I,J) -> N, $

$ E -> N, quad E -> O, quad E -> P. $

== 2. Démontrer $(B,J) -> N$

On sait que

$ B -> I. $

Par augmentation avec $J$ :

$ (B,J) -> (I,J). $

Or

$ (I,J) -> N. $

Par transitivité :

$ (B,J) -> N. $

== 3. DF à but simple obtenues par projection et transitivité

La correction ajoute aux DF précédentes les conséquences de transitivité issues de $A$ :

$ A -> G, quad A -> H, quad A -> N, quad A -> O, quad A -> P. $

Ainsi, le groupe associé à $A$ devient :

$ A -> B,C,D,E,I,G,H,N,O,P. $

Les autres groupes sont :

$ B -> G,H,I, $

$ E -> N,O,P, $

$ (B,F) -> G, $

$ (I,J) -> M,N. $

== 4. Graphe des DF

#figure(
  image("../figures/ex02-df-graph.svg", width: 100%),
  caption: [Graphe des DF à but simple. Les arêtes grises en pointillés représentent les conséquences transitives ajoutées à partir de $A$.],
)

== 5. Repérer une DF non élémentaire

Une DF est *non élémentaire* lorsqu'on peut retirer une rubrique de sa partie gauche tout en conservant une DF vraie.

Ici,

$ (B,F) -> G $

est non élémentaire puisque

$ B -> G $

est déjà vraie : la rubrique $F$ est inutile dans la source.

== 6. Repérer une DF non directe

Une DF est *non directe* lorsqu'il existe un chemin intermédiaire permettant de l'obtenir par transitivité.

Par exemple,

$ A -> I $

n'est pas directe puisque

$ A -> B quad "et" quad B -> I. $

== 7. DF non réflexives, élémentaires, directes, à but simple

La correction conserve :

$ A -> B, quad A -> C, quad A -> D, quad A -> E, $

$ B -> G, quad B -> H, quad B -> I, $

$ E -> N, quad E -> O, quad E -> P, $

$ (I,J) -> M, quad (I,J) -> N. $

#block(stroke: 0.6pt + gray, inset: 8pt)[
  $A -> I$ n'est pas gardée dans cette liste finale car elle est obtenue par le chemin $A -> B -> I$.
]
