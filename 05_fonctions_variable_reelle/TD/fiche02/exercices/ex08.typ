// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the supplied handwritten pages contain corrections for all four questions.
// study-validation: 2026-11-07 — Q1 : même limite pour toute sous-suite ; Q2 : périodicité modulo 8 et sous-suites constantes ; Q3 : unicité via bornitude et parité éventuelle ; Q4 : contradiction via corollaire de Bolzano-Weierstrass.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 8

== Question 1

Quelles sont les valeurs d'adhérence d'une suite convergente ?

Soit $u_n->ell$. Pour toute $phi:NN->NN$ strictement croissante, $(u_(phi(n)))$ est une sous-suite de $(u_n)$ ; donc

$
u_n->ell
quad => quad
forall phi " strictement croissante", quad u_(phi(n))->ell.
$

Toute sous-suite ayant la même limite $ell$, on obtient :

$
op("Adh")(u_n)={ell}.
$

== Question 2

Quelles sont les valeurs d'adhérence de la suite $u_n=cos(frac(n pi,4))$, $n>=0$ ?

Comme $u_(n+8)=u_n$, la suite est $8$-périodique.

Pour tout $r in {0,1,2,3,4,5,6,7}$ et tout $k in NN$ :

$
u_(8k+r)
=cos(frac((8k+r) pi,4))
=cos(frac(r pi,4)).
$

Chaque $(u_(8k+r))_k$ est donc une sous-suite constante, et tout indice $n$ s'écrit $n=8k+r$ avec $0<=r<=7$. Il n'y a ainsi aucune autre valeur d'adhérence.

$
op("Adh")(u_n)
={-1,-frac(sqrt(2),2),0,frac(sqrt(2),2),1}.
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
