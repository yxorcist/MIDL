// source-confidence: high for official probabilities, matrix, and initial distribution.
// source-note: TD04_valeurs-propres-vecteurs-propres.pdf, p. 1, exercice 2 (plage, 3 états M/S/T).
// source-note: photo 12400: directed graph and column-stochastic transition matrix in order M,S,T.
// source-note: photo 12407: initial probability vector, multiplication by A^3, stationary-state eigenvector method.
// source-reconstruction: exact three-step probabilities and stationary distribution computed from official data; not present numerically in photos.
// source-uncertainty: photograph 12407 ends with a four-component vector normalized by 15; it cannot be the stationary vector of this three-state exercise. It is not copied as a result here.
// source-verification: all transition columns sum to 1, A^3 p^(0) is a probability vector, and A p^(infinity)=p^(infinity).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 2 — Chaîne de Markov : mer, sable et terrasse

== Énoncé et conventions

Un vacancier évolue parmi trois états :

- $M$ : dans la mer ;
- $S$ : sur le sable ;
- $T$ : sur la terrasse du café.

Les probabilités de passage, données par le sujet officiel, sont les suivantes :

- depuis *S*, rester sur le sable avec probabilité $0.6$, aller à la mer avec probabilité $0.2$, aller sur la terrasse avec probabilité $0.2$ ;
- depuis *M*, rester dans la mer avec probabilité $0.6$, rejoindre le sable avec probabilité $0.4$ ;
- depuis *T*, rester sur la terrasse avec probabilité $0.8$, retourner sur le sable avec probabilité $0.2$.

On adopte l'ordre des états $(M,S,T)$ et une *convention par colonnes* :

$
p^(n)=mat(p_M^(n);p_S^(n);p_T^(n)),
quad p^(n+1)=A p^(n).
$

La colonne $j$ de $A$ contient les probabilités des *états d'arrivée* lorsque l'état actuel est $j$.

== 1. Matrice de transition

Les colonnes correspondent aux départs M, S, T et les lignes aux arrivées M, S, T :

#table(
  columns: 4,
  inset: 6pt,
  align: center,
  [*arrivée / départ*], [*M*], [*S*], [*T*],
  [*M*], [0,6], [0,2], [0],
  [*S*], [0,4], [0,6], [0,2],
  [*T*], [0], [0,2], [0,8],
)

On obtient

$
A=mat(3/5,1/5,0; 2/5,3/5,1/5; 0,1/5,4/5).
$

Chaque coefficient est positif ou nul, et chaque colonne somme à $1$. C'est une *matrice stochastique par colonnes*.

Le graphe orienté correspondant, redessiné d'après la photo, est :

#align(center)[
  #image("../figures/ex02-transitions.svg", width: 95%)
]

== 2. Probabilité de se baigner trois instants plus tard

La personne est sur le sable au temps initial $t$ :

$
p^(0)=mat(0;1;0).
$

La photo rappelle la méthode : au bout de trois transitions, la distribution vaut $A^3 p^(0)$.

*Premier instant :*

$
p^(1)=A p^(0)=mat(1/5;3/5;1/5).
$

*Deuxième instant :*

$
p^(2)=A p^(1)=mat(6/25;12/25;7/25).
$

*Troisième instant :*

$
p^(3)=A p^(2)=mat(6/25;11/25;8/25).
$

La probabilité demandée est la première coordonnée, car M désigne la mer :

$
P("mer au temps " t+3 | "sable au temps " t)=6/25=0.24.
$

*Réponse : 24 %.*

== 3. Probabilités à long terme

À l'équilibre, la distribution ne change plus :

$
p^(infinity)=A p^(infinity).
$

C'est exactement la recherche d'un *vecteur propre associé à la valeur propre $1$*, puis sa normalisation pour que les coordonnées somment à $1$.

Posons $p^(infinity)=mat(u;v;w)$. Résolvons

$
mat(3/5,1/5,0;2/5,3/5,1/5;0,1/5,4/5)
mat(u;v;w)=mat(u;v;w).
$

La première ligne impose

$
(3/5)u+(1/5)v=u
quad => quad v=2u.
$

La troisième ligne donne

$
(1/5)v+(4/5)w=w
quad => quad w=v.
$

Ainsi $v=w=2u$. Un vecteur propre de valeur propre $1$ est donc

$
mat(1;2;2).
$

La normalisation utilise $1+2+2=5$, d'où

$
p^(infinity)=1/5 mat(1;2;2)=mat(1/5;2/5;2/5).
$

Les probabilités à long terme sont donc :

- *Mer : 20 %*.
- *Sable : 40 %*.
- *Terrasse : 40 %*.

La chaîne est irréductible (les trois états communiquent par S) et apériodique (chaque état a une probabilité positive de rester sur place), donc la distribution à long terme converge effectivement vers cette distribution stationnaire, quelle que soit la position initiale.

== Point de vigilance dans les photographies

La fin de la photo 12407 affiche un vecteur à *quatre composantes* avec une somme de $15$. Or l'exercice 2 officiel a seulement *trois états*, donc sa distribution stationnaire a exactement trois composantes. Cette ligne ne peut pas être reprise comme résultat de cet exercice.

La distribution $(1,2,2)/5$ a été *recalculée à partir de la matrice officielle* et vérifie explicitement $A p^(infinity)=p^(infinity)$.

== Méthode d'examen

1. Fixer l'ordre des états et la convention de la matrice (lignes ou colonnes).
2. Vérifier que les colonnes somment à $1$ si $p_(n+1)=A p_n$.
3. En partant de l'état connu, écrire son vecteur de probabilité ; trois étapes correspondent à $A^3 p_0$.
4. À long terme, résoudre $(A-I)p=0$ et imposer la somme des probabilités égale à $1$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Photo 12400 : graphe à trois états et matrice de transition. Photo 12407 : vecteur initial, puissance troisième et méthode d'équilibre. Les résultats numériques, les probabilités limites et la justification de convergence ont été ajoutés indépendamment à partir de TD04_valeurs-propres-vecteurs-propres.pdf, car la copie ne contient pas un calcul numérique complet conforme à cet exercice.
]
