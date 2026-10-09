// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain corrections for all four questions.

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

On cherche une suite divergente ayant une unique valeur d'adhérence.

Considérons

$
u_n=n(1+(-1)^n).
$

Alors

$
u_n
=
cases(
2n & "si " n " est pair",
0 & "si " n " est impair".
)
$

La sous-suite $(u_(2n+1))_n$ est constante égale à $0$, donc

$
0
$

est une valeur d'adhérence.

Montrons qu'il n'y en a pas d'autre.

Soit $a in RR^*$ et supposons qu'une suite extraite

$
v_n=u_(phi(n))
$

converge vers $a$, avec $phi:NN->NN$ strictement croissante.

Prenons

$
epsilon=abs(a)/2.
$

Comme $phi(n)>=n$, pour $n>=abs(a)$, on a $phi(n)>=abs(a)$.

Or

$
v_n
=
cases(
0 & "si " phi(n) " est impair",
2phi(n) & "si " phi(n) " est pair".
)
$

Si $phi(n)$ est impair,

$
abs(v_n-a)=abs(a)>epsilon.
$

Si $phi(n)$ est pair, pour $n>=abs(a)$,

$
abs(v_n-a)
=
abs(2phi(n)-a)
>=
2abs(a)-abs(a)
=
abs(a)
>
epsilon.
$

Ainsi, à partir d'un certain rang,

$
abs(v_n-a)>epsilon,
$

ce qui contredit $v_n->a$.

Donc aucune valeur $a!=0$ n'est valeur d'adhérence.

Par conséquent,

$
"VDA"((u_n)_n)={0}.
$

Enfin, la sous-suite $(u_(2n))_n=(4n)_n$ diverge vers $+infinity$.

La suite $(u_n)_n$ ne converge donc pas.

== Question 4

Supposons $(u_n)_n$ bornée et divergente.

Comme elle est bornée, le théorème de Bolzano-Weierstrass assure qu'elle possède au moins une valeur d'adhérence.

Si elle n'en possédait qu'une seule, le corollaire de Bolzano-Weierstrass donnerait que la suite converge vers cette unique valeur d'adhérence.

C'est impossible puisque $(u_n)_n$ est divergente.

Ainsi, toute suite réelle bornée et divergente possède au moins deux valeurs d'adhérence distinctes.
