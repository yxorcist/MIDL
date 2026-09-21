#import "../style.typ": *

= 2.3 Composition d'applications linéaires

Soient

$
phi : X -> Y
$

et

$
psi : Y -> Z
$

deux applications.

On définit leur composée

$
psi ∘ phi : X -> Z
$

par

$
x -> psi(phi(x)).
$

== Proposition 2.3.1

Si $phi$ et $psi$ sont linéaires, alors

$
psi ∘ phi
$

est linéaire.

Si

$
phi : E -> F
$

est une application bijective, elle possède une bijection réciproque

$
phi^(-1) : F -> E
$

telle que

$
phi^(-1) ∘ phi = "id"_E
$

et

$
phi ∘ phi^(-1) = "id"_F.
$

== Proposition 2.3.2

Si $phi$ est linéaire et bijective, alors $phi^(-1)$ est linéaire.

=== Démonstration

Soient $u,v in F$ et $lambda in K$.

Posons

$
u' = phi^(-1)(u)
quad "et" quad
v' = phi^(-1)(v).
$

Alors

$
u = phi(u')
quad "et" quad
v = phi(v').
$

On obtient

$
phi^(-1)(lambda u + v)
=
phi^(-1)(lambda phi(u') + phi(v'))
$

$
=
phi^(-1)(phi(lambda u' + v'))
$

$
=
lambda u' + v'
$

$
=
lambda phi^(-1)(u) + phi^(-1)(v).
$

Donc $phi^(-1)$ est linéaire.
