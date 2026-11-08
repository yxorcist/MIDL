// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf ; correction adaptée à la copie manuscrite validée le 2026-11-08.
// study-validation: point fixe obtenu avec la borne supérieure et la croissance, sans hypothèse de continuité.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2

Soit $f: [0,1] -> [0,1]$ croissante. Montrer qu'il existe $b in [0,1]$ tel que $f(b)=b$.

On pose

$
E={x in [0,1] | x<=f(x)}.
$

== 1. Existence de la borne supérieure

Comme $f(0) in [0,1]$, on a $0<=f(0)$, donc $0 in E$ et $E != emptyset$.

Par construction, $E subset.eq [0,1]$ ; ainsi $E$ est majoré par $1$.

Par la propriété de la borne supérieure, on pose

$
b=sup(E) in [0,1].
$

== 2. Montrer $b<=f(b)$

Par la caractérisation de la borne supérieure, il existe une suite $(x_n)$ d'éléments de $E$ telle que

$
x_n -> b.
$

Comme $x_n in E$, on a $x_n<=f(x_n)$. Or $x_n<=b$ et $f$ est croissante, donc

$
x_n<=f(x_n)<=f(b).
$

En passant à la limite dans $x_n<=f(b)$ :

$
b<=f(b).
$

== 3. Montrer $f(b)<=b$

Comme $f$ est croissante et $b<=f(b)$,

$
f(b)<=f(f(b)).
$

Or $f(b) in [0,1]$ car $f$ est à valeurs dans $[0,1]$. Donc, par définition de $E$,

$
f(b) in E.
$

Puisque $b=sup(E)$, on obtient

$
f(b)<=b.
$

Finalement,

$
b<=f(b)<=b
quad => quad
f(b)=b.
$

Donc $f$ admet un point fixe dans $[0,1]$.
