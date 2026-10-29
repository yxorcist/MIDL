// source-confidence: high
// study-validation: 2026-10-29 — TD01 ex04 question 5 vérifiée sur copie manuscrite : u_n^3 ~ A^3/n^(3alpha), u_n^2 ~ A^2/n^(2alpha) ; Riemann donne 1/3 < alpha <= 1/2 (égalités de puissances remplacées par des équivalences).
// study-validation: 2026-10-29 — TD01 ex04 question 4 vérifiée sur copie manuscrite et corrigée : quotient sin(u_n)/u_n = 1-u_n²/6+o(u_n²), DL de ln, équivalence de séries positives avec la différence télescopique des logarithmes, divergence de sum u_n².
// study-validation: 2026-10-29 — TD01 ex04 question 3 validée sur dernière copie manuscrite : preuve directe par DL de sin, équivalent u_n-u_(n+1) ~ u_n³/6, série télescopique convergente (u_n -> 0), puis équivalence des séries positives.
// study-validation: 2026-10-29 — TD01 ex04 question 2 validée sur copie manuscrite : sin(u_n) < u_n pour u_n > 0, suite décroissante et minorée par 0, théorème de convergence monotone, continuité de sin et seule limite possible ell = 0.
// study-validation: 2026-10-29 — TD01 ex04 question 1 validée sur copie manuscrite : récurrence, croissance stricte de sin sur [0, pi/2], encadrement 0 < u_(n+1) < 1 < pi/2 ; pas besoin de sin(x) < x à cette question.
// source-note: questions 1 to 5 were cross-checked against the official TD01 statement and the supplied handwritten correction.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 4

On considère $0<u_0<pi/2$ et $u_(n+1)=sin(u_n)$ pour tout $n in NN$.

== Question 1

Montrons par récurrence que $0<u_n<pi/2$.

*Initialisation.* Vraie pour $n=0$ par hypothèse.

*Hérédité.* Si $0<u_n<pi/2$, la stricte croissance de $sin$ sur $[0,pi/2]$ donne

$
0=sin(0)<u_(n+1)=sin(u_n)<sin(pi/2)=1<pi/2.
$

La propriété est donc vraie pour tout $n in NN$.

== Question 2

Comme $u_n>0$ et $sin(x)<x$ pour $x>0$, on a $u_(n+1)<u_n$.
La suite est décroissante et minorée par $0$ : par le théorème de convergence monotone, $u_n -> ell>=0$.

Par continuité de $sin$, $ell=sin(ell)$. Or $sin(x)<x$ pour $x>0$, donc la seule possibilité est $ell=0$ :

$
u_n -> 0.
$

== Question 3

Puisque $u_n -> 0$, le DL $sin(x)=x-x^3/6+o(x^3)$ donne

$
u_n-u_(n+1)
=u_n-sin(u_n)
=u_n^3/6+o(u_n^3)
~ u_n^3/6.
$

Or, par télescopage,

$
sum_(n=0)^N (u_n-u_(n+1))
=u_0-u_(N+1) -> u_0.
$

La série télescopique converge. Ses termes et $u_n^3/6$ sont positifs (question 2) ; par équivalence des séries positives,

$
sum u_n^3 " converge."
$

== Question 4

Du DL précédent et de $u_n>0$ :

$
u_(n+1)/u_n
=sin(u_n)/u_n
=1-u_n^2/6+o(u_n^2).
$

Avec $ln(1+x)=x+o(x)$ lorsque $x -> 0$ :

$
ln(u_n)-ln(u_(n+1))
=-ln(1-u_n^2/6+o(u_n^2))
~ u_n^2/6.
$

D'autre part,

$
sum_(n=0)^N (ln(u_n)-ln(u_(n+1)))
=ln(u_0)-ln(u_(N+1)) -> +infinity,
$

car $u_(N+1)->0^+$. Les différences de logarithmes sont positives puisque $u_(n+1)<u_n$.

Par équivalence des séries positives,

$
sum u_n^2 " diverge."
$

== Question 5

On admet $u_n ~ A/n^alpha$ avec $A>0$ et $alpha in RR$. Alors

$
u_n^3 ~ A^3/n^(3alpha), quad
u_n^2 ~ A^2/n^(2alpha).
$

Les constantes $A^3$ et $A^2$ sont strictement positives.

D'après la question 3, $sum u_n^3$ converge ; par Riemann,
$3alpha>1$, donc $alpha>1/3$.

D'après la question 4, $sum u_n^2$ diverge ; par Riemann,
$2alpha<=1$, donc $alpha<=1/2$.

Ainsi, le plus petit intervalle possible est

$
alpha in ]1/3,1/2].
$
