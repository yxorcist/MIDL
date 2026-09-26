// source-confidence: medium
// source-uncertainty: the official statement of question 5 is available, but its handwritten correction is missing; questions 1-4 were clear.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 4

== Question 1

On considère la suite $(u_n)_(n in NN)$ définie par

$
0 < u_0 < pi/2
$

et, pour tout $n in NN$,

$
u_(n+1) = sin(u_n).
$

Montrons par récurrence que

$
forall n in NN, quad 0 < u_n < pi/2.
$

*Initialisation.* Pour $n = 0$, la propriété est vraie par hypothèse.

*Hérédité.* Supposons que $0 < u_n < pi/2$. Comme $sin$ est strictement croissante sur $[0, pi/2]$,

$
0 = sin(0) < sin(u_n) < sin(pi/2) = 1 < pi/2.
$

Donc

$
0 < u_(n+1) < pi/2.
$

Ainsi,

$
forall n in NN, quad 0 < u_n < pi/2.
$

== Question 2

Pour tout $x > 0$, on a $sin(x) < x$. Comme $u_n > 0$,

$
u_(n+1) = sin(u_n) < u_n.
$

La suite $(u_n)$ est donc décroissante et minorée par $0$. Par le théorème de convergence monotone, elle converge vers une limite $ell >= 0$.

La fonction $sin$ étant continue,

$
ell = sin(ell).
$

Sur $[0, pi/2[$, l'unique solution est $ell = 0$. Donc

$
u_n -> 0.
$

== Question 3

Au voisinage de $0$,

$
sin(x) = x - x^3/6 + o(x^3).
$

Comme $u_n -> 0$,

$
u_(n+1) - u_n
= sin(u_n) - u_n
= -u_n^3/6 + o(u_n^3).
$

Ainsi,

$
(u_n - u_(n+1)) / (u_n^3/6) -> 1.
$

Or la série télescopique

$
sum_(n=0)^N (u_n - u_(n+1))
= u_0 - u_(N+1)
$

converge lorsque $N -> infinity$. Comme les termes sont positifs, le théorème de comparaison des séries positives donne

$
sum u_n^3
$

convergente.

== Question 4

On écrit

$
ln(u_(n+1)) - ln(u_n)
= ln((sin(u_n))/u_n).
$

Or

$
(sin(u_n))/u_n
= 1 - u_n^2/6 + o(u_n^2),
$

et $ln(1+x) = x + o(x)$ lorsque $x -> 0$. Donc

$
ln(u_(n+1)) - ln(u_n)
~
-u_n^2/6.
$

Équivalemment,

$
ln(u_n) - ln(u_(n+1))
~
u_n^2/6.
$

Pour $N in NN$,

$
sum_(n=0)^N (ln(u_n) - ln(u_(n+1)))
= ln(u_0) - ln(u_(N+1)).
$

Comme $u_(N+1) -> 0^+$,

$
ln(u_(N+1)) -> -infinity,
$

donc cette série diverge vers $+infinity$. Par comparaison des séries positives,

$
sum u_n^2
$

diverge.

== Question 5

On admet qu'il existe $A>0$ et $alpha in RR$ tels que

$
u_n ~ A/n^alpha.
$

En utilisant les questions précédentes, il faut déterminer l'intervalle le plus
petit possible auquel appartient $alpha$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction manquante.* L'énoncé est présent sur la fiche TD officielle,
  mais la correction de cette question n'apparaît pas dans les notes
  manuscrites fournies.
]
