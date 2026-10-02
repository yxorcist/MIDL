// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet; the supplied handwritten page contains the complete correction of questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1 — Examen terminal Juin 2026

On considère

$
E
=
{u_n | n in NN^*},
$

où

$
u_n
=
(-1)^n + 2/n.
$

== Rappel utilisé — recherche d'une borne supérieure

Soit $X subset.eq RR$ un ensemble non vide et majoré, et soit

$
(x_n)_(n in NN) in X^NN.
$

Si

$
x_n -> ell,
$

alors

$
sup(X)>=ell.
$

En particulier, si $M$ est un majorant de $X$ et s'il existe une suite

$
(x_n)_(n in NN) in X^NN
$

telle que

$
x_n -> M,
$

alors

$
sup(X)=M.
$

== Question 1

Pour tout

$
p in NN^*,
$

on a

$
u_(2p)
=
(-1)^(2p)+2/(2p)
=
1+1/p.
$

Donc

$
u_(2p)>1>-1.
$

De même,

$
u_(2p-1)
=
(-1)^(2p-1)+2/(2p-1)
=
-1+2/(2p-1).
$

Comme

$
2/(2p-1)>0,
$

on obtient

$
u_(2p-1)>-1.
$

Ainsi, pour tout

$
n in NN^*,
$

$
u_n>-1.
$

== Question 2

D'après la question précédente,

$
u_n>-1
$

pour tout $n in NN^*$.

Donc $-1$ est un minorant de $E$.

Par conséquent,

$
-1<=inf(E).
$

Considérons maintenant la sous-suite des termes d'indice impair :

$
u_(2p-1)
=
-1+2/(2p-1).
$

Lorsque

$
p->+infinity,
$

on a

$
u_(2p-1)->-1.
$

Comme tous les termes $u_(2p-1)$ appartiennent à $E$, la caractérisation séquentielle de la borne inférieure donne

$
inf(E)<=-1.
$

On en déduit

$
(inf(E)=-1).
$

D'après la question 1,

$
u_n>-1
$

pour tout $n in NN^*$.

Ainsi,

$
-1 in.not E.
$

Donc $E$ n'admet pas de minimum.

== Question 3

Pour tout

$
p>=1,
$

on a

$
u_(2p)
=
1+1/p.
$

Or

$
1/p<=1,
$

donc

$
u_(2p)<=2.
$

Pour les indices impairs,

$
u_(2p-1)
=
-1+2/(2p-1)
<=1<2.
$

Ainsi, pour tout

$
n in NN^*,
$

$
u_n<=2.
$

Donc $2$ est un majorant de $E$.

Enfin,

$
u_2
=
(-1)^2+2/2
=
2.
$

Donc

$
2 in E.
$

Par conséquent,

$
(max(E)=sup(E)=2).
$
