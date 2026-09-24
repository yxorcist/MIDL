#import "../../style.typ": *

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 09/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Méthodes de preuve]
]
#line(length: 100%)
#v(0.7em)

= Méthodes discrètes logiques
Séance du 09/09/2026 — Preuves et méthodes de démonstration

== Rappels sur les ensembles de nombres

- $NN$ : ensemble des entiers naturels. Il est fermé pour l'addition et la multiplication.
- $ZZ$ : ensemble des entiers relatifs. Il est fermé pour l'addition, la multiplication et la soustraction.
- $QQ$ : ensemble des nombres rationnels. Un rationnel s'écrit sous la forme $a / b$ avec $a in ZZ$, $b in ZZ$ et $b != 0$.
- $RR$ : ensemble des nombres réels.

== Notion de preuve

Une *preuve* ou *démonstration* est une suite de propositions valides qui permet de passer d'hypothèses à une conclusion.

On peut la représenter schématiquement par :

$
P_1, P_2, dots, P_m
$

où :

- $P_1$ correspond à une hypothèse ou à un axiome ;
- chaque proposition suivante est obtenue à partir des propositions précédentes, de définitions ou de théorèmes déjà démontrés ;
- $P_m$ est la conclusion à établir.

== Premier exemple de preuve

=== Théorème

Si $n$ et $m$ sont deux entiers pairs, alors $n + m$ est pair.

=== Preuve

Supposons que $n$ et $m$ soient pairs.

Par définition d'un entier pair, il existe $k in ZZ$ et $k' in ZZ$ tels que

$
n = 2k
quad "et"
quad
m = 2k'.
$

Alors

$
n + m
= 2k + 2k'
= 2(k + k').
$

Posons

$
k'' = k + k'.
$

Comme $k, k' in ZZ$, on a $k'' in ZZ$. Donc

$
n + m = 2k'',
$

et ainsi $n + m$ est pair.

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

== Propositions existentielles

Pour démontrer une proposition de la forme

$
exists x in D, P(x),
$

il suffit de fournir un élément précis du domaine $D$ pour lequel $P(x)$ est vraie.

=== Exemple 1

Il existe des entiers naturels $a$, $b$ et $x$ tels que

$
x^2 = a^2 + b^2.
$

En effet,

$
3^2 + 4^2
= 9 + 16
= 25
= 5^2.
$

On peut donc prendre

$
a = 3,
quad
b = 4,
quad
x = 5.
$

=== Exemple 2

Montrons qu'il existe $x in NN$ tel que

$
x^2 = 15129.
$

Il suffit de constater que

$
123^2 = 15129.
$

Donc $x = 123$ convient.

=== Exemple 3 — Deux irrationnels dont une puissance est rationnelle

On veut montrer qu'il existe deux nombres irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

Considérons

$
alpha = sqrt(2)^sqrt(2).
$

On distingue deux cas.

*Cas 1 :* $alpha$ est rationnel.

Alors on choisit

$
x = sqrt(2)
quad "et"
quad
y = sqrt(2).
$

Les deux nombres sont irrationnels et

$
x^y = sqrt(2)^sqrt(2) = alpha,
$

qui est rationnel dans ce cas.

*Cas 2 :* $alpha$ est irrationnel.

On choisit alors

$
x = sqrt(2)^sqrt(2)
quad "et"
quad
y = sqrt(2).
$

Les deux nombres sont irrationnels et

$
x^y
= (sqrt(2)^sqrt(2))^sqrt(2)
= sqrt(2)^2
= 2,
$

qui est rationnel.

Dans tous les cas, il existe donc deux irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

== Preuve directe

Pour démontrer

$
forall x in D, P(x) => Q(x),
$

par preuve directe :

1. on prend un élément quelconque $x in D$ ;
2. on suppose $P(x)$ vraie ;
3. on déduit $Q(x)$.

=== Exemple 1 — Vérification sur un domaine fini

Montrons que pour tout entier naturel $n$ tel que

$
1 <= n <= 10,
$

le nombre

$
n^2 - n + 11
$

est premier.

Le domaine étant fini, on vérifie les dix valeurs :

#table(
  columns: 2,
  align: center,
  inset: 5pt,
  [*$n$*], [*$n^2 - n + 11$*],
  [$1$], [$11$],
  [$2$], [$13$],
  [$3$], [$17$],
  [$4$], [$23$],
  [$5$], [$31$],
  [$6$], [$41$],
  [$7$], [$53$],
  [$8$], [$67$],
  [$9$], [$83$],
  [$10$], [$101$],
)

Toutes ces valeurs sont premières.

=== Exemple 2 — Tout entier est rationnel

Montrons que tout entier relatif est rationnel.

Soit $z in ZZ$. On peut écrire

$
z = z / 1.
$

Comme $z in ZZ$ et $1 in ZZ$ avec $1 != 0$, on a donc $z in QQ$.

=== Exemple 3 — Somme de deux rationnels

Montrons que si $a$ et $b$ sont rationnels, alors $a + b$ est rationnel.

Comme $a, b in QQ$, il existe

$
a_1, b_1 in ZZ
$

et

$
a_2, b_2 in ZZ
$

avec $a_2 != 0$ et $b_2 != 0$, tels que

$
a = a_1 / a_2
quad "et"
quad
b = b_1 / b_2.
$

Alors

$
a + b
= a_1 / a_2 + b_1 / b_2
= (a_1 b_2 + b_1 a_2) / (a_2 b_2).
$

Le numérateur $a_1 b_2 + b_1 a_2$ est un entier et le dénominateur $a_2 b_2$ est un entier non nul.

Donc

$
a + b in QQ.
$

== Contre-exemple

Pour montrer qu'une proposition universelle

$
forall x in D, P(x) => Q(x)
$

est fausse, il suffit de trouver un seul élément $x in D$ tel que

$
P(x)
$

soit vraie et

$
Q(x)
$

soit fausse.

Un tel élément est appelé un *contre-exemple*.

== Preuve par cas

Pour démontrer une proposition sur un domaine $D$, on peut découper $D$ en plusieurs cas

$
D_1, D_2, dots, D_r
$

qui couvrent tout le domaine, puis démontrer le résultat séparément dans chaque cas.

Autrement dit, si tout élément de $D$ appartient à au moins un des cas et si

$
forall x in D_i, P(x) => Q(x)
$

est vraie pour chaque cas $D_i$, alors le résultat est vrai sur tout $D$.

=== Exemple — $m^3 + m$ est toujours pair

Montrons que

$
forall m in NN, m^3 + m " est pair".
$

Soit $m in NN$. On distingue deux cas.

*Cas 1 : $m$ est pair.*

Il existe $k in ZZ$ tel que

$
m = 2k.
$

Alors

$
m^3 + m
= (2k)^3 + 2k
= 8k^3 + 2k
= 2(4k^3 + k).
$

Donc $m^3 + m$ est pair.

*Cas 2 : $m$ est impair.*

Il existe $k in ZZ$ tel que

$
m = 2k + 1.
$

Alors

$
m^3 + m
= (2k + 1)^3 + (2k + 1)
$

$
= 8k^3 + 12k^2 + 6k + 1 + 2k + 1
$

$
= 8k^3 + 12k^2 + 8k + 2
$

$
= 2(4k^3 + 6k^2 + 4k + 1).
$

Donc $m^3 + m$ est également pair.

Les deux cas couvrent tous les entiers naturels. Ainsi,

$
forall m in NN, m^3 + m " est pair".
$

== Preuve indirecte par l'absurde

Pour démontrer

$
P => Q,
$

par l'absurde, on suppose simultanément

$
P
quad "et"
quad
not Q,
$

puis on montre que ces deux hypothèses conduisent à une contradiction.

Ainsi, la situation

$
P and not Q
$

est impossible, ce qui prouve $P => Q$.

=== Exemple — Si $n^2$ est pair, alors $n$ est pair

Supposons, pour obtenir une contradiction, que

$
n^2 " est pair"
$

mais que

$
n " est impair".
$

Comme $n$ est impair, il existe $k in ZZ$ tel que

$
n = 2k + 1.
$

Alors

$
n^2
= (2k + 1)^2
= 4k^2 + 4k + 1
= 2(2k^2 + 2k) + 1.
$

Donc $n^2$ est impair.

Cela contredit l'hypothèse selon laquelle $n^2$ est pair.

Par conséquent,

$
n^2 " pair" => n " pair".
$

== Théorème — Irrationalité de $sqrt(2)$

Le nombre $sqrt(2)$ est irrationnel.

=== Preuve par l'absurde

Supposons au contraire que

$
sqrt(2) in QQ.
$

On peut alors écrire

$
sqrt(2) = a / b,
$

avec $a in ZZ$, $b in ZZ$, $b != 0$, et en choisissant la fraction $a/b$ sous forme irréductible.

En élevant au carré :

$
2 = a^2 / b^2,
$

donc

$
a^2 = 2b^2.
$

Ainsi, $a^2$ est pair.

D'après le résultat précédent, si le carré d'un entier est pair, alors l'entier lui-même est pair. Donc $a$ est pair.

Il existe alors $k in ZZ$ tel que

$
a = 2k.
$

En remplaçant dans $a^2 = 2b^2$ :

$
(2k)^2 = 2b^2,
$

donc

$
4k^2 = 2b^2
$

et donc

$
b^2 = 2k^2.
$

Ainsi, $b^2$ est pair, donc $b$ est également pair.

Par conséquent, $a$ et $b$ sont tous les deux divisibles par $2$.

Cela contredit le fait que la fraction $a/b$ a été choisie irréductible.

Donc l'hypothèse

$
sqrt(2) in QQ
$

est fausse, et ainsi

$
sqrt(2) " est irrationnel".
$

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
