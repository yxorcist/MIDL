// source-confidence: medium
// source-uncertainty: Sigma* / fixed-point portion was abbreviated in the handwriting; only clearly supported content was retained.

#import "../style.typ": *

= Induction sur les constructions inductives

== Principe général

Soit $X subset.eq E$ défini inductivement par :

- une base $B subset.eq X$ ;
- des règles de construction $r_i$ d'arité $m_i$ telles que, si
  $x_1, ..., x_(m_i) in X$, alors
  $
  r_i(x_1, ..., x_(m_i)) in X.
  $

Pour démontrer une propriété $P$ sur tous les éléments de $X$, les notes donnent
le principe suivant.

- *(B)* Montrer que
  $
  forall x in B, quad P(x).
  $

- *(I)* Pour chaque règle $r_i$, supposer
  $
  P(x_1), ..., P(x_(m_i))
  $
  et montrer
  $
  P(r_i(x_1, ..., x_(m_i))).
  $

On obtient alors
$
forall x in X, quad P(x).
$

L'idée est de montrer que la propriété est vraie sur la base puis qu'elle est
préservée par chaque règle de construction.

== Application aux arbres binaires complets

Soit $"ABC"$ l'ensemble des arbres binaires complets.

Pour $T in "ABC"$, on note :

- $n(T)$ le nombre de nœuds de $T$ ;
- $h(T)$ la hauteur de $T$.

Les notes énoncent :

$
n(T) = 2^(h(T)) - 1.
$

On démontre cette propriété par induction sur la construction de $T$.

=== Base

Pour l'arbre vide,

$
n(T) = 0
$

et

$
h(T) = 0.
$

Ainsi,

$
n(T) = 0 = 2^0 - 1.
$

=== Hérédité

Soit un arbre construit sous la forme

$
T = (A, a, B)
$

avec $A, B in "ABC"$ et

$
h(A) = h(B).
$

On suppose par hypothèse d'induction que

$
n(A) = 2^(h(A)) - 1
$

et

$
n(B) = 2^(h(B)) - 1.
$

Le nombre de nœuds de $T$ vérifie

$
n(T) = n(A) + n(B) + 1.
$

De plus,

$
h(T) = h(A) + 1 = h(B) + 1.
$

Comme $h(A)=h(B)$,

$
n(T)
= (2^(h(A)) - 1) + (2^(h(B)) - 1) + 1
= 2 dot 2^(h(A)) - 1
= 2^(h(A)+1) - 1
= 2^(h(T)) - 1.
$

La propriété est donc préservée par la règle de construction.

== Exemple : construction de $Sigma^*$

Les notes considèrent un alphabet $Sigma$ et l'ensemble $Sigma^*$ des mots sur
$Sigma$.

On définit inductivement un ensemble $E$ par :

- *(B)* le mot vide appartient à $E$ :
  $
  epsilon in E ;
  $

- *(I)* si $m in E$ et $a in Sigma$, alors la concaténation
  $
  a m in E.
  $

=== Validité

On montre d'abord

$
E subset.eq Sigma^*.
$

La base est valide car

$
epsilon in Sigma^*.
$

La règle préserve aussi l'appartenance à $Sigma^*$ : si $m in Sigma^*$ et
$a in Sigma$, alors la concaténation $a m$ appartient encore à $Sigma^*$.

=== Complétude

On veut ensuite montrer

$
Sigma^* subset.eq E.
$

Soit un mot

$
m = x_1 x_2 ... x_n in Sigma^*.
$

Si $n>0$, on isole sa première lettre :

$
x_1 = a
$

et on écrit

$
m = a m',
$

où

$
m' = x_2 ... x_n
$

est de longueur $n-1$.

Par induction sur la longueur du mot, on suppose $m' in E$. Comme $a in Sigma$,
la règle de construction donne alors

$
a m' in E,
$

donc

$
m in E.
$

Ainsi,

$
E = Sigma^*.
$

== Plus petit ensemble stable

Les notes rappellent enfin le principe suivant : l'ensemble obtenu par une
définition inductive est le plus petit ensemble contenant la base et stable par
les règles.

Autrement dit, si $F$ contient la base et est stable par toutes les règles de
construction, alors l'ensemble engendré est inclus dans $F$.

Cette caractérisation est notée dans les notes comme une propriété de plus petit
point fixe de la construction.
