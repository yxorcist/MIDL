// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet; the supplied handwritten pages now contain corrections for A, B and C.

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

Pour tout $(m,n) in (NN^*)^2$,

$
frac(n m,n+1)
>=
frac(n,n+1)
=
1-frac(1,n+1).
$

Comme $n>=1$,

$
frac(n,n+1)>=frac(1,2).
$

Ainsi,

$
frac(1,2)
$

est un minorant de $A$.

De plus,

$
frac(1 times 1,1+1)
=
frac(1,2)
in A.
$

Donc

$
min(A)=inf(A)=frac(1,2).
$

Pour montrer que $A$ n'est pas majoré, on fixe $n=1$.

Pour tout $m in NN^*$,

$
frac(m times 1,1+1)
=
frac(m,2)
in A.
$

Or

$
frac(m,2)->+infinity.
$

Ainsi, $A$ n'est pas majoré.

Par conséquent, $A$ n'admet ni borne supérieure réelle ni maximum.

== Ensemble $B$

Pour tout $(m,n) in NN^* times NN$,

$
frac(n,n+m) >= 0.
$

De plus,

$
0
=
frac(0,0+1)
in B.
$

Ainsi, $0$ est le minimum de $B$ :

$
min(B)=inf(B)=0.
$

D'autre part, comme $m>=1$,

$
frac(n,n+m)
<=
frac(n,n+1)
=
1-frac(1,n+1)
<
1.
$

Donc $1$ est un majorant de $B$.

En prenant $m=1$, on obtient la suite d'éléments de $B$

$
frac(n,n+1),
$

et

$
frac(n,n+1) -> 1.
$

D'après la caractérisation séquentielle de la borne supérieure,

$
sup(B)=1.
$

Comme aucun élément de $B$ n'est égal à $1$,

$
1 in.not B.
$

Ainsi, $B$ n'admet pas de maximum.

En résumé,

$
min(B)=inf(B)=0,
quad
sup(B)=1,
$

et $B$ n'a pas de maximum.

== Ensemble $C$

Pour tout $(m,n) in (NN^*)^2$,

$
frac(m,n+1)>0.
$

Donc $0$ est un minorant de $C$.

En prenant $m=1$,

$
frac(1,n+1) in C
$

et

$
frac(1,n+1) -> 0.
$

D'après la caractérisation séquentielle de la borne inférieure,

$
inf(C)=0.
$

Comme tous les éléments de $C$ sont strictement positifs,

$
0 in.not C.
$

Ainsi, $C$ n'admet pas de minimum.

Pour montrer que $C$ n'est pas majoré, on fixe $n=1$ :

$
frac(m,2) in C
$

pour tout $m in NN^*$, et

$
frac(m,2) -> +infinity.
$

Donc $C$ n'est pas majoré.

Par conséquent, $C$ n'admet ni borne supérieure réelle ni maximum.

En résumé,

$
inf(C)=0,
$

$C$ n'a pas de minimum et n'est pas majoré.
