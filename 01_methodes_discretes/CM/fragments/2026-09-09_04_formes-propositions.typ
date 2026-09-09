#import "../style.typ": *

== Formes courantes de propositions

Une proposition universelle conditionnelle s'écrit typiquement :

$
forall x in D, P(x) => Q(x).
$

Ici :

- $D$ est le domaine ;
- $P(x)$ et $Q(x)$ sont des prédicats.

Exemple :

$
forall n in ZZ, forall m in ZZ,
(P(n) and P(m)) => P(n + m),
$

où $P(t)$ signifie « $t$ est pair ».

On rencontre aussi :

$
forall x in D, P(x)
$

et

$
exists x in D, P(x).
$

