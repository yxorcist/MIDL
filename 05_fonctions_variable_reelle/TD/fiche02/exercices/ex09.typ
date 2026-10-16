// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: corrections complètes transmises dans les nouvelles photographies 10891–10892 ; arguments de parité et de sous-suites communes vérifiés.

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

=== Question 1 — Sous-suites paire et impaire

Supposons que, pour un réel $ell$,

$
u_(2n) -> ell
quad "et" quad
u_(2n+1) -> ell.
$

Soit $epsilon > 0$. Il existe $N_0 in NN$ tel que, pour tout $k >= N_0$,

$
abs(u_(2k)-ell) < epsilon
quad "et" quad
abs(u_(2k+1)-ell) < epsilon.
$

Pour tout $n >= 2N_0+1$, si $n$ est pair, alors $n=2k$ avec $k>=N_0$ ; sinon, $n=2k+1$ avec $k>=N_0$.

Dans les deux cas,

$
abs(u_n-ell)<epsilon.
$

Donc $u_n -> ell$.

=== Question 2 — Contre-exemple

Choisissons

$
u_n=(-1)^n.
$

Alors

$
u_(2n)=1
quad "et" quad
u_(2n+1)=-1.
$

Ces deux sous-suites convergent, mais vers *deux limites différentes*.

La suite $(u_n)_n$ ne converge donc pas.

=== Question 3 — Ajout de la sous-suite d'indices multiples de trois

Supposons que

$
u_(2n)->ell_1,
quad
u_(2n+1)->ell_2,
quad
u_(3n)->ell_3.
$

La sous-suite $(u_(6n))_n$ est extraite à la fois de $(u_(2n))_n$ et de $(u_(3n))_n$.

Par unicité de la limite,

$
ell_1=ell_3.
$

La sous-suite $(u_(6n+3))_n$ est extraite à la fois de $(u_(2n+1))_n$ et de $(u_(3n))_n$, puisque

$
6n+3=2(3n+1)+1=3(2n+1).
$

Par unicité de la limite,

$
ell_2=ell_3.
$

On en déduit

$
ell_1=ell_2=ell_3.
$

Les deux sous-suites paire et impaire ont donc la même limite. D'après la question 1,

$
u_n -> ell_3.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Les trois raisonnements figurent dans les pages manuscrites 10891–10892. La rédaction formalise l'argument de parité et les inclusions de sous-suites sans modifier les conclusions.
]
