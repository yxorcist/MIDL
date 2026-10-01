#import "../../style.typ": *

// source-confidence: high
// source-note: handwritten CM pages supplied for 01/10/2026. The first page repeats the final lines of the Bolzano-Weierstrass proof already stored in the 30/09 session; that duplicated passage is not repeated here.
// source-note: no separate professor source was present in the FVR CM Drive folders, so this session is transcribed from the handwritten pages only.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 01/10/2026]
  #v(0.2em)
  #text(size: 11pt)[Valeurs d'adhérence et critère de Cauchy]
]
#line(length: 100%)
#v(0.7em)

= Suite bornée avec une unique valeur d'adhérence

#proposition(title: "Corollaire de Bolzano-Weierstrass.", [
  Si une suite réelle bornée n'a qu'une seule valeur d'adhérence $a$, alors elle converge vers $a$.
])

#proof([
  Soit $(u_n)_n$ une suite réelle bornée dont $a$ est l'unique valeur d'adhérence.

  Raisonnons par l'absurde et supposons que $(u_n)_n$ ne converge pas vers $a$.

  La négation de la définition de la convergence donne

  $
  exists epsilon > 0,
  quad forall N in NN,
  quad exists n >= N,
  quad abs(u_n-a) >= epsilon.
  $

  Fixons un tel $epsilon>0$.

  Construisons par récurrence une application strictement croissante

  $
  phi:NN->NN
  $

  telle que

  $
  abs(u_(phi(n))-a) >= epsilon
  $

  pour tout $n in NN$.

  Pour $n=0$, en prenant $N=0$, il existe $k_0 in NN$ tel que

  $
  k_0>=0
  quad "et" quad
  abs(u_(k_0)-a)>=epsilon.
  $

  On pose

  $
  phi(0)=k_0.
  $

  Supposons $phi(n)$ défini.

  On applique la propriété précédente avec

  $
  N=phi(n)+1.
  $

  Il existe alors $k_(n+1)>=phi(n)+1$ tel que

  $
  abs(u_(k_(n+1))-a)>=epsilon.
  $

  On pose

  $
  phi(n+1)=k_(n+1).
  $

  Ainsi, $phi$ est strictement croissante et

  $
  abs(u_(phi(n))-a)>=epsilon
  $

  pour tout $n$.

  Comme $(u_n)_n$ est bornée, la suite extraite

  $
  (u_(phi(n)))_n
  $

  est elle aussi bornée.

  D'après le théorème de Bolzano-Weierstrass, cette suite extraite admet au moins une valeur d'adhérence. Notons-la $ell$.

  Il existe donc une application strictement croissante

  $
  psi:NN->NN
  $

  telle que

  $
  u_(phi(psi(n))) -> ell.
  $

  Or, pour tout $n$,

  $
  abs(u_(phi(psi(n)))-a)>=epsilon.
  $

  En passant à la limite,

  $
  abs(ell-a)>=epsilon>0.
  $

  Donc

  $
  ell != a.
  $

  Mais

  $
  (u_(phi(psi(n))))_n
  $

  est une suite extraite de $(u_n)_n$. Ainsi $ell$ est aussi une valeur d'adhérence de la suite initiale.

  Cela contredit l'unicité de $a$.

  Par conséquent,

  $
  u_n -> a.
  $
])

#remark([
  L'hypothèse de bornitude est essentielle.

  Considérons la suite définie par

  $
  u_n
  =
  cases(
    0 & "si " n " est pair",
    2n+1 & "si " n " est impair".
  )
  $

  Cette suite n'a qu'une seule valeur d'adhérence, $0$, mais elle diverge.

  Dans le corollaire précédent, l'hypothèse « suite bornée » est donc primordiale.
])

= Suites de Cauchy

#definition([
  Soit $(u_n)_n$ une suite réelle.

  On dit que $(u_n)_n$ est une *suite de Cauchy* si

  $
  forall epsilon>0,
  quad exists N in NN,
  quad forall p>=N,
  quad forall q>=N,
  quad abs(u_p-u_q)<epsilon.
  $
])

#remark([
  La condition

  $
  abs(u_n-u_(n+1)) -> 0
  $

  n'est pas suffisante pour conclure qu'une suite est de Cauchy.

  En effet, cette condition ne compare que deux termes consécutifs, alors que le critère de Cauchy doit comparer deux termes arbitraires $u_p$ et $u_q$ suffisamment loin dans la suite.
])

#proposition([
  Toute suite réelle convergente est une suite de Cauchy.
])

#proof([
  Supposons

  $
  u_n -> ell.
  $

  Soit $epsilon>0$.

  Par convergence, il existe $N in NN$ tel que, pour tout $n>=N$,

  $
  abs(u_n-ell)<epsilon/2.
  $

  Alors, pour tous $p>=N$ et $q>=N$,

  $
  abs(u_p-u_q)
  &=
  abs(u_p-ell+ell-u_q) \
  &<=
  abs(u_p-ell)+abs(ell-u_q) \
  &<
  epsilon/2+epsilon/2 \
  &=
  epsilon.
  $

  Ainsi, $(u_n)_n$ est une suite de Cauchy.
])

#theorem(title: "Critère de Cauchy.", [
  Toute suite réelle de Cauchy converge.
])

#proof([
  Soit $(u_n)_n$ une suite de Cauchy.

  Montrons d'abord que $(u_n)_n$ est bornée.

  Dans la définition de Cauchy, prenons

  $
  epsilon=1.
  $

  Il existe $N in NN$ tel que, pour tous $p>=N$ et $q>=N$,

  $
  abs(u_p-u_q)<1.
  $

  En particulier, en prenant $q=N$, pour tout $p>=N$,

  $
  abs(u_p-u_N)<1.
  $

  Donc

  $
  u_N-1<u_p<u_N+1.
  $

  Les termes de rang supérieur ou égal à $N$ sont donc bornés.

  Les termes

  $
  u_0,u_1,dots,u_(N-1)
  $

  sont en nombre fini. Par conséquent, l'ensemble

  $
  {u_0,u_1,dots,u_(N-1),u_N-1,u_N+1}
  $

  permet de fournir un minorant et un majorant communs à toute la suite.

  Ainsi, $(u_n)_n$ est bornée.

  D'après le théorème de Bolzano-Weierstrass, $(u_n)_n$ admet au moins une valeur d'adhérence.

  Montrons que cette valeur d'adhérence est unique.

  Soient $ell_1$ et $ell_2$ deux valeurs d'adhérence de $(u_n)_n$.

  Il existe deux applications strictement croissantes

  $
  phi_1,phi_2:NN->NN
  $

  telles que

  $
  u_(phi_1(n)) -> ell_1
  quad "et" quad
  u_(phi_2(n)) -> ell_2.
  $

  Soit $epsilon>0$.

  Comme $(u_n)_n$ est de Cauchy, il existe $N in NN$ tel que, pour tous $p>=N$ et $q>=N$,

  $
  abs(u_p-u_q)<epsilon.
  $

  Comme toute application strictement croissante $phi:NN->NN$ vérifie

  $
  phi(n)>=n,
  $

  pour tout $n>=N$,

  $
  phi_1(n)>=N
  quad "et" quad
  phi_2(n)>=N.
  $

  Donc, pour tout $n>=N$,

  $
  abs(u_(phi_1(n))-u_(phi_2(n)))<epsilon.
  $

  Ainsi,

  $
  u_(phi_1(n))-u_(phi_2(n)) -> 0.
  $

  Mais, par opérations sur les limites,

  $
  u_(phi_1(n))-u_(phi_2(n))
  ->
  ell_1-ell_2.
  $

  Par unicité de la limite,

  $
  ell_1-ell_2=0,
  $

  donc

  $
  ell_1=ell_2.
  $

  La suite $(u_n)_n$ est donc bornée et possède une unique valeur d'adhérence.

  D'après le corollaire précédent,

  $
  (u_n)_n
  $

  converge.
])
