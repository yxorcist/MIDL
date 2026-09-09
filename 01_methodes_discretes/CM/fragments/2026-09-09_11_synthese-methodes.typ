#import "../style.typ": *

== Synthèse des méthodes de preuve

Pour démontrer une implication

$
P => Q,
$

on peut notamment utiliser les méthodes suivantes.

=== Preuve directe

On suppose $P$, puis on démontre $Q$ :

$
P => Q.
$

=== Preuve par contraposée

On utilise l'équivalence logique

$
P => Q
quad <=> quad
not Q => not P.
$

On suppose donc $not Q$ et on démontre $not P$.

=== Preuve par l'absurde

On suppose

$
P and not Q
$

et on montre que cette hypothèse est impossible.

=== Preuve par cas

On découpe le domaine en plusieurs cas couvrant toutes les possibilités, puis on démontre le résultat dans chacun des cas.
