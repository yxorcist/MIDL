// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-uncertainty: the supplied handwritten correction covers question 1 only; no handwritten correction for question 2 was supplied.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Question 1

Soient $A$ et $B$ deux parties non vides de $RR$.

On suppose que

$
A subset.eq B
$

et que $B$ est borné.

Justifier l'existence de bornes inférieures et supérieures pour $A$ et $B$, puis montrer que

$
sup(A) <= sup(B)
quad "et" quad
inf(A) >= inf(B).
$

=== Correction

Comme $B$ est borné, $B$ est minoré et majoré.

De plus,

$
B != emptyset.
$

D'après la propriété de la borne supérieure, les nombres

$
inf(B)
quad "et" quad
sup(B)
$

existent.

Soit

$
a in A.
$

Comme

$
A subset.eq B,
$

on a aussi

$
a in B.
$

Par conséquent,

$
inf(B) <= a <= sup(B).
$

Ainsi, $A$ est lui aussi minoré et majoré.

Comme

$
A != emptyset,
$

les nombres

$
inf(A)
quad "et" quad
sup(A)
$

existent.

De plus, $inf(B)$ est un minorant de $A$.

Or $inf(A)$ est le plus grand des minorants de $A$, donc

$
inf(B) <= inf(A).
$

De même, $sup(B)$ est un majorant de $A$.

Comme $sup(A)$ est le plus petit des majorants de $A$,

$
sup(A) <= sup(B).
$

Ainsi,

$
inf(B) <= inf(A) <= sup(A) <= sup(B).
$

== Question 2

Soient $A$ et $B$ deux parties non vides de $RR$ telles que, pour tout $a in A$ et tout $b in B$,

$
a <= b.
$

Justifier que $sup(A)$ et $inf(B)$ existent, puis montrer que

$
sup(A) <= inf(B).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction non fournie.* La question 2 figure sur la fiche TD02 officielle,
  mais sa correction n'apparaît pas dans la photographie transmise.
]

$
  B = { frac(n, n + m) | (m, n) in NN^* times NN}
$

$frac(n, m + n) >= 0$ et $0 = frac(0, 0 + 1) in B$

Donc $B$ admet $0$ comme minimum
donc $min(B) = inf(B) = 0$

Soit $(n, m) in NN^* times NN$

$frac(n, n + m) <= frac(n, n + 1) = 1 - frac(1, n + 1) < 1$ (*)

$forall n in NN^*$ et $n in NN$. $m + n != n$ donc $frac(n, m + n) != 1$

Donc $1$ est un majorant de $B$

$frac(n, n + 1) in B$ donc $(frac(n, n + 1))_(n in NN) in B^NN$
et $frac(n, n + 1) -> 1$

Docn d'apres la caracterisation sequentielle de la borne superieure $sup(B) = 1$
Or $1 in.not B$ n'admet pas de maximum.

Soit $C = { frac(m, m + 1) | (m,n) in (NN^*)^2 }$

on a $frac(m, n + 1) > 0$ car $m > 0$ et $n > 0$
Prenons $(frac(1, n + 1))_(n in NN^*) in C^NN$ on a 
$lim_(n -> +inf) frac(1, n + 1) = 0$

$C$ est non vide $frac(1,2) = frac(1, m) in C$ et admet un minorant
ooD'apres la caracterisation de la borne infreieure, on a $inf(C) = 0$
$0 in.not C$ donc $C$ n'admet pas de minimum

Soit $frac(m,2)_(m in NN^*) in C^NN$

On a $lim_(m -> +inf) frac(m,2) 0 inf$

Donc $C$ n'admet pas de borne sup, par consequent, $C$ n'admet pas de valeur maximale

$X^NN = { text("les suites et elements de X") }$ 
$X^n = {(x_1, ..., x_n) | x_1 in X} = $ Fonctions $({1,...,n}, X)$

Si $X$ et $Y$ sont deux ensembles

$X^Y = { text(" fonctions ") : Y -> X }$

// put a Attention ! Sign here plz
On peut etendre la nature de Sup

Si $X$ n'est pas majoree: $sup(X) = +inf$
Si $X != emptyset$ n'est pas majoree: $sup(X) = -inf$

Soit $n in NN^*$

$
  frac(x_(n + 1), x_n) =
  frac((n + 1)^2 2^(-(n + 1)), n^3 2^(-n)) >= 
  frac((n + 1)^3, 2 n^3)
$

$
  frac(1,2)
  frac((n + 1)^3, n) = 
  frac(1,2)
  (1 + frac(1,n))^3
  (1 + frac(1,n))^3 < 2
$

// discontinued
$
  <=> 1 + frac(1,n) < frac(1,2)^(frac(1,3)) \
$

On veut comparer $frac(x_(n+1), x_n)$ a $1$

$
  frac( x_(n+1), x_n ) <= 1 \
  <=> (1 + frac(1,n))^3 <= 2 \
  <=> 1 + frac(1,n) <= 2^(1,3) \
  <=> n <= frac(1, 2^(1,3) ) \
  text("or") frac(1, 2^(1,3) - 1) = 3,84 \ // approximately
  text("donc") frac(x_(n+1), x_n) <= 1 text("si") \
  n >= 4 text("car") n text("est un entier") \
  text("donc") forall n in {1,2,3}, \
  x_(n + 1) > x_n \
  text("et") forall n >= 4, x_(n+1) <= x_n \
$

Autrement dit, la suite $(x_n)_(n in NN)$ ressemble a:


// remind me to learn to do graphs in typst

// graph with curve that increases from 1 to 3
// decreassse from 4 to infinity

// question 2 of exercice 4 i thinkk

$frac(x_(n+1), x_n) < 1 lim_(n -> +inf) x_n = 0$,
On a une suite decroissante a partir d'un certain entier $n = 4$
$forall n in NN^*, x_n = frac(n^3, 2^n) > 0$

Donc $0$ minore $A != emptyset$

De plus $x_n in A^NN$ et $x_n ->_(n -> +inf) 0$ donc

(carac. seq de inf)

$inf(A)$ existe et vaut $0$

De plus $0 in.not A$ (*) donc $A$ n'a pas de min

On a $forall n in NN, x_n <= x_4$
En effet $x_1 <= x_2 <= x_3 <= x_4$

et $ forall n >= 4, x_n <= x_4$

car $(x_n)_(n >= 4)$ est decroissant

(tout, ceci vient de la Q1)

donc $x_4$ est un majorant de $A$ et $x_4 in A$ donc $max(A) = sup(A) = x_4 = frac(4^3, 2^4) = 4$ 

