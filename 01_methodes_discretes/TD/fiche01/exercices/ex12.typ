#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 12

Montrons par l'absurde que $sqrt(6)$ est irrationnel.

Supposons

$
sqrt(6)=a/b
$

avec $a,b in ZZ$, $b != 0$, et la fraction $a/b$ irréductible.

Alors

$
6=a^2/b^2,
$

donc

$
a^2=6b^2.
$

Ainsi $a^2$ est pair, donc $a$ est pair. Il existe $h in ZZ$ tel que

$
a=2h.
$

En remplaçant,

$
4h^2=6b^2,
$

donc

$
2h^2=3b^2.
$

Le membre de gauche est pair, donc $3b^2$ est pair. Comme $3$ est impair, $b^2$ est pair, donc $b$ est pair.

Ainsi $a$ et $b$ sont tous deux pairs, ce qui contredit l'irréductibilité de $a/b$.

Donc

$
sqrt(6) notin QQ.
$
