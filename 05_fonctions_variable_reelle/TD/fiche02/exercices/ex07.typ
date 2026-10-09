// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the handwritten correction determines whether the set of adherence values is empty in all four cases; only the source arguments are retained.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

Pour chacune des suites suivantes, indiquer si l'ensemble des valeurs d'adhérence est vide ou non.

== 1. $u_n=n^2 sin(n pi/5)$

Considérons la sous-suite $(u_(5n))_n$.

On a

$
u_(5n)
=
(5n)^2 sin(n pi)
=
0.
$

Ainsi,

$
u_(5n)->0.
$

Donc $0$ est une valeur d'adhérence de $(u_n)_n$.

Par conséquent, l'ensemble des valeurs d'adhérence de $(u_n)_n$ n'est pas vide.

== 2. $v_n=sin(n)$

Pour tout $n in NN$,

$
-1<=sin(n)<=1.
$

La suite $(v_n)_n$ est donc bornée.

D'après le théorème de Bolzano-Weierstrass, elle possède au moins une sous-suite convergente.

Ainsi, l'ensemble de ses valeurs d'adhérence n'est pas vide.

== 3. $w_n=tan(frac(n pi,2n+1))$

On a

$
frac(n pi,2n+1)->frac(pi,2)
$

par valeurs inférieures.

Comme

$
tan(x)->+infinity
quad "lorsque" quad
x->frac(pi,2)^-,
$

on obtient

$
w_n->+infinity.
$

Donc $(w_n)_n$ n'admet aucune valeur d'adhérence réelle.

L'ensemble des valeurs d'adhérence est vide.

== 4. $x_n=(-1)^n n ln(1+1/n)$

Considérons la sous-suite des termes d'indice pair.

Pour $n in NN^*$,

$
x_(2n)
=
2n ln(1+frac(1,2n)).
$

Comme

$
ln(1+t)~t
quad "lorsque" quad
t->0,
$

on obtient

$
x_(2n)->1.
$

Donc $1$ est une valeur d'adhérence de $(x_n)_n$.

Par conséquent, l'ensemble de ses valeurs d'adhérence n'est pas vide.
