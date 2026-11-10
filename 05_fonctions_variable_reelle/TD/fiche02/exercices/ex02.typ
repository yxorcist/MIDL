// source-confidence: high
// source-note: TD02, exercice 2 ; partie A réécrite selon la copie du 10/11/2026, parties B et C conservées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

On considère
$
A={frac(m n,n+1) | (m,n) in (NN^*)^2},
$
$
B={frac(n,n+m) | (m,n) in NN^* times NN},
$
$
C={frac(m,n+1) | (m,n) in (NN^*)^2}.
$

== Ensemble $A$

Pour tous $m,n in NN^*$,
$
frac(m n,n+1)
=m(1-frac(1,n+1))
>=1-frac(1,n+1)
>=frac(1,2).
$

Ainsi, $1/2$ est un minorant de $A$. Pour $(m,n)=(1,1)$, on a $1/2 in A$.

Donc
$
inf(A)=min(A)=frac(1,2).
$

En fixant $n=1$, on obtient $m/2 in A$ pour tout $m>=1$, avec
$
frac(m,2) -> +infinity quad (m -> +infinity).
$

Donc $A$ n'est pas majoré et n'admet pas de maximum.

== Ensemble $B$

Pour tout $m in NN^*$ et $n in NN$,
$
0 <= frac(n,n+m) < 1.
$

En prenant $n=0$, on a $0 in B$. Donc
$
inf(B)=min(B)=0.
$

En fixant $m=1$,
$
frac(n,n+1) in B
quad "et" quad
frac(n,n+1) -> 1 quad (n -> +infinity).
$

Comme $1$ est un majorant et que les éléments de $B$ peuvent s'en approcher,
$
sup(B)=1.
$

Puisque tout élément de $B$ est strictement inférieur à $1$, $B$ n'admet pas de maximum.

== Ensemble $C$

Pour tous $m,n in NN^*$,
$
frac(m,n+1)>0.
$

En fixant $m=1$,
$
frac(1,n+1) in C
quad "et" quad
frac(1,n+1) -> 0 quad (n -> +infinity).
$

Donc $inf(C)=0$. Comme $0 in.not C$, $C$ n'admet pas de minimum.

En fixant $n=1$,
$
frac(m,2) in C
quad "et" quad
frac(m,2) -> +infinity quad (m -> +infinity).
$

Donc $C$ n'est pas majoré et n'admet pas de maximum.
