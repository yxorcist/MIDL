// source-confidence: medium
// source-note: statement and numbering cross-checked against the official TD02 sheet.
// source-note: photo 11491 et énoncé imprimé TD02 : construction par doublement et schémas de pavage.
// source-reconstruction: les preuves b et c sont des compléments à partir du sujet ; leur décomposition en rectangles 2×3 est vérifiable indépendamment.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 10 — Couverture d'un échiquier

On demande si les échiquiers suivants peuvent être complètement recouverts à l'aide de triminos, pour tout entier positif $n$ :

- a) $3 times 2^n$ ;
- b) $6 times 2^n$ ;
- c) $6^n times 6^n$.

== Question a

On note $P(n)$ la propriété :

$
P(n): "tout échiquier " 3 times 2^n " peut être recouvert par des triminos".
$

=== Base

Pour

$
n=1,
$

on obtient un échiquier

$
3 times 2.
$

La correction donne un pavage direct de cet échiquier par des triminos.

Ainsi,

$
P(1)
$

est vraie.

=== Hérédité

Supposons

$
P(n)
$

vraie.

Un échiquier

$
3 times 2^(n+1)
$

se décompose en deux échiquiers

$
3 times 2^n.
$

Par hypothèse d'induction, chacun de ces deux échiquiers peut être recouvert par des triminos.

Par conséquent, leur réunion peut également être recouverte.

Donc

$
P(n+1)
$

est vraie.

Par induction,

$
forall n>=1,
quad
P(n)
$

est vraie.

== Question b — $6 times 2^n$

Tout échiquier $6 times 2^n$ se découpe horizontalement en *deux* échiquiers $3 times 2^n$.

La question a prouve que chacun peut être recouvert, pour $n>=1$, par des trominos en L.

En réunissant les deux pavages, on obtient un pavage du grand échiquier. La réponse est donc *oui*.

== Question c — $6^n times 6^n$

Pour tout $n>=1$, le nombre $6^n$ est divisible par $2$ et par $3$.

On peut donc partager l'échiquier en rectangles *$2 times 3$*, sans qu'il reste de case.

Chaque rectangle $2 times 3$ est recouvrable par *deux* trominos en L (l'un occupant deux cases de la première rangée et une de la deuxième, l'autre complétant les trois cases restantes).

En pavant chaque rectangle indépendamment, on recouvre tout l'échiquier.

La réponse est donc *oui*.

== Bilan

Pour les trois familles a, b et c, il existe un pavage par des trominos en L pour tout $n>=1$.

*Provenance.* La preuve par induction pour a figure sur la photo. Les réponses b et c sont rédigées à partir du sujet officiel et de la possibilité de juxtaposer des pavages $3 times 2^n$ ou $2 times 3$ ; les schémas manuscrits ne permettent pas d'attribuer un argument plus précis.
