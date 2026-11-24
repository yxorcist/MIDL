// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf, exercice 7.
// source-note: rédaction suivant la copie manuscrite de l'étudiant (deux pages, 2026-11-24).
// study-validation: conservation de la méthode personnelle ; ajouts minimaux pour la rigueur (continuité, unicité, théorème de convergence monotone).
// source-note: rappel du professeur en marge conservé à la fin.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 7 — Racines de $x^n-x-1$

Pour $n>=2$, on considère
$
f_n:[1,+infinity[ -> RR, quad f_n(x)=x^n-x-1.
$

== 1. Montrer que $f_n$ est strictement croissante

Soient $x,y in [1,+infinity[$ tels que $x<y$, et soit $n>=2$.

Comme $n-1>=1$, on a
$
x<y
quad => quad x^(n-1)<y^(n-1)
quad => quad x^(n-1)-1<y^(n-1)-1.
$

Or $x>=1$, donc $x^(n-1)-1>=0$, et $0<x<y$. On peut alors écrire
$
x(x^(n-1)-1)
<=y(x^(n-1)-1)
<y(y^(n-1)-1).
$

En retranchant $1$ de chaque côté :
$
x^n-x-1<y^n-y-1,
$
soit $f_n(x)<f_n(y)$.

Donc $f_n$ est *strictement croissante* sur $[1,+infinity[$.

== 2. Existence et unicité de $a_n$

On calcule :
$
f_n(1)&=1^n-1-1=-1<0,\
f_n(2)&=2^n-2-1=2^n-3>=1>0
quad "pour" n>=2.
$

Comme $f_n$ est continue sur $[1,2]$ (fonction polynomiale), on a $f_n(1)<0$ et $f_n(2)>0$.

Par le *théorème des valeurs intermédiaires* (TVI),
$
exists a_n in ]1,2[, quad f_n(a_n)=0.
$

D'après la question 1, $f_n$ est strictement croissante : ce zéro est *unique*.

On obtient donc, pour chaque $n>=2$, un unique $a_n>1$ tel que
$
f_n(a_n)=0
quad <=> quad
a_n^n-a_n-1=0
quad <=> quad
a_n^n=a_n+1.
$

== 3. Montrer que $(a_n)_(n>=2)$ est décroissante

On sait, d'après la question 2, que $a_n^n=a_n+1$.

On calcule :
$
f_(n+1)(a_n)
&=a_n^(n+1)-a_n-1\
&=a_n dot a_n^n-a_n-1\
&=a_n(a_n+1)-a_n-1\
&=a_n^2-1>0,
$
car $a_n>1$.

Or
$
f_(n+1)(a_(n+1))=0<f_(n+1)(a_n).
$

Comme $f_(n+1)$ est strictement croissante (question 1), on en déduit
$
a_(n+1)<a_n.
$

Donc la suite $(a_n)_(n>=2)$ est *strictement décroissante*.

== 4. Calculer la limite de $(a_n)$

La suite $(a_n)$ est décroissante (question 3) et minorée par $1$ car $a_n>1$ (question 2).

Par le *théorème de convergence monotone*, toute suite réelle décroissante et minorée converge. On peut donc poser
$
ell=lim_(n->+infinity)a_n,
quad "avec" ell>=1.
$

Pour tout $n>=2$, on a $ell<=a_n$. Comme $f_n$ est croissante,
$
f_n(ell)<=f_n(a_n)=0,
$
d'où
$
ell^n-ell-1<=0
quad => quad
ell^n<=ell+1.
$

La limite $ell$ est un réel fini. Si $ell>1$, alors $ell^n->+infinity$ lorsque $n->+infinity$, alors que $ell+1$ est un nombre fixe et fini. Cela contredit $ell^n<=ell+1$ pour tout $n>=2$.

Donc $ell$ ne peut pas être strictement supérieur à $1$. Or $ell>=1$. Ainsi,
$
ell=1,
quad "c'est-à-dire" quad
lim_(n->+infinity)a_n=1.
$

== Rappel de cours présent en marge (professeur)

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
  *Provenance.* Démonstration rédigée selon la copie manuscrite de l'étudiant (questions 1 à 4). Les seules précisions ajoutées concernent la continuité, l'unicité, la justification des inégalités et le théorème de convergence monotone. Le rappel de cours noté en marge par le professeur est conservé.
]
