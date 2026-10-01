#import "../../style.typ": *

// source-confidence: high
// source-note: handwritten CM pages supplied for 30/09/2026 cover the definition of extracted sequences, adherence values and Bolzano-Weierstrass.
// source-note: subject classification cross-checked against the existing FVR chapter structure; the material is FVR, not linear algebra.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 30/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Suites extraites, valeurs d'adhérence et théorème de Bolzano-Weierstrass]
]
#line(length: 100%)
#v(0.7em)

= Suites extraites

#definition([
  Soit $(u_n)_n$ une suite réelle et soit

  $
  phi:NN->NN
  $

  une application strictement croissante, c'est-à-dire

  $
  phi(n+1)>phi(n)
  $

  pour tout $n in NN$.

  La suite $(x_n)_(n in NN)$ définie par

  $
  x_n=u_(phi(n))
  $

  est appelée *suite extraite* ou *sous-suite* de $(u_n)_n$.

  On la note

  $
  (u_(phi(n)))_(n in NN).
  $
])

#remark([
  On ne prend pas tous les termes de la suite initiale, mais on en conserve une infinité.
])

#example([
  Les applications

  $
  phi(n)=n+1,
  quad
  phi_1(n)=2n,
  quad
  phi_2(n)=2n+1
  $

  sont strictement croissantes. Ainsi,

  $
  (u_(n+1))_n,
  quad
  (u_(2n))_n,
  quad
  (u_(2n+1))_n
  $

  sont des suites extraites de $(u_n)_n$.

  De même,

  $
  phi(n)=n^2
  $

  définit la suite extraite

  $
  (u_(n^2))_n.
  $

  En revanche,

  $
  phi(n)=n^2-n
  $

  n'est pas strictement croissante sur $NN$ puisque

  $
  phi(0)=phi(1)=0.
  $

  La suite

  $
  (u_(n^2-n))_n
  $

  n'est donc pas une suite extraite au sens de la définition précédente.
])

#remark([
  Si

  $
  phi:NN->NN
  $

  est strictement croissante, alors

  $
  phi(n)>=n
  $

  pour tout $n in NN$.

  En effet, $phi(0)>=0$. Si $phi(n)>=n$, alors, comme $phi$ est strictement croissante et à valeurs entières,

  $
  phi(n+1)>phi(n)>=n,
  $

  donc

  $
  phi(n+1)>=n+1.
  $
])

#remark([
  Si

  $
  psi:NN->NN
  $

  est strictement croissante, toute suite extraite d'une suite extraite

  $
  (u_(psi(n)))_n
  $

  est encore une suite extraite de $(u_n)_n$.

  En effet, une nouvelle extraction par une application strictement croissante $phi$ donne

  $
  u_(psi(phi(n))),
  $

  et l'application

  $
  psi compose phi
  $

  est strictement croissante.
])

== Propriétés

#proposition([
  Soit $(u_n)_n$ une suite réelle convergeant vers $ell in RR$.

  Alors toute suite extraite de $(u_n)_n$ converge également vers $ell$.
])

#proof([
  Soit

  $
  phi:NN->NN
  $

  strictement croissante.

  On veut montrer que

  $
  u_(phi(n)) -> ell.
  $

  Soit $epsilon>0$.

  Comme

  $
  u_n -> ell,
  $

  il existe $N in NN$ tel que, pour tout $n>=N$,

  $
  abs(u_n-ell)<epsilon.
  $

  Comme $phi$ est strictement croissante, on a

  $
  phi(n)>=n
  $

  pour tout $n in NN$.

  Ainsi, pour tout $n>=N$,

  $
  phi(n)>=n>=N,
  $

  donc

  $
  abs(u_(phi(n))-ell)<epsilon.
  $

  Par conséquent,

  $
  u_(phi(n))->ell.
  $
])

#remark([
  Si deux suites extraites d'une même suite ne convergent pas vers la même limite,
  alors la suite initiale diverge.
])

#example([
  Considérons

  $
  u_n=(-1)^n.
  $

  Pour tout $n in NN$,

  $
  u_(2n)=1
  quad "et" quad
  u_(2n+1)=-1.
  $

  Ainsi,

  $
  u_(2n)->1
  quad "et" quad
  u_(2n+1)->-1.
  $

  Les deux suites extraites ont des limites différentes, donc $(u_n)_n$ diverge.
])

#proposition([
  La suite $(u_n)_n$ converge vers $ell$ si et seulement si les deux suites extraites

  $
  (u_(2n))_n
  quad "et" quad
  (u_(2n+1))_n
  $

  convergent toutes les deux vers $ell$.
])

#remark([
  La démonstration du sens réciproque est laissée comme exercice de TD dans les notes.
])

= Valeurs d'adhérence

#definition([
  Soit $(u_n)_n$ une suite réelle.

  On dit que $a in RR$ est une *valeur d'adhérence* de $(u_n)_n$ s'il existe une suite extraite de $(u_n)_n$ qui converge vers $a$.
])

#example([
  Pour la suite

  $
  u_n=(-1)^n,
  $

  les réels

  $
  -1
  quad "et" quad
  1
  $

  sont des valeurs d'adhérence.
])

#proposition([
  Soit $(u_n)_n$ une suite réelle et $a in RR$.

  Alors $a$ est une valeur d'adhérence de $(u_n)_n$ si et seulement si, pour tout $epsilon>0$, l'ensemble

  $
  {n in NN | u_n in ]a-epsilon,a+epsilon[}
  $

  est infini.
])

#remark([
  Un ensemble $A subset.eq NN$ est infini si et seulement si

  $
  forall N in NN,
  quad exists K>N,
  quad K in A.
  $
])

#proof([
  *Sens direct.*

  Supposons que $a$ soit une valeur d'adhérence de $(u_n)_n$.

  Il existe donc une application strictement croissante

  $
  phi:NN->NN
  $

  telle que

  $
  u_(phi(n))->a.
  $

  Soit $epsilon>0$.

  Il existe $N in NN$ tel que, pour tout $n>=N$,

  $
  abs(u_(phi(n))-a)<epsilon.
  $

  Donc

  $
  {phi(n) | n>=N}
  subset.eq
  {k in NN | u_k in ]a-epsilon,a+epsilon[}.
  $

  Comme $phi$ est strictement croissante, l'ensemble

  $
  {phi(n) | n>=N}
  $

  est infini.

  Par conséquent,

  $
  {k in NN | u_k in ]a-epsilon,a+epsilon[}
  $

  est infini.

  *Sens réciproque.*

  Supposons que, pour tout $epsilon>0$, l'ensemble

  $
  {k in NN | u_k in ]a-epsilon,a+epsilon[}
  $

  soit infini.

  Construisons par récurrence une application strictement croissante

  $
  phi:NN->NN
  $

  telle que, pour tout $n>=1$,

  $
  abs(u_(phi(n))-a)<1/n.
  $

  On pose d'abord

  $
  phi(0)=0.
  $

  Pour $n=1$, on prend $epsilon=1$.

  Par hypothèse, il existe $K>0$ tel que

  $
  abs(u_K-a)<1.
  $

  On pose

  $
  phi(1)=K.
  $

  Supposons maintenant $phi(n)$ défini pour un certain $n>=1$.

  On prend

  $
  epsilon=1/(n+1).
  $

  Comme l'ensemble correspondant est infini, il existe

  $
  K>phi(n)
  $

  tel que

  $
  abs(u_K-a)<1/(n+1).
  $

  On pose

  $
  phi(n+1)=K.
  $

  Ainsi $phi$ est strictement croissante et

  $
  abs(u_(phi(n))-a)<1/n
  $

  pour tout $n>=1$.

  Donc

  $
  u_(phi(n))->a.
  $

  Ainsi, $a$ est une valeur d'adhérence de $(u_n)_n$.
])

= Théorème de Bolzano-Weierstrass

#theorem(title: "Théorème de Bolzano-Weierstrass.", [
  Toute suite réelle bornée admet au moins une valeur d'adhérence.

  Autrement dit, toute suite réelle bornée possède au moins une suite extraite convergente.
])

#proof([
  Soit $(u_n)_n$ une suite réelle bornée.

  Il existe donc deux réels $a_0$ et $b_0$ tels que, pour tout $n in NN$,

  $
  a_0<=u_n<=b_0.
  $

  Ainsi, l'intervalle

  $
  [a_0,b_0]
  $

  contient une infinité de termes de la suite.

  On procède par dichotomie.

  On coupe l'intervalle $[a_0,b_0]$ en deux intervalles :

  $
  [a_0,(a_0+b_0)/2]
  quad "et" quad
  [(a_0+b_0)/2,b_0].
  $

  Au moins l'un des deux contient une infinité de termes de la suite.

  - Si c'est le premier, on pose

    $
    a_1=a_0,
    quad
    b_1=(a_0+b_0)/2.
    $

  - Si c'est le second, on pose

    $
    a_1=(a_0+b_0)/2,
    quad
    b_1=b_0.
    $

  On recommence le même procédé avec $[a_1,b_1]$, puis avec l'intervalle obtenu, et ainsi de suite.

  On construit ainsi deux suites $(a_n)_n$ et $(b_n)_n$ telles que :

  - $(a_n)_n$ est croissante ;
  - $(b_n)_n$ est décroissante ;
  - pour tout $n$,

    $
    a_n<=b_n;
    $

  - chaque intervalle

    $
    [a_n,b_n]
    $

    contient une infinité de termes de $(u_n)_n$ ;
  - et

    $
    b_n-a_n=(b_0-a_0)/2^n.
    $

  Par conséquent,

  $
  b_n-a_n->0.
  $

  Les suites $(a_n)_n$ et $(b_n)_n$ sont donc adjacentes.

  Elles convergent vers une même limite, notée $ell$ :

  $
  a_n->ell
  quad "et" quad
  b_n->ell.
  $

  Montrons que $ell$ est une valeur d'adhérence de $(u_n)_n$.

  Soit $epsilon>0$.

  Comme

  $
  a_n->ell
  quad "et" quad
  b_n->ell,
  $

  il existe $N in NN$ tel que, pour tout $n>=N$,

  $
  ell-epsilon<a_n
  quad "et" quad
  b_n<ell+epsilon.
  $

  Ainsi,

  $
  [a_n,b_n]
  subset.eq
  ]ell-epsilon,ell+epsilon[
  $

  pour tout $n>=N$.

  Or $[a_n,b_n]$ contient une infinité de termes de la suite.

  Donc l'ensemble

  $
  {k in NN | u_k in ]ell-epsilon,ell+epsilon[}
  $

  est infini.

  D'après la caractérisation précédente, $ell$ est une valeur d'adhérence de $(u_n)_n$.
])
