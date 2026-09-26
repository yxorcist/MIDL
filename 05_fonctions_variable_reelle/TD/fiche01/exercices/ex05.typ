// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

== 1. Développement décimal périodique

On considère

$
A=0,4141414141 dots
$

c'est-à-dire le développement décimal périodique formé par la répétition du
bloc $41$.

Les notes écrivent

$
A
=
lim_(N->infinity)
sum_(k=1)^N 41/10^(2k).
$

Comme

$
10^(2k)=100^k,
$

on obtient

$
A
=
41
sum_(k=1)^infinity
(1/100)^k.
$

Il s'agit d'une série géométrique de raison

$
1/100<1.
$

Ainsi,

$
sum_(k=1)^infinity
(1/100)^k
=
(1/100)/(1-1/100)
=
1/99.
$

Donc

$
A=41/99.
$

En particulier,

$
A in QQ.
$

== 2. Le développement $0,999 dots$

On considère

$
B=0,99999 dots
$

Les notes écrivent

$
B
=
lim_(N->infinity)
sum_(k=1)^N 9/10^k.
$

La série

$
sum_(k=1)^infinity 9/10^k
$

est géométrique de raison

$
1/10<1.
$

Donc

$
B
=
9
sum_(k=1)^infinity
(1/10)^k
=
9 dot
(1/10)/(1-1/10).
$

Ainsi,

$
B
=
9/10 dot 10/9
=
1.
$

Par conséquent,

$
0,99999 dots = 1.
$
