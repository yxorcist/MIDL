// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// study-validation: 2026-11-04 — TD02 ex02 A, B, C validés sur copies manuscrites (10/10) : minorant atteint et suite non majorée pour A ; 0 atteint et 1 approché sans être atteint pour B ; 0 approché sans être atteint et suite non majorée pour C. Réécriture concise, variables fixées et limites explicites.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

On considère les parties de $RR$ suivantes :

$
A
=
{ frac(n m, n+1) | (m,n) in (NN^*)^2 },
$

$
B
=
{ frac(n, n+m) | (m,n) in NN^* times NN },
$

$
C
=
{ frac(m, n+1) | (m,n) in (NN^*)^2 }.
$

== Ensemble $A$

Pour tous $m,n in NN^*$,

$
frac(m n,n+1)
= m(1-frac(1,n+1))
>= 1-frac(1,n+1)
>= frac(1,2).
$

Ainsi, $1/2$ est un minorant de $A$. Or, pour $m=n=1$,

$
frac(m n,n+1)=frac(1,2) in A.
$

Donc

$
min(A)=inf(A)=frac(1,2).
$

Pour $n=1$, on obtient $m/2 in A$ pour tout $m in NN^*$, et

$
frac(m,2) -> +infinity quad "lorsque" quad m -> +infinity.
$

Donc $A$ n'est pas majoré : il n'admet ni supremum réel ni maximum.

== Ensemble $B$

Pour tout $m in NN^*$ et $n in NN$,

$
0 <= frac(n,n+m) < 1.
$

En prenant $n=0$, on a $0 in B$. Donc

$
min(B)=inf(B)=0.
$

En fixant $m=1$,

$
frac(n,n+1) in B
quad "et" quad
frac(n,n+1) -> 1
quad "lorsque" quad n -> +infinity.
$

Puisque $1$ est un majorant approché par des éléments de $B$,

$
sup(B)=1.
$

Comme tous les éléments de $B$ sont strictement inférieurs à $1$,
$B$ n'admet pas de maximum.

== Ensemble $C$

Pour tous $m,n in NN^*$,

$
frac(m,n+1)>0.
$

En fixant $m=1$,

$
frac(1,n+1) in C
quad "et" quad
frac(1,n+1) -> 0
quad "lorsque" quad n -> +infinity.
$

Donc $inf(C)=0$. Comme $0 in.not C$, $C$ n'admet pas de minimum.

En fixant $n=1$, on obtient

$
frac(m,2) in C
quad "et" quad
frac(m,2) -> +infinity
quad "lorsque" quad m -> +infinity.
$

Ainsi, $C$ n'est pas majoré : il n'admet ni supremum réel ni maximum.
