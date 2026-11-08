// source-confidence: high
// source-note: TD03, exercice 1 ; preuve adaptée à la copie manuscrite du 2026-11-08.
// study-validation: caractérisation de l'infimum, décroissance et définition de la limite vérifiées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 1

Soit $f: RR -> RR$ positive et décroissante. Montrer que

$
lim_(x -> +infinity) f(x)=inf(f(RR)).
$

== 1. Existence de l'infimum

Posons $F=f(RR)$.

Comme $f$ est définie sur $RR$, $f(0) in F$, donc $F != emptyset$.

Comme $f$ est positive,

$
forall x in RR, quad f(x)>=0.
$

Donc $0$ est un minorant de $F$. Par la propriété de la borne inférieure,

$
exists m=inf(F) in RR.
$

Par définition,

$
forall x in RR, quad m<=f(x).
$

== 2. Limite en $+infinity$

Soit $epsilon>0$.

Comme $m=inf(F)$, le réel $m+epsilon$ n'est pas un minorant de $F$. Donc il existe $A_epsilon in RR$ tel que

$
f(A_epsilon)<m+epsilon.
$

Comme $f$ est décroissante, pour tout $x>=A_epsilon$,

$
f(x)<=f(A_epsilon)<m+epsilon.
$

Et comme $m$ est un minorant de $F$,

$
m<=f(x)<=f(A_epsilon)<m+epsilon.
$

D'où

$
0<=f(x)-m<epsilon
quad => quad
abs(f(x)-m)<epsilon.
$

On a donc

$
forall epsilon>0, exists A_epsilon in RR,
forall x>=A_epsilon,
quad abs(f(x)-m)<epsilon.
$

Il s'agit de la définition de la limite en $+infinity$. Ainsi,

$
lim_(x -> +infinity) f(x)=m=inf(f(RR)).
$
