// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: énoncé officiel conservé ; corrections Q1–Q3 rédigées selon les preuves manuscrites validées de l'étudiant.
// study-validation: 2026-11-07 — Q1 : epsilon et seuil n >= 2N+1 ; Q2 : contre-exemple (-1)^n ; Q3 : sous-suites communes 6n et 6n+3 et unicité de la limite.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 9

Soit $(u_n)_n$ une suite de nombres réels.

== Question 1

On suppose que les suites

$
(u_(2n))_n
quad "et" quad
(u_(2n+1))_n
$

convergent vers la même limite.

Prouver que $(u_n)_n$ est convergente.

== Question 2

Donner un exemple de suite telle que

$
(u_(2n))_n
$

converge,

$
(u_(2n+1))_n
$

converge, mais $(u_n)_n$ n'est pas convergente.

== Question 3

On suppose que les suites

$
(u_(2n))_n,
quad
(u_(2n+1))_n
quad "et" quad
(u_(3n))_n
$

sont convergentes.

Prouver que $(u_n)_n$ est convergente.

== Corrections manuscrites

=== Question 1

Supposons $u_(2n)->ell$ et $u_(2n+1)->ell$, avec $ell in RR$.

Soit $epsilon>0$. Par convergence des deux sous-suites, il existe $N in NN$ tel que, pour tout $k>=N$ :

$
abs(u_(2k)-ell)<epsilon
quad "et" quad
abs(u_(2k+1)-ell)<epsilon.
$

Soit $n>=2N+1$.

- Si $n$ est pair, $n=2k$ avec $k>=N$, donc $abs(u_n-ell)<epsilon$.
- Si $n$ est impair, $n=2k+1$ avec $k>=N$, donc $abs(u_n-ell)<epsilon$.

Ainsi, $forall n>=2N+1$, $abs(u_n-ell)<epsilon$. Donc $u_n->ell$.

=== Question 2

Prenons $u_n=(-1)^n$.

$
u_(2n)=1->1,
quad
u_(2n+1)=-1->-1.
$

Les deux sous-suites convergent vers des limites distinctes ; or, si $(u_n)$ convergeait, toutes ses sous-suites auraient la même limite. Donc $(u_n)$ diverge.

=== Question 3

Supposons :

$
u_(2n)->ell_1,
quad
u_(2n+1)->ell_2,
quad
u_(3n)->ell_3.
$

$(u_(6n))$ est une sous-suite commune de $(u_(2n))$ et $(u_(3n))$. Par unicité de la limite :

$
ell_1=ell_3.
$

De même, $(u_(6n+3))$ est une sous-suite commune de $(u_(2n+1))$ et $(u_(3n))$, car

$
6n+3=2(3n+1)+1=3(2n+1).
$

Donc, par unicité de la limite, $ell_2=ell_3$.

Ainsi $ell_1=ell_2=ell_3$. Les sous-suites paire et impaire convergent vers la même limite ; d'après la question 1 :

$
u_n->ell_3.
$
