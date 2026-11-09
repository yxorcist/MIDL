// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf, exercice 7.
// study-validation: questions 1 et 2 adaptées aux copies manuscrites validées le 2026-11-09.
// source-note: les questions 3 et 4 ci-dessous sont conservées de la version précédente, non revérifiées dans cette mise à jour.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 7 — Racines de $x^n-x-1$

Pour $n>=2$, soit

$
f_n:[1,+infinity[ -> RR, quad f_n(x)=x^n-x-1.
$

== 1. Montrer que $f_n$ est strictement croissante

Soient $x,y in [1,+infinity[$ avec $x<y$. Comme $n-1>=1$,

$
0<=x^(n-1)-1<y^(n-1)-1.
$

De plus, $0<x<y$. On obtient

$
x(x^(n-1)-1)
<=y(x^(n-1)-1)
<y(y^(n-1)-1).
$

En soustrayant $1$,

$
x^n-x-1<y^n-y-1,
$

donc $f_n(x)<f_n(y)$. Ainsi $f_n$ est strictement croissante sur $[1,+infinity[$.

== 2. Existence et unicité de $a_n$

La fonction $f_n$ est continue sur $[1,2]$ et, pour $n>=2$,

$
f_n(1)&=1-1-1=-1<0,\
f_n(2)&=2^n-3>=1>0.
$

Par le TVI,

$
exists a_n in ]1,2[, quad f_n(a_n)=0.
$

D'après Q1, $f_n$ est strictement croissante sur $[1,+infinity[$ ; cette racine est donc unique.

Pour chaque $n$ fixé, $a_n$ est l'unique réel $>1$ vérifiant

$
a_n^n-a_n-1=0
quad <=> quad
a_n^n=a_n+1.
$

Quand $n$ varie, ces réels forment la suite $(a_n)_(n>=2)$.

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
