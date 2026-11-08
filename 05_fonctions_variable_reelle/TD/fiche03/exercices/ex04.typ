// source-confidence: high
// source-note: TD03 exercice 4, énoncé officiel et corrections manuscrites du 2026-11-08.
// study-validation: prolongements en 0 et 1, limites unilatérales et quotient des limites usuelles.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 4 — Prolongement par continuité

== Question 1

Étudier le prolongement par continuité en $0$ des fonctions définies sur $RR^*$ :

*a) $f_1(x)=e^(-1/x^2)$.*

Comme $x^2 -> 0^+$ lorsque $x->0$, on a

$
-1/x^2 -> -infinity
quad => quad
e^(-1/x^2) -> 0.
$

Donc $f_1$ se prolonge continûment en $0$ en posant $f_1(0)=0$.

*b) $f_2(x)=e^(-1/x)$.*

On distingue les deux côtés :

$
x->0^+ quad => quad -1/x->-infinity quad => quad e^(-1/x)->0,
$

$
x->0^- quad => quad -1/x->+infinity quad => quad e^(-1/x)->+infinity.
$

Les limites à droite et à gauche ne coïncident pas. Donc $f_2$ n'est pas prolongeable par continuité en $0$.

*c) $f_3(x)=sin(x) ln(abs(x))$.*

Pour $x !=0$ :

$
sin(x) ln(abs(x))
= (x ln(abs(x))) frac(sin(x),x).
$

Or, lorsque $x->0$,

$
x ln(abs(x))->0
quad "et" quad
frac(sin(x),x)->1.
$

Donc $f_3(x)->0$, et $f_3$ se prolonge continûment en posant $f_3(0)=0$.

== Question 2

Pour $n in NN^*$ fixé, on considère

$
f(x)=frac(x^n-1,ln(x)),
quad x in ]0,1[ union ]1,+infinity[.
$

Chercher un prolongement continu sur $[0,+infinity[$.

*Au voisinage de $1$.* Pour $x !=1$,

$
f(x)
= frac(frac(x^n-1,x-1),frac(ln(x),x-1)).
$

Comme

$
lim_(x->1) frac(x^n-1,x-1)=n
quad "et" quad
lim_(x->1) frac(ln(x),x-1)=1,
$

on obtient

$
lim_(x->1) f(x)=frac(n,1)=n.
$

*Au voisinage de $0^+$.*

$
x^n-1 -> -1,
quad ln(x)->-infinity
quad => quad
lim_(x->0^+) f(x)=0.
$

Donc $f$ se prolonge continûment à $[0,+infinity[$ en posant

$
f(0)=0 quad "et" quad f(1)=n.
$
