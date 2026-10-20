// source-confidence: high
// source-note: correction manuscrite de TD 2, exercice 11, photographies 10892 (deux pages), recoupée avec l'énoncé officiel TD02_nombres-reels-suites-reelles.pdf.
// source-correction: l'énoncé officiel précise y_n=x_n/(n+1), et non x_n/n! ; la lecture précédente du dénominateur était erronée.
// source-note: l'exercice 12 est traité séparément dans ex12.typ à partir des photos 11269 et 11271.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 11 — Suites, extraction et limite infinie

== 1. Critère par absence de sous-suite majorée

La propriété examinée dans la correction est :

$
x_n -> +infinity
quad <=> quad
"la suite " (x_n)_n " n'admet aucune sous-suite majorée".
$

=== Sens direct

Si $x_n -> +infinity$, toute sous-suite $(x_(phi(n)))_n$ tend également vers $+infinity$. En particulier, aucune sous-suite n'est majorée.

=== Réciproque

Supposons que $(x_n)_n$ n'admette aucune sous-suite majorée.

Soit $M in RR$. Considérons l'ensemble des indices

$
X_M={n in NN | x_n <= M}.
$

Cet ensemble est nécessairement fini. En effet, s'il était infini, on pourrait en extraire une suite strictement croissante d'indices $(phi(k))_k$ telle que

$
x_(phi(k)) <= M
$

pour tout $k$, ce qui fournirait une sous-suite majorée.

On peut donc choisir un entier $N_M$ strictement supérieur à tous les éléments de $X_M$ (ou $N_M=0$ si $X_M$ est vide).

Alors

$
forall n>=N_M,
quad x_n>M.
$

C'est exactement la définition de $x_n -> +infinity$.

== 2. Une suite non majorée ne tend pas forcément vers $+infinity$

On considère la suite

$
x_n=(-1)^n n.
$

Les termes d'indice pair vérifient

$
x_(2n)=2n -> +infinity.
$

La suite $(x_n)$ est donc non majorée.

Cependant, pour les indices impairs,

$
x_(2n+1)=-(2n+1)->-infinity.
$

Ainsi, $(x_n)_n$ ne tend pas vers $+infinity$.

Cela distingue *être non majorée* de *tendre vers $+infinity$*.

== 3. Une valeur d'adhérence nulle

La dernière correction considère une suite $(x_n)_n$ de termes positifs ou nuls, qui *ne tend pas vers $+infinity$*.

Les notes utilisent la suite

$
y_n=x_n/(n+1).
$

D'après la contraposée de la question 1, il existe une sous-suite $(x_(phi(n)))_n$ majorée : pour un réel $M>0$,

$
0<=x_(phi(n))<=M.
$

On en déduit

$
0 <= y_(phi(n))
= x_(phi(n))/(phi(n)+1)
<= M/(phi(n)+1).
$

Comme $phi:NN->NN$ est strictement croissante,

$
phi(n)>=n.
$

Par conséquent,

$
0<=y_(phi(n))<=M/(n+1)->0.
$

Par le théorème des gendarmes,

$
y_(phi(n))->0.
$

Donc *$0$ est une valeur d'adhérence de $(y_n)_n$*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction vérifiée.* L'énoncé imprimé a été consulté. Le raisonnement ci-dessus suit la démonstration manuscrite, en explicitant la construction d'une extraction et les hypothèses qu'elle utilise. La définition de $y_n$ est vérifiée sur l'énoncé imprimé, ce qui corrige la lecture erronée du dénominateur dans une version précédente.
]
