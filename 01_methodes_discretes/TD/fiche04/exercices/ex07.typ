// source-confidence: high
// source-note: énoncé imprimé TD04_relations-ordres.pdf, exercice 7 ; aucune correction manuscrite de cet exercice n'est visible.
// source-reconstruction: preuve par ensemble des contre-exemples dans les deux directions, ajoutée à partir du sujet.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 7 — Principe d'induction et bon fondement

On considère un ensemble $E$ muni d'un ordre strict $prec$.

== 1. Principe d'induction le plus général

Soit $P(x)$ une propriété définie pour tout $x in E$.

Le principe d'induction sur $(E,prec)$ affirme que

$
( forall x in E,
  (forall y in E, y prec x => P(y)) => P(x) )
$

entraîne

$
forall x in E, P(x).
$

Autrement dit : si l'on sait prouver $P(x)$ en supposant la propriété vraie pour *tous les éléments strictement plus petits que $x$*, alors $P$ est vraie partout.

Lorsque $x$ est minimal, l'hypothèse sur les prédécesseurs est automatiquement satisfaite, puisqu'il n'en possède aucun.

== 2(a). Un ordre strict bien fondé rend le principe correct

*Hypothèse :* chaque partie non vide de $E$ possède un élément minimal pour $prec$.

Supposons la règle d'induction satisfaite :

$
forall x in E,
((forall y prec x, P(y)) => P(x)).
$

Raisonnons par l'absurde. Supposons qu'il existe un contre-exemple.

L'ensemble des contre-exemples

$
C=\{x in E : "non " P(x)\}
$

est alors non vide. Par bon fondement, il admet un élément minimal $c$.

Tout $y prec c$ vérifie $P(y)$, sinon $y$ serait un contre-exemple strictement plus petit que $c$.

On peut donc appliquer l'hypothèse d'induction au point $c$ et déduire $P(c)$ : contradiction.

Ainsi $C$ est vide et

$
forall x in E, P(x).
$

== 2(b). La validité du principe implique que l'ordre est bien fondé

On raisonne par contraposée.

Supposons que $prec$ ne soit pas bien fondé. Il existe alors une partie non vide $C subset.eq E$ *sans élément minimal*.

Définissons la propriété

$
P(x) quad <=> quad x notin C.
$

Vérifions la condition inductive. Fixons $x in E$ et supposons que $P(y)$ soit vraie pour tout $y prec x$.

Si $x$ appartenait à $C$, le fait que $C$ n'ait pas d'élément minimal fournirait un $y in C$ tel que $y prec x$.

Mais $P(y)$ affirme $y notin C$ : contradiction.

Donc $x notin C$, c'est-à-dire $P(x)$.

Nous avons montré que la condition inductive est satisfaite pour tout $x in E$.

Si le principe d'induction était correct, il imposerait $P(x)$ pour tout $x in E$, ce qui signifierait $C=emptyset$.

Contradiction avec le choix de $C$ non vide.

Donc l'ordre doit être bien fondé pour que le principe d'induction soit correct.

== Théorème conclu

$
(E,prec) " ordre strict bien fondé"
quad <=> quad
"principe d'induction valide sur " E.
$

== Méthode de preuve à retenir

Dans les deux sens, raisonner avec l'ensemble des éléments qui *ne vérifient pas* une propriété.

- Sens direct : un contre-exemple minimal mène à une contradiction avec l'hypothèse inductive.
- Sens réciproque : une partie non vide sans élément minimal permet de fabriquer une propriété pour laquelle l'hypothèse inductive est vraie, mais la conclusion est fausse.

*Statut.* Cette démonstration est une solution reconstruite depuis l'énoncé et ne figure pas sur les photos manuscrites.
