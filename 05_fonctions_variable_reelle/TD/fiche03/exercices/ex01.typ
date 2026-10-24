// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf exercice 1, confirmé par notes manuscrites 11485.
// source-reconstruction: preuve complète avec epsilon ; les trois questions sont formulées d'après leur solution photographiée.
// source-verification: g(R) est non vide et minoré, et la décroissance permet de contrôler uniformément les valeurs pour x>=A.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 1 — Limite d'une fonction décroissante

== Hypothèses de l'énoncé officiel

Les notes étudient une fonction

$
g: RR -> RR
$

*positive* et *décroissante*.

On cherche à établir que $g$ possède une limite réelle en $+infinity$ et que cette limite est la borne inférieure de son image.

== 1. Montrer que l'image admet une borne inférieure

On pose

$
g(RR)=\{y in RR : exists x in RR, g(x)=y\}.
$

Puisque $g$ est définie sur $RR$, l'ensemble $g(RR)$ est non vide ; par exemple $g(0) in g(RR)$.

La fonction est positive, donc

$
forall x in RR,
quad g(x)>=0.
$

Ainsi $g(RR)$ est minoré par $0$. La propriété de la borne inférieure dans $RR$ garantit l'existence de

$
m=inf(g(RR)).
$

Par définition,

$
forall x in RR,quad m<=g(x).
$

== 2. Utiliser la caractérisation de l'infimum

Soit $epsilon>0$.

Comme $m$ est le *plus grand minorant* de $g(RR)$, le nombre $m+epsilon$ ne peut pas être un minorant de cet ensemble.

Il existe donc $A_epsilon in RR$ tel que

$
g(A_epsilon)<m+epsilon.
$

Puisque $g$ est décroissante, pour tout $x>=A_epsilon$,

$
g(x)<=g(A_epsilon)<m+epsilon.
$

D'autre part, $m$ est un minorant de toutes les valeurs de $g$. On en déduit, pour $x>=A_epsilon$,

$
m<=g(x)<m+epsilon.
$

Donc

$
abs(g(x)-m)<epsilon.
$

== 3. Déterminer la limite à $+infinity$

Nous avons prouvé que

$
forall epsilon>0,
exists A_epsilon in RR,
forall x>=A_epsilon,
abs(g(x)-m)<epsilon.
$

Il s'agit exactement de la définition de la limite de $g$ en $+infinity$.

On conclut :

$
lim_(x -> +infinity) g(x)=inf(g(RR)).
$

== Fiche méthode

Pour prouver qu'une fonction décroissante minorée admet une limite réelle en $+infinity$ :

1. Définir $m$ comme l'infimum de l'ensemble des valeurs de la fonction.
2. Fixer $epsilon>0$ et trouver un point $A_epsilon$ où $g(A_epsilon)<m+epsilon$.
3. Exploiter la décroissance pour obtenir la même majoration pour *tout* $x>=A_epsilon$.
4. Ajouter la minoration $m<=g(x)$ pour obtenir une valeur absolue inférieure à $epsilon$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Reconstruction.* Les trois étapes et leur conclusion sont visibles sur la photo. L'énoncé exact n'étant pas disponible, « positive et décroissante » reprend les hypothèses utilisées dans la correction et ne prétend pas reproduire mot pour mot la feuille officielle.
]
