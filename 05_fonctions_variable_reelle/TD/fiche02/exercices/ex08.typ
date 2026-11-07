// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain corrections for all four questions.
// study-validation: 2026-11-07 — Q3 : preuve personnelle par bornitude des sous-suites convergentes et parité éventuelle ; Q4 : contradiction avec corollaire de Bolzano-Weierstrass. Q1 et Q2 conservées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 8

== Question 1

Quelles sont les valeurs d'adhérence d'une suite convergente ?

Si

$
u_n->ell,
$

alors toute suite extraite de $(u_n)_n$ converge également vers $ell$.

Ainsi, l'unique valeur d'adhérence est $ell$ :

$
"VDA"((u_n)_n)={ell}.
$

== Question 2

On considère

$
u_n=cos(frac(n pi,4)).
$

La suite est $8$-périodique et prend successivement les valeurs

$
1,
frac(sqrt(2),2),
0,
-frac(sqrt(2),2),
-1,
-frac(sqrt(2),2),
0,
frac(sqrt(2),2).
$

Chacune de ces valeurs apparaît une infinité de fois. On peut donc, pour chacune, extraire une sous-suite constante.

Ainsi,

$
"VDA"((u_n)_n)
=
{
-1,
-frac(sqrt(2),2),
0,
frac(sqrt(2),2),
1
}.
$

== Question 3

Donner un exemple de suite divergente ayant une unique valeur d'adhérence.

Posons $u_n=n(1+(-1)^n)$. Pour $k in NN$ :

$
u_(2k+1)=0,
quad
u_(2k)=4k.
$

Ainsi $u_(2k+1)->0$, donc $0 in op("Adh")(u_n)$.

*Unicité.* Soit $v_n=u_(phi(n))->ell in RR$ une sous-suite convergente, avec $phi:NN->NN$ strictement croissante. Puisque $(v_n)$ converge, elle est bornée.

Supposons par l'absurde que $phi(n)$ soit pair pour une infinité d'indices $n$. Pour ces indices, $v_n=2phi(n)$. Or $phi(n)->+infinity$ : les termes correspondants deviennent arbitrairement grands, contredisant le caractère borné de $(v_n)$.

Donc $phi(n)$ est impair à partir d'un certain rang ; ainsi $v_n=0$ à partir de ce rang, d'où $ell=0$.

$
op("Adh")(u_n)={0}.
$

Enfin, $u_(2k)=4k->+infinity$. La suite $(u_n)$ est donc divergente.

== Question 4

Soit $(u_n)$ une suite réelle bornée et divergente. Montrer qu'elle admet au moins deux valeurs d'adhérence distinctes.

Comme $(u_n)$ est bornée, le théorème de Bolzano-Weierstrass donne :

$
op("Adh")(u_n) != emptyset.
$

Supposons par l'absurde qu'il n'y ait qu'une seule valeur d'adhérence $ell in RR$ :

$
op("Adh")(u_n)={ell}.
$

Puisque $(u_n)$ est bornée, le *corollaire* de Bolzano-Weierstrass implique $u_n->ell$, contradiction avec la divergence de $(u_n)$.

Ainsi, $(u_n)$ admet *au moins deux valeurs d'adhérence distinctes*.
