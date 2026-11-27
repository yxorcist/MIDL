// source-confidence: high
// source-note: TD03_continuite.pdf, exercice 12, vérifié dans Google Drive.
// source-note: photos de la seconde livraison FVR : minimum sur un compact et étude du signe du coefficient dominant.
// source-reconstruction: reprise des démonstrations manuscrites de l'étudiant (2026-11-27), sans constante +1 en Q1 ; ajout du cas constant et application de Q1 à -P en Q2.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 12 — Existence d'un extremum global

== 1. Fonction continue tendant vers $+infinity$ aux deux extrémités

Soit $f:RR -> RR$ continue telle que
$
lim_(x->-infinity) f(x)=lim_(x->+infinity) f(x)=+infinity.
$

Par les hypothèses sur les limites,
$
exists R>0, quad forall x in RR, quad abs(x)>R => f(x)>f(0).
$

Comme $f$ est continue sur le compact $[-R,R]$, par le théorème des bornes atteintes,
$
exists x_0 in [-R,R], quad m=f(x_0)=min_(x in [-R,R]) f(x).
$

Or $0 in [-R,R]$, donc $m<=f(0)$.

Ainsi,
$
abs(x)>R => f(x)>f(0)>=m.
$

Le minimum sur $[-R,R]$ est donc aussi le minimum sur $RR$ :
$
forall x in RR, quad f(x)>=f(x_0)
$
et
$
min_(x in RR) f(x)=f(x_0)=m.
$

== 2. Un polynôme réel de degré pair possède un extremum global

Soit $P in RR[X]$, de degré $2k$, avec $k in NN$ et $a_(2k)!=0$ son coefficient dominant.

Si $k=0$, $P$ est constant. Tout réel $a$ vérifie alors $P(x)=P(a)$ pour tout $x in RR$ : $P$ admet un minimum et un maximum.

Supposons désormais $k>=1$. Le polynôme $P$ est continu sur $RR$.

On sait que
$
P(x) "∼" a_(2k) x^(2k)
$
en $-infinity$ et en $+infinity$.

Comme $x^(2k)=(x^2)^k$, on a
$
lim_(x->-infinity) x^(2k)=lim_(x->+infinity) x^(2k)=+infinity.
$

Les limites de $P$ dépendent donc du signe de $a_(2k)$.

*Si $a_(2k)<0$ :*
$
lim_(x->-infinity) P(x)=lim_(x->+infinity) P(x)=-infinity.
$

On pose $Q=-P$. Ainsi, $Q$ est continue et tend vers $+infinity$ aux deux extrémités : elle vérifie les hypothèses de la question 1.

D'après Q1,
$
exists a in RR, quad forall x in RR, quad -P(x)>=-P(a).
$

Donc
$
forall x in RR, quad P(x)<=P(a).
$

Ainsi, $P$ admet un maximum global.

*Si $a_(2k)>0$ :*
$
lim_(x->-infinity) P(x)=lim_(x->+infinity) P(x)=+infinity.
$

Ainsi, $P$ vérifie les hypothèses de la question 1. D'après Q1,
$
exists a in RR, quad forall x in RR, quad P(x)>=P(a).
$

Ainsi, $P$ admet un minimum global.

Donc tout polynôme réel de degré pair admet un minimum ou un maximum global.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* TD03, exercice 12, et copies manuscrites de l'étudiant (2026-11-27) : réduction à un compact sans constante supplémentaire, puis comportement du terme dominant. Le degré nul et l'application de Q1 à $-P$ sont explicités.
]
