// source-confidence: medium
// source-note: statement and numbering cross-checked against the official TD02 sheet.
// source-uncertainty: the handwritten page clearly contains a full induction for question a. The diagrammatic argument later on the page is too ambiguous to attach safely to question b or c, so it is not reconstructed.

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

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source incomplète pour b et c.* La photographie contient ensuite plusieurs
  schémas de pavage et une conclusion manuscrite, mais leur rattachement exact à
  b ou c n'est pas suffisamment lisible. Aucun résultat n'est attribué sans
  certitude.
]
