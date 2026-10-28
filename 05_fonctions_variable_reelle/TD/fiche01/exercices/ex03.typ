// source-confidence: high
// study-validation: 2026-10-28 — TD01 ex03 question 11 vérifiée sur copie manuscrite : cas alpha>0 par DL et Riemann (seuil alpha=2), cas alpha<=0 par comparaison avec (1/ln(2)) (1/n - sin(1/n)) ; erreur initiale de coefficient dans la majoration corrigée.
// study-validation: 2026-10-28 — TD01 ex03 question 10 vérifiée sur copie manuscrite : 0 < sin(1/n) < 1/n, puissance n, majoration par 1/n² pour n >= 2, convergence par comparaison avec Riemann alpha=2.
// study-validation: 2026-10-28 — TD01 ex03 question 9 vérifiée sur copie manuscrite : comparaison 1/(n cos²(n)) >= 1/n, divergence de la série harmonique et théorème de comparaison des séries positives.
// study-validation: 2026-10-28 — TD01 ex03 question 8 vérifiée sur copie manuscrite : factorisation, DL, reste o(1/n) et équivalent -6/(5n^(2/5)), divergence par Riemann.
// study-validation: 2026-10-28 — TD01 ex03 question 7 vérifiée sur copie manuscrite : DL jusqu'à 1/n², équivalent 7/(24n²), positivité éventuelle et convergence par Riemann.
// study-validation: 2026-10-28 — TD01 ex03 question 6 vérifiée sur copie manuscrite : DL de sin en 0, u_n = pi + o(1), divergence grossière de la série.
// study-validation: 2026-10-28 — TD01 ex03 question 5 vérifiée sur copie manuscrite : DL, terme dominant, comparaison à Riemann alpha=9/8 et positivité à partir d'un certain rang.
// study-validation: 2026-10-28 — TD01 ex03 question 4 vérifiée sur copie manuscrite : comparaison à la série géométrique de raison e^(-1/4) et justification de sa convergence.
// study-validation: 2026-10-28 — TD01 ex03 question 3 vérifiée sur copie manuscrite : équivalence à 1/n², série de Riemann alpha=2 et positivité explicite.
// study-validation: 2026-10-28 — TD01 ex03 question 2 vérifiée sur copie manuscrite : équivalence avec la série harmonique et positivité explicite.
// source-note: questions 8 to 12 were rechecked against the newly supplied handwritten correction and the official TD01 statement.
// source-note: question 13 appears on the official TD sheet but was not treated in class, so no correction is expected in these notes.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Rappel — comparaison des séries positives

Pour deux suites positives $(u_n)$ et $(v_n)$, si $0 <= u_n <= v_n$ à partir d'un certain rang et si $sum v_n$ converge, alors $sum u_n$ converge (comparaison des séries positives). En particulier, cela s'applique lorsque $u_n=o(v_n)$ avec des termes positifs.

== 1.

On pose $u_n=n^4/e^n$ et $v_n=1/(sqrt(e))^n$. Par croissance comparée :

$
u_n/v_n=n^4/e^(n/2) -> 0.
$

Donc $u_n=o(v_n)$. Comme $u_n>=0$ et $v_n>0$, on a $0<=u_n<=v_n$ à partir d'un certain rang. Or $sum v_n$ est une série géométrique de raison $q=1/sqrt(e)$, avec $0<q<1$ : elle converge.

Par comparaison des séries positives, *$sum u_n$ converge.*

== 2.

On pose $u_n=n/(n^2+1)=1/(n+1/n)$ et $v_n=1/n$. On calcule :

$
u_n/v_n=1/(1+1/n^2) -> 1.
$

Ainsi $u_n ~ 1/n$. La série harmonique $sum 1/n$ diverge. Comme $u_n>0$ et $v_n>0$ pour $n>=1$, *$sum u_n$ diverge par équivalence des séries positives.*

== 3.

On pose $u_n=(n-1)/(n^3+2)$ et $v_n=1/n^2$. On obtient :

$
u_n/v_n=(1-1/n)/(1+2/n^3) -> 1.
$

Donc $u_n ~ 1/n^2$. Les termes $u_n>=0$ et $v_n>0$ pour $n>=1$. Puisque $sum 1/n^2$ converge par Riemann ($alpha=2>1$), *$sum u_n$ converge par équivalence des séries positives.*

== 4.

On pose $u_n=n^819/e^(n/2)$ et $v_n=1/e^(n/4)$. Par croissance comparée :

$
u_n/v_n=n^819/e^(n/4) -> 0.
$

Ainsi $u_n=o(v_n)$. Les deux suites étant positives, $0<=u_n<=v_n$ à partir d'un certain rang. Or $sum v_n$ est géométrique de raison $q=e^(-1/4)$, avec $0<q<1$. *Donc $sum u_n$ converge par comparaison.*

== 5.

On étudie $u_n=(sqrt(n+1) ln(n)-sqrt(n) ln(n+1))/n^(3/4)$, en notant $N_n$ son numérateur. Puisque $ln(n+1)=ln(n)+ln(1+1/n)$, on factorise :

$
N_n=sqrt(n)[(sqrt(1+1/n)-1)ln(n)-ln(1+1/n)].
$

Par DL en $0$, $sqrt(1+1/n)=1+1/(2n)+o(1/n)$ et $ln(1+1/n)=1/n-1/(2n^2)+o(1/n^2)$. Ainsi :

$
N_n=sqrt(n)[ln(n)/(2n)-1/n+1/(2n^2)+o(ln(n)/n)].
$

Comme $1/n=o(ln(n)/n)$, le terme dominant donne $N_n ~ ln(n)/(2sqrt(n))$, d'où $u_n ~ ln(n)/(2n^(5/4))$.

On choisit $v_n=1/n^(9/8)$. Alors :

$
u_n/v_n ~ ln(n)/(2n^(1/8)) -> 0
$

par croissance comparée. Comme $u_n>=0$ à partir d'un certain rang et que $sum v_n$ converge par Riemann ($9/8>1$), *$sum u_n$ converge par comparaison.*

== 6.

On pose $u_n=n sin(pi/n)$. Puisque $pi/n -> 0$, le DL de $sin$ en $0$ donne :

$
sin(pi/n)=pi/n+o(1/n), quad u_n=pi+o(1).
$

Donc $u_n -> pi != 0$. La condition nécessaire de convergence d'une série n'est pas vérifiée : *$sum u_n$ diverge grossièrement.*

== 7.

On considère $u_n=n ln(1+1/n)-cos(1/sqrt(n))$. Par DL en $0$ :

$
ln(1+x)=x-x^2/2+x^3/3+o(x^3), quad
cos(x)=1-x^2/2+x^4/24+o(x^4).
$

On en déduit :

$
n ln(1+1/n) &= 1-1/(2n)+1/(3n^2)+o(1/n^2), \
cos(1/sqrt(n)) &= 1-1/(2n)+1/(24n^2)+o(1/n^2).
$

En soustrayant, les termes constants et ceux en $1/n$ s'annulent, donc :

$
u_n=7/(24n^2)+o(1/n^2), quad u_n ~ 7/(24n^2).
$

Comme $7/24>0$, les $u_n$ sont positifs à partir d'un certain rang. Or $sum 1/n^2$ converge par Riemann ($2>1$). *Donc $sum u_n$ converge par équivalence des séries positives.*

== 8.

On considère $u_n=(n^3+2n+1)^(1/5)-(n+2)^(3/5)$. On factorise $n^(3/5)$ :

$
u_n=n^(3/5)[(1+2/n^2+1/n^3)^(1/5)-(1+2/n)^(3/5)].
$

On utilise $(1+x)^beta=1+beta x+beta(beta-1)x^2/2+o(x^2)$. Pour les deux termes :

$
(1+2/n^2+1/n^3)^(1/5) &= 1+2/(5n^2)+o(1/n^2), \
(1+2/n)^(3/5) &= 1+6/(5n)-12/(25n^2)+o(1/n^2).
$

Puisque les termes en $1/n^2$ sont $o(1/n)$, la différence dans les crochets vaut $-6/(5n)+o(1/n)$. Après multiplication par $n^(3/5)$ :

$
u_n=-6/(5n^(2/5))+o(1/n^(2/5)), quad
u_n ~ -6/(5n^(2/5)).
$

Les $u_n$ sont négatifs à partir d'un certain rang. La série $sum 6/(5n^(2/5))$ diverge par Riemann ($2/5<1$). *Par équivalence et signe constant, $sum u_n$ diverge* (vers $-infinity$).

== 9.

On considère $u_n=1/(n cos^2(n))$. Pour tout entier $n>=1$, $0<cos^2(n)<=1$. En multipliant par $n>0$, puis en prenant les inverses des deux membres strictement positifs, on obtient :

$
0<n cos^2(n)<=n
quad => quad
u_n=1/(n cos^2(n))>=1/n.
$

Or $sum 1/n$ est la série harmonique divergente. *Par comparaison des séries positives, $sum u_n$ diverge.*

== 10.

On considère $u_n=(sin(1/n))^n$. Pour $n>=1$, on a $0<1/n<=1<pi$ ; ainsi $1/n in ]0,pi[$, et $sin(1/n)>0$. D'autre part, l'inégalité $sin(x)<x$ pour $x>0$ donne :

$
0<sin(1/n)<1/n<=1.
$

On élève cet encadrement à la puissance entière $n$, ce qui conserve les inégalités car les membres sont positifs :

$
0<u_n=(sin(1/n))^n<(1/n)^n<=1.
$

Pour $n>=2$, on sait que $n^n>=n^2$, donc $(1/n)^n<=1/n^2$. Ainsi :

$
0<u_n<(1/n)^n<=1/n^2 quad (n>=2).
$

La série $sum_(n>=2) 1/n^2$ converge par Riemann ($alpha=2>1$). Le terme $n=1$ n'affecte pas la nature de la série. *Par comparaison des séries à termes positifs, $sum u_n$ converge.*

== 11.

On considère, pour $alpha in RR$, $u_n=(1/n-sin(1/n))/ln(1+1/n^alpha)$. Le DL $sin(x)=x-x^3/6+o(x^3)$ donne :

$
1/n-sin(1/n)=1/(6n^3)+o(1/n^3).
$

Le numérateur et le dénominateur sont positifs pour $n>=1$.

=== Cas $alpha>0$

Puisque $1/n^alpha -> 0$, on peut utiliser $ln(1+x)=x+o(x)$ ; donc $ln(1+1/n^alpha) ~ 1/n^alpha$. Par quotient :

$
u_n ~ (1/(6n^3))/(1/n^alpha)=1/(6n^(3-alpha)).
$

La série de Riemann associée a pour exposant $p=3-alpha$. Elle converge si $3-alpha>1$, c'est-à-dire $alpha<2$, et diverge si $alpha>=2$. *Ainsi, pour $alpha>0$ : convergence si $0<alpha<2$, divergence si $alpha>=2$.*

=== Cas $alpha<=0$

Pour tout $n>=1$, $1/n^alpha>=1$. Par croissance du logarithme, $ln(1+1/n^alpha)>=ln(2)>0$. En prenant les inverses puis en multipliant par le numérateur positif :

$
0<=u_n<=(1/ln(2))(1/n-sin(1/n)).
$

Or $1/n-sin(1/n) ~ 1/(6n^3)$ ; la série de ce terme général converge par Riemann ($3>1$). *Par comparaison des séries positives, $sum u_n$ converge pour $alpha<=0$.*

Finalement, *$sum u_n$ converge si $alpha<2$ et diverge si $alpha>=2$.*

== 12.

On considère $u_n=e-(1+1/n)^n$. On écrit $(1+1/n)^n=exp(n ln(1+1/n))$. Avec $ln(1+x)=x-x^2/2+o(x^2)$, on obtient :

$
n ln(1+1/n)=1-1/(2n)+o(1/n).
$

Puis le DL $exp(x)=1+x+o(x)$ conduit à :

$
(1+1/n)^n=e exp(-1/(2n)+o(1/n))
=e(1-1/(2n)+o(1/n)).
$

Donc $u_n=e/(2n)+o(1/n)$ et $u_n ~ e/(2n)$, de signe positif à partir d'un certain rang. Comme $sum 1/n$ diverge, *$sum u_n$ diverge par équivalence des séries positives.*

== 13.

Le sujet officiel donne, pour $alpha in RR$ :

$
u_n=sqrt(n^4+2n+1)-sqrt(n^4+alpha n).
$

Il faut déterminer la nature de $sum u_n$ selon $alpha$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Non traité en classe.* La question 13 figure sur la fiche officielle,
  mais n'a pas été faite en séance.
]
