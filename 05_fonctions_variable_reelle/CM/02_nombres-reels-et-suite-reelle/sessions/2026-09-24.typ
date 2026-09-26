#import "../../style.typ": *

// source-confidence: high

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 24/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Borne inférieure et intervalles de $RR$]
]
#line(length: 100%)
#v(0.7em)

= Caractérisation de la borne inférieure

#theorem(title: "Théorème — caractérisation de la borne inférieure.", [
  Soit $A$ une partie non vide minorée de $RR$ et soit $m in RR$.

  Les assertions suivantes sont équivalentes :

  1. $m=inf(A)$.

  2. $m$ est un minorant de $A$ et, si $m'$ est un minorant de $A$, alors

     $
     m' <= m.
     $

  3. $m$ est un minorant de $A$ et

     $
     forall epsilon > 0,
     quad exists a_epsilon in A,
     quad a_epsilon < m + epsilon.
     $

  4. $m$ est un minorant de $A$ et il existe une suite $(a_n)_(n in NN^*)$
     d'éléments de $A$ qui converge vers $m$.
])

= Exemples

#example([
  Considérons

  $
  A = {1 + 2/n : n in NN^*}.
  $

  Pour tout $n in NN^*$,

  $
  0 < 2/n <= 2,
  $

  donc

  $
  1 < 1 + 2/n <= 3.
  $

  L'ensemble $A$ est non vide, puisque

  $
  3 = 1 + 2/1 in A.
  $

  Il est majoré par $3$ et minoré par $1$. Il admet donc une borne inférieure
  et une borne supérieure.

  Comme $1$ est un minorant,

  $
  1 <= inf(A).
  $

  Comme $3$ est un majorant,

  $
  sup(A) <= 3.
  $

  Or $3 in A$ et $sup(A)$ est un majorant de $A$, donc

  $
  3 <= sup(A).
  $

  Ainsi,

  $
  sup(A)=3.
  $

  Comme $sup(A) in A$, l'ensemble $A$ possède un plus grand élément :

  $
  max(A)=3.
  $

  La suite

  $
  (1+2/n)_(n in NN^*)
  $

  est une suite d'éléments de $A$ qui converge vers $1$. D'après la
  caractérisation de la borne inférieure,

  $
  inf(A)=1.
  $

  Enfin, pour tout $n in NN^*$,

  $
  1 < 1+2/n.
  $

  Donc $1 notin A$ et $A$ ne possède pas de plus petit élément.
])

#example([
  Considérons

  $
  B = {1/n - 1/p : n in NN^*, p in NN^*}.
  $

  L'ensemble $B$ est non vide, puisque pour $n=p$,

  $
  1/n - 1/p = 0.
  $

  Pour tous $n,p in NN^*$,

  $
  0 < 1/n <= 1
  $

  et

  $
  -1 <= -1/p < 0.
  $

  Donc

  $
  -1 < 1/n - 1/p < 1.
  $

  Ainsi, $B$ est borné.

  Le nombre $-1$ est un minorant de $B$. La suite

  $
  (-1 + 1/n)_(n in NN^*)
  $

  est une suite d'éléments de $B$ obtenue en prenant $p=1$, et elle converge
  vers $-1$. D'après la caractérisation de la borne inférieure,

  $
  inf(B)=-1.
  $

  Comme, pour tous $n,p in NN^*$,

  $
  -1 < 1/n - 1/p,
  $

  on a $-1 notin B$. L'ensemble $B$ ne possède donc pas de plus petit élément.

  De même, $1$ est un majorant de $B$. La suite

  $
  (1 - 1/p)_(p in NN^*)
  $

  est une suite d'éléments de $B$ obtenue en prenant $n=1$, et elle converge
  vers $1$. D'après la caractérisation de la borne supérieure,

  $
  sup(B)=1.
  $

  Comme, pour tous $n,p in NN^*$,

  $
  1/n - 1/p < 1,
  $

  on a $1 notin B$. L'ensemble $B$ ne possède donc pas de plus grand élément.
])

= III. Intervalles de $RR$

Pour $a,b in RR$ tels que $a<b$, les intervalles de $RR$ se présentent sous
les formes suivantes.

== Intervalles bornés

$
[a,b] = {x in RR : a <= x <= b}.
$

On rencontre également

$
[a,b[, quad ]a,b], quad ]a,b[.
$

== Intervalles non bornés

À droite :

$
]a,+oo[,
quad
[a,+oo[.
$

À gauche :

$
]-oo,b[,
quad
]-oo,b].
$

Enfin,

$
RR = ]-oo,+oo[.
$

== Caractérisation des intervalles de $RR$

#proposition([
  Une partie non vide $I$ de $RR$ est un intervalle si et seulement si, pour
  tous $x,y,z in RR$,

  $
  x <= y <= z,
  quad
  x in I,
  quad
  z in I
  => y in I.
  $
])

#remark([
  En conséquence, pour tous $x,y in I$ tels que $x<=y$,

  $
  [x,y] subset I.
  $
])

#proof([
  Supposons d'abord que $I$ soit un intervalle.

  Par exemple, si

  $
  I=]a,b[
  $

  avec $a<b$, soient $x,y,z in RR$ tels que

  $
  x <= y <= z,
  quad
  x in I,
  quad
  z in I.
  $

  Comme $x in ]a,b[$,

  $
  a < x < b.
  $

  Comme $z in ]a,b[$,

  $
  a < z < b.
  $

  On déduit

  $
  a < x <= y <= z < b,
  $

  donc

  $
  y in ]a,b[.
  $

  On procède de même pour les autres types d'intervalles.

  Réciproquement, soit $I$ une partie non vide de $RR$ vérifiant la propriété
  précédente.

  *Premier cas : $I$ est borné.*

  Comme $I$ est une partie non vide bornée de $RR$, elle admet une borne
  inférieure et une borne supérieure. Posons

  $
  a=inf(I)
  quad "et" quad
  b=sup(I).
  $

  Pour tout $y in I$,

  $
  a <= y <= b,
  $

  donc

  $
  I subset [a,b].
  $

  Montrons que

  $
  ]a,b[ subset I.
  $

  Soit $y in ]a,b[$.

  Comme $y<b$, le réel $y$ n'est pas un majorant de $I$. Il existe donc
  $z in I$ tel que

  $
  y < z.
  $

  Comme $y>a$, le réel $y$ n'est pas un minorant de $I$. Il existe donc
  $x in I$ tel que

  $
  x < y.
  $

  Ainsi,

  $
  x < y < z,
  quad
  x in I,
  quad
  z in I.
  $

  Par hypothèse,

  $
  y in I.
  $

  Donc

  $
  ]a,b[ subset I subset [a,b].
  $

  On en déduit les quatre possibilités :

  $
  I=]a,b[,
  quad
  I=[a,b[,
  quad
  I=]a,b],
  quad
  I=[a,b].
  $

  *Deuxième cas : $I$ est minoré et non majoré.*

  En posant $a=inf(I)$,

  $
  I=]a,+oo[
  quad "ou" quad
  I=[a,+oo[.
  $

  *Troisième cas : $I$ est majoré et non minoré.*

  En posant $b=sup(I)$,

  $
  I=]-oo,b[
  quad "ou" quad
  I=]-oo,b].
  $

  *Quatrième cas : $I$ n'est ni majoré ni minoré.*

  Alors

  $
  I=RR.
  $
])
