#import "../../style.typ": *

// source-confidence: medium
// source-uncertainty: the raw note omits the explicit inequality in the definition of an increasing sequence; it is reconstructed symmetrically from the stated decreasing-sequence definition.
// source-uncertainty: several malformed symbols in the density proof are normalized only where the surrounding derivation determines the intended expression.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 25/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Propriété d'Archimède, densité et suites réelles]
]
#line(length: 100%)
#v(0.7em)

= Compléments sur les nombres réels

== Propriété d'Archimède

#proposition(title: "Propriété d'Archimède.", [
  L'ensemble $RR$ vérifie

  $
  forall epsilon > 0,
  quad forall A > 0,
  quad exists n in NN^*,
  quad n epsilon > A.
  $
])

#proof([
  Soient $epsilon > 0$ et $A > 0$.

  Raisonnons par l'absurde et supposons que

  $
  forall n in NN^*,
  quad n epsilon <= A.
  $

  Considérons

  $
  B = {n epsilon : n in NN^*}.
  $

  L'ensemble $B$ est une partie non vide et majorée de $RR$. Il admet donc une borne supérieure. Posons

  $
  M = sup(B).
  $

  D'après la caractérisation de la borne supérieure, il existe $n in NN^*$ tel que

  $
  M - epsilon < n epsilon.
  $

  Ainsi,

  $
  M < (n+1) epsilon.
  $

  Or $M$ est un majorant de $B$ et $(n+1)epsilon in B$, ce qui est contradictoire.

  La propriété est donc démontrée.
])

== Densité de $QQ$ et de $RR without QQ$ dans $RR$

#proposition([
  Tout intervalle ouvert non vide de $RR$ contient un rationnel :

  $
  forall a,b in RR,
  quad a < b
  => exists q in QQ,
  quad a < q < b.
  $

  On dit que $QQ$ est dense dans $RR$.

  Tout intervalle ouvert non vide de $RR$ contient également un irrationnel.

  On dit que $RR without QQ$ est dense dans $RR$.
])

#proof([
  Soient $a,b in RR$ tels que $a<b$ et posons

  $
  epsilon = b-a > 0.
  $

  Par la propriété d'Archimède appliquée avec $A=1$, il existe $n in NN^*$ tel que

  $
  n epsilon > 1.
  $

  Donc

  $
  1/n < epsilon.
  $

  Posons

  $
  p = floor(n a)+1.
  $

  Par définition de la partie entière,

  $
  floor(n a) <= n a < floor(n a)+1.
  $

  Comme $p=floor(n a)+1$, on obtient

  $
  p-1 <= n a < p.
  $

  Ainsi,

  $
  a < p/n <= a+1/n < a+epsilon=b.
  $

  Comme $p in ZZ$ et $n in NN^*$,

  $
  p/n in QQ.
  $

  Il existe donc un rationnel strictement compris entre $a$ et $b$.

  Pour obtenir un irrationnel, on applique ce premier résultat à l'intervalle

  $
  ]a-sqrt(2), b-sqrt(2)[.
  $

  Il existe alors $q in QQ$ tel que

  $
  a-sqrt(2) < q < b-sqrt(2).
  $

  Donc

  $
  a < q+sqrt(2) < b.
  $

  Or

  $
  q+sqrt(2) in RR without QQ.
  $

  En effet, si $q+sqrt(2)=r$ avec $r in QQ$, alors

  $
  sqrt(2)=r-q in QQ,
  $

  ce qui est impossible.
])

#remark([
  Pour tout $x in RR$, $floor(x)$ est l'unique entier relatif vérifiant

  $
  floor(x) <= x < floor(x)+1.
  $
])

#proposition(title: "Corollaire.", [
  Soit $x in RR$.

  Il existe une suite $(q_n)_n$ de nombres rationnels qui converge vers $x$.
])

#proof([
  Pour tout $n in NN^*$, la densité de $QQ$ dans $RR$ donne un rationnel $q_n$ tel que

  $
  x-1/n < q_n < x.
  $

  Comme

  $
  x-1/n -> x,
  $

  on obtient par encadrement

  $
  q_n -> x.
  $
])

= III. Intervalles de $RR$

= IV. Suites réelles

== Définitions de convergence et divergence

#definition([
  Une suite de nombres réels est une application

  $
  NN -> RR.
  $

  On la note notamment

  $
  (u_n)_(n in NN),
  quad
  (u_n)_(n>=0)
  quad "ou" quad
  (u_n)_n.
  $
])

#definition([
  On dit que la suite $(u_n)_n$ converge vers $ell in RR$ si

  $
  forall epsilon > 0,
  quad exists N in NN,
  quad forall n in NN,
  quad
  n >= N => abs(u_n-ell) < epsilon.
  $

  On dit que $(u_n)_n$ converge s'il existe $ell in RR$ vers lequel elle converge.

  Elle diverge si elle ne converge pas.
])

#definition([
  On dit que $(u_n)_n$ tend vers $+oo$ si

  $
  forall A in RR,
  quad exists N in NN,
  quad forall n in NN,
  quad
  n >= N => u_n > A.
  $

  On dit que $(u_n)_n$ tend vers $-oo$ si

  $
  forall B in RR,
  quad exists N in NN,
  quad forall n in NN,
  quad
  n >= N => u_n < B.
  $
])

== Propriétés de base

#proposition([
  Si une suite converge, sa limite est unique.
])

#proposition([
  L'ensemble des suites réelles convergentes est un espace vectoriel.
])

#proposition([
  Soient $(u_n)_n$ et $(v_n)_n$ deux suites telles que

  $
  u_n -> ell
  quad "et" quad
  v_n -> ell'.
  $

  Si

  $
  u_n <= v_n
  $

  pour tout $n in NN$, alors

  $
  ell <= ell'.
  $
])

#theorem(title: "Théorème d'encadrement.", [
  Soient $(u_n)_n$, $(v_n)_n$ et $(w_n)_n$ trois suites telles que

  $
  u_n <= v_n <= w_n
  $

  pour tout $n in NN$.

  Si $(u_n)_n$ et $(w_n)_n$ convergent vers la même limite $ell in RR$, alors $(v_n)_n$ converge également vers $ell$.
])

== Suites bornées

#definition([
  Une suite $(u_n)_n$ est dite :

  - *majorée* s'il existe $M in RR$ tel que, pour tout $n in NN$,

    $
    u_n <= M;
    $

  - *minorée* s'il existe $m in RR$ tel que, pour tout $n in NN$,

    $
    m <= u_n.
    $
])

#proposition([
  - Toute suite convergente est bornée.
  - Toute suite tendant vers $+oo$ est minorée.
  - Toute suite tendant vers $-oo$ est majorée.
])

== Suites monotones

#definition([
  On dit que la suite $(u_n)_n$ est :

  - *croissante* si, pour tout $n in NN$,

    $
    u_(n+1) >= u_n;
    $

  - *décroissante* si, pour tout $n in NN$,

    $
    u_(n+1) <= u_n;
    $

  - *monotone* si elle est croissante ou décroissante.
])

#theorem(title: "Théorème de convergence des suites monotones.", [
  - Toute suite réelle croissante et majorée converge.
  - Toute suite réelle décroissante et minorée converge.
])

#proof([
  Soit $(u_n)_n$ une suite réelle croissante et majorée.

  Considérons

  $
  A = {u_n : n in NN}.
  $

  L'ensemble $A$ est non vide puisque $u_0 in A$, et il est majoré. Il admet donc une borne supérieure.

  Posons

  $
  ell = sup(A).
  $

  Montrons que

  $
  u_n -> ell.
  $

  Soit $epsilon>0$.

  D'après la caractérisation de la borne supérieure, il existe $N in NN$ tel que

  $
  ell-epsilon < u_N.
  $

  Comme $(u_n)_n$ est croissante, pour tout $n>=N$,

  $
  u_n >= u_N > ell-epsilon.
  $

  Comme $ell$ est un majorant de $A$,

  $
  u_n <= ell.
  $

  Ainsi, pour tout $n>=N$,

  $
  ell-epsilon < u_n <= ell,
  $

  donc

  $
  abs(u_n-ell) < epsilon.
  $

  La suite $(u_n)_n$ converge donc vers $ell$.

  Pour le second point, il suffit d'appliquer le premier à la suite $(-u_n)_n$, qui est croissante et majorée.
])

#proposition([
  - Toute suite croissante non majorée tend vers $+oo$.
  - Toute suite décroissante non minorée tend vers $-oo$.
])

== Suites adjacentes

#definition([
  Deux suites $(u_n)_n$ et $(v_n)_n$ sont dites *adjacentes* si :

  - l'une des deux suites est croissante ;
  - l'autre est décroissante ;
  - la suite $(u_n-v_n)_n$ tend vers $0$.
])

#theorem([
  Si deux suites sont adjacentes, elles sont convergentes et ont la même limite.
])

== Suites extraites

#definition([
  Soit $(u_n)_n$ une suite réelle et soit

  $
  phi : NN -> NN
  $

  une application strictement croissante, c'est-à-dire telle que

  $
  phi(n+1) > phi(n)
  $

  pour tout $n in NN$.

  La suite $(x_n)_(n in NN)$ définie par

  $
  x_n = u_(phi(n))
  $

  est appelée *suite extraite* ou *sous-suite* de $(u_n)_n$.

  On la note

  $
  (u_(phi(n)))_(n in NN).
  $
])

#remark([
  L'idée est de ne pas prendre tous les termes de la suite initiale, mais d'en conserver une infinité.
])

#example([
  Pour

  $
  phi(n)=n+1,
  $

  la suite

  $
  (u_(n+1))_(n in NN)
  $

  est une suite extraite de $(u_n)_n$.
])

#example([
  Pour

  $
  phi_1(n)=2n
  quad "et" quad
  phi_2(n)=2n+1,
  $

  les suites

  $
  (u_(2n))_(n in NN)
  quad "et" quad
  (u_(2n+1))_(n in NN)
  $

  sont deux sous-suites de $(u_n)_n$.
])

#example([
  Pour

  $
  phi(n)=n^2,
  $

  la suite

  $
  (u_(n^2))_(n in NN)
  $

  est une suite extraite de $(u_n)_n$.
])

#example([
  L'application

  $
  phi(n)=n^2-n
  $

  n'est pas strictement croissante sur $NN$.

  La suite

  $
  (u_(n^2-n))_(n in NN)
  $

  n'est donc pas une suite extraite de $(u_n)_n$ au sens de la définition précédente.
])
