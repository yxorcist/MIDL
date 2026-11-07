// source-confidence: high
// source-note: TD03_continuite.pdf (UCA 2026-2027), exercice 7.
// source-note: photos 12234 (questions 1-2) et 12237 (fin 2, questions 3-4 et rappel sur la dérivée).
// source-reconstruction: transitions de calcul et justification de l'unicité explicitées à partir de l'énoncé et de la correction manuscrite.
// source-verification: f_(n+1)(a_n)=a_n^2-1>0 ; la limite des racines est 1.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 7 — Racines de $x^n-x-1$

Pour tout entier $n>=2$, on considère
$
f_n:[1,+infinity[ -> RR, quad f_n(x)=x^n-x-1.
$

== 1. Montrer que $f_n$ est strictement croissante

*Raisonnement de la copie.* Soient $1<=x<y$. Comme $n>=2$,
$
0<=x^(n-1)-1<y^(n-1)-1.
$
En multipliant par $x>=1$ puis en comparant avec $y>x$, on obtient
$
x(x^(n-1)-1)<y(y^(n-1)-1).
$
Par conséquent,
$
x^n-x-1<y^n-y-1,
$
soit $f_n(x)<f_n(y)$.

*Vérification par dérivation.* Sur $[1,+infinity[$,
$
f_n'(x)=n x^(n-1)-1>=n-1>0.
$
On retrouve que $f_n$ est strictement croissante.

== 2. Existence et unicité de $a_n>1$ tel que $f_n(a_n)=0$

La fonction $f_n$ est continue sur $[1,10]$ et
$
f_n(1)=1-1-1=-1<0.
$
D'autre part, puisque $n>=2$,
$
f_n(10)=10^n-11>=89>0.
$

Par le *théorème des valeurs intermédiaires*, il existe $a_n in ]1,10[$ tel que
$
f_n(a_n)=0
quad <=> quad
a_n^n=a_n+1.
$

Comme $f_n$ est strictement croissante, cet antécédent de $0$ est *unique*.

== 3. Montrer que $(a_n)_(n>=2)$ est décroissante

Pour $n>=2$, utilisons l'identité $a_n^n=a_n+1$ :
$
f_(n+1)(a_n)
&=a_n^(n+1)-a_n-1 \
&=a_n dot a_n^n-a_n-1 \
&=a_n(a_n+1)-a_n-1 \
&=a_n^2-1>0,
$
car $a_n>1$.

Or $f_(n+1)(a_(n+1))=0$ et $f_(n+1)$ est strictement croissante. Donc
$
a_(n+1)<a_n.
$

La suite $(a_n)_(n>=2)$ est ainsi *strictement décroissante*.

== 4. Calculer la limite de $(a_n)$

La suite est décroissante et minorée par $1$, puisque $a_n>1$. Par le théorème de convergence monotone, elle admet une limite
$
ell=lim_(n->infinity)a_n>=1.
$

*Argument de la copie.* Pour tout $n>=2$, on a $ell<=a_n$. Comme $f_n$ est croissante,
$
f_n(ell)<=f_n(a_n)=0,
$
d'où
$
ell^n-ell-1<=0
quad => quad
ell^n<=ell+1.
$

Si $ell>1$, alors $ell^n->+infinity$, ce qui contredit la majoration fixe $ell+1$. On a donc nécessairement $ell=1$ :
$
lim_(n->infinity) a_n=1
$

== Rappel de cours présent en marge

La dérivée en $x_0$ est définie, lorsqu'elle existe et est finie, par
$
f'(x_0)=lim_(x->x_0)(f(x)-f(x_0))/(x-x_0).
$
Une écriture équivalente est le développement à l'ordre 1 :
$
f(x_0+h)=f(x_0)+h f'(x_0)+o(h)
quad (h->0).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Questions 1 à 4 tirées des photos 12234 et 12237 et rapprochées de l'énoncé officiel. Le rappel final figure en marge de la photo 12237 ; les justifications intermédiaires sont explicitées.
]
