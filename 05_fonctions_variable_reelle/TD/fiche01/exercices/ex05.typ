// source-confidence: medium
// source-uncertainty: the complete exercise statement and question numbering are not visible in the supplied photograph; only the legible correction is transcribed.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

== Une condition insuffisante pour la convergence d'une suite

La condition

$
u_(n+1)-u_n -> 0
$

n'implique pas nécessairement que la suite $(u_n)_n$ converge.

#example([
  Considérons la suite harmonique

  $
  H_n = sum_(k=1)^n 1/k.
  $

  On a

  $
  H_(n+1)-H_n = 1/(n+1) -> 0,
  $

  tandis que

  $
  H_n -> +oo.
  $

  Ainsi, le fait que deux termes consécutifs deviennent arbitrairement proches
  ne suffit pas pour assurer la convergence de la suite.
])

== Conséquences lorsque $sum ln(u_n)$ converge

La correction considère une suite positive $(u_n)_n$ telle que

$
sum ln(u_n)
$

converge.

Comme le terme général d'une série convergente tend vers $0$,

$
ln(u_n) -> 0.
$

Par conséquent,

$
u_n -> 1.
$

=== Série $sum u_n$

Comme

$
u_n -> 1 != 0,
$

la condition nécessaire de convergence d'une série n'est pas vérifiée. Donc

$
sum u_n
$

diverge.

=== Série $sum e^(-n) u_n$

Comme $(u_n)_n$ converge vers $1$, elle est bornée et positive à partir d'un
certain rang. Il existe donc $M>0$ tel que, à partir d'un certain rang,

$
0 < e^(-n) u_n <= M e^(-n).
$

La série géométrique

$
sum e^(-n)
$

converge. Par comparaison des séries positives,

$
sum e^(-n) u_n
$

converge.

=== Série $sum u_n/n$

Puisque

$
u_n -> 1,
$

on a

$
u_n/n ~ 1/n.
$

La série harmonique diverge, donc

$
sum u_n/n
$

diverge.

=== Série télescopique $sum (u_(n+1)-u_n)$

Pour $N>=0$,

$
sum_(n=0)^N (u_(n+1)-u_n)
=
u_(N+1)-u_0.
$

Comme $(u_n)_n$ converge vers $1$, les sommes partielles convergent. Ainsi,

$
sum (u_(n+1)-u_n)
$

est une série télescopique convergente.
