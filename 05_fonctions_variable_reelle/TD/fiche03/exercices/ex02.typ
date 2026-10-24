// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf, exercice 2 ; photos 11485 et 11486.
// source-verification: l'énoncé officiel suppose uniquement f:[0,1]->[0,1] croissante, sans continuité ; la preuve ci-dessous utilise seulement la monotonie et la propriété de borne supérieure.
// source-verification: l'argument au moyen de l'ensemble E et de son supremum est vérifié ; on explicite le rôle de la continuité au passage à la limite.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2 — Point fixe d'une application croissante

== Énoncé officiel

Les notes considèrent une fonction

$
f:[0,1] -> [0,1]
$

*croissante* (la continuité n'est pas supposée). On souhaite démontrer qu'il existe $b in [0,1]$ tel que $f(b)=b$.

La correction utilise l'ensemble

$
E={x in [0,1] | x<=f(x)}.
$

== 1. Montrer que $E$ admet une borne supérieure

Comme $f$ est à valeurs dans $[0,1]$, on sait que

$
0<=f(0).
$

Donc $0 in E$ : l'ensemble $E$ n'est pas vide.

Par construction, $E subset.eq [0,1]$, donc il est majoré par $1$.

Toute partie non vide majorée de $RR$ admet une borne supérieure. On peut ainsi poser

$
b=sup(E) in [0,1].
$

== 2. Montrer que $b<=f(b)$

La caractérisation de la borne supérieure garantit l'existence d'une suite $(x_n)$ d'éléments de $E$ telle que

$
x_n -> b.
$

Chaque $x_n$ vérifie $x_n<=f(x_n)$.

Puisque $x_n<=b$ et que $f$ est croissante, on a $f(x_n)<=f(b)$. Comme $x_n in E$, on a donc

$
x_n<=f(x_n)<=f(b).
$

En passant à la limite dans l'inégalité $x_n<=f(b)$, on obtient

$
b<=f(b).
$

== 3. Montrer que $f(b)<=b$

Comme $f$ est croissante et $b<=f(b)$,

$
f(b)<=f(f(b)).
$

Cela signifie que *$f(b) in E$* (le nombre $f(b)$ appartient bien à $[0,1]$ puisque $f$ y prend ses valeurs).

Or $b$ est un majorant de $E$. Par conséquent,

$
f(b)<=b.
$

En réunissant les deux inégalités,

$
b<=f(b)<=b,
$

d'où

$
f(b)=b.
$

On a donc montré que $f$ possède *au moins un point fixe* dans $[0,1]$.

== Méthode à retenir

1. Construire l'ensemble des points où $x<=f(x)$.
2. Montrer qu'il est non vide et majoré, puis considérer son supremum $b$.
3. Utiliser une suite de points de cet ensemble et la monotonie pour montrer $b<=f(b)$.
4. Exploiter la croissance : $b<=f(b)$ entraîne $f(b)<=f(f(b))$, donc $f(b)$ appartient lui-même à l'ensemble.
5. Comme $b$ est son supremum, conclure $f(b)<=b$, puis $f(b)=b$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les étapes avec l'ensemble $E$, la borne supérieure $b$ et la monotonie sont visibles sur les photos. Les hypothèses ont été vérifiées dans l'énoncé officiel. Celui-ci ne suppose pas la continuité ; l'argument a été corrigé en conséquence.
]
