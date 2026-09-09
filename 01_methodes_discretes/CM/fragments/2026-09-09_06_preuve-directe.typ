#import "../style.typ": *

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

