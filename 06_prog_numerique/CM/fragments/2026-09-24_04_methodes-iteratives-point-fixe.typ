// source-confidence: medium
// source-uncertainty: the numerical value written for epsilon in the stopping criterion is ambiguous in the raw note and is intentionally not normalized.

#import "../style.typ": *

= Méthodes indirectes — méthodes itératives

On considère

$
A x = b,
$

avec $A$ inversible.

Les méthodes itératives cherchent à déterminer une approximation de $x$ aussi précise que possible.

Les notes utilisent une décomposition

$
A = M - N,
$

où $M$ est choisie de façon à être facilement inversible, par exemple triangulaire, orthogonale ou diagonale.

On obtient

$
A x = b
<=> (M - N) x = b
<=> M x = N x + b.
$

En multipliant par $M^(-1)$,

$
x = M^(-1) N x + M^(-1) b.
$

On pose alors

$
F(x) = M^(-1) N x + M^(-1) b,
$

et le problème devient une équation de point fixe

$
x = F(x).
$

== Itération

On choisit un vecteur initial $x^(0)$.

Pour $k >= 0$,

$
x^(k+1)
=
F(x^(k))
=
M^(-1) N x^(k) + M^(-1) b.
$

La question centrale est alors celle de la convergence de cette suite vers la solution.

== Critères d'arrêt relevés

Les notes indiquent deux contrôles pratiques.

Premièrement, imposer un nombre maximal d'itérations, par exemple

$
"NbIterMax" = 10^5.
$

Deuxièmement, tester à chaque itération le résidu

$
norm(A x^(k) - b) <= epsilon.
$

Lorsque ce critère est satisfait, l'approximation est considérée comme suffisamment bonne.

#remark[
La valeur numérique associée à $epsilon$ est ambiguë dans la source brute ; elle n'est pas fixée ici.
]
