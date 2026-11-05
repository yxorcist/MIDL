// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// study-validation: 2026-11-05 — Exercices 7.1–7.4 validés à partir des preuves manuscrites ; en 7.4, méthode personnelle par Bolzano-Weierstrass (et non sous-suite paire).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

Pour chacune des suites suivantes, indiquer si l'ensemble des valeurs d'adhérence est vide ou non.

== 1. $u_n=n^2 sin(n pi/5)$

Pour tout $n in NN^*$, on a :

$
u_(5n)=(5n)^2 sin(n pi)=0.
$

Donc $u_(5n)->0$, d'où $0 in op("Adh")(u_n)$ et $op("Adh")(u_n) != emptyset$.

== 2. $v_n=sin(n)$

$
forall n in NN^*, quad -1<=sin(n)<=1.
$

Donc $(v_n)$ est bornée. Par le théorème de Bolzano-Weierstrass, elle possède au moins une sous-suite convergente. Ainsi $op("Adh")(v_n) != emptyset$.

== 3. $w_n=tan(frac(n pi,2n+1))$

Pour tout $n in NN^*$ :

$
0<frac(n pi,2n+1)<frac(n pi,2n)=frac(pi,2).
$

De plus,

$
frac(n pi,2n+1)=frac(pi,2+1/n)->frac(pi,2).
$

Donc $frac(n pi,2n+1)->frac(pi,2)^-$ (par valeurs inférieures).

Comme $tan(x)->+infinity$ lorsque $x->frac(pi,2)^-$, on obtient :

$
w_n->+infinity.
$

La suite diverge vers $+infinity$ ; aucune de ses sous-suites ne converge dans $RR$. Donc $op("Adh")(w_n)=emptyset$.

== 4. $x_n=(-1)^n n ln(1+1/n)$

On a $frac(1,n)->0$. Par développement limité (DL) :

$
ln(1+frac(1,n)) ~ frac(1,n)
quad => quad
n ln(1+frac(1,n)) ~ 1.
$

Ainsi $n ln(1+frac(1,n))->1$, donc cette suite est bornée.

De plus, $abs((-1)^n)=1$ pour tout $n$. Donc $x_n=(-1)^n n ln(1+1/n)$ est bornée.

Par le théorème de Bolzano-Weierstrass, $(x_n)$ possède au moins une sous-suite convergente. Donc $op("Adh")(x_n) != emptyset$.
