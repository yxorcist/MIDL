// source-confidence: high
// source-note: TD03_continuite.pdf, exercice 12, vérifié dans Google Drive.
// source-note: photos de la seconde livraison FVR : minimum sur un compact et étude du signe du coefficient dominant.
// source-reconstruction: choix explicite du segment compact et cas du polynôme constant.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 12 — Existence d'un extremum global

== 1. Fonction continue tendant vers $+infinity$ aux deux extrémités

Soit $f:RR -> RR$ continue avec
$
lim_(x->-infinity)f(x)=+infinity,
quad
lim_(x->+infinity)f(x)=+infinity.
$

On veut montrer que $f$ admet un *minimum sur $RR$*.

Par les deux hypothèses sur les limites, il existe $R>0$ tel que
$
abs(x)>=R => f(x)>f(0)+1.
$

Sur le compact $[-R,R]$, la fonction $f$ est continue, donc le *théorème des bornes atteintes* assure l'existence d'un $x_0 in [-R,R]$ tel que
$
m=f(x_0)=min_(x in [-R,R])f(x).
$

Comme $0 in [-R,R]$, on a $m<=f(0)$. Par conséquent, pour tout réel $x$ hors de $[-R,R]$,
$
f(x)>f(0)+1>m.
$

À l'intérieur de $[-R,R]$, on a par définition $f(x)>=m$. Ainsi
$
forall x in RR, quad f(x)>=f(x_0).
$

*Conclusion :* $f$ atteint son minimum global en $x_0$.

== 2. Un polynôme réel de degré pair possède un extremum global

Soit $P$ de degré pair $d$ et de coefficient dominant non nul $a_d$.

Si $d=0$, le polynôme est constant : tout réel est à la fois un point de minimum et de maximum.

Supposons $d>=2$. On a
$
P(x) sim a_d x^d quad (x->+-infinity).
$

Comme $d$ est pair, $x^d->+infinity$ quand $x->-infinity$ *et* quand $x->+infinity$.

- Si $a_d>0$, alors $P(x)->+infinity$ aux deux extrémités. La question 1 montre qu'il existe $a in RR$ tel que $forall x in RR, P(x)>=P(a)$.
- Si $a_d<0$, le polynôme $Q=-P$ possède un coefficient dominant positif. La question 1 appliquée à $Q$ fournit $a in RR$ tel que $-P(x)>=-P(a)$, donc $forall x in RR, P(x)<=P(a)$.

*Conclusion :* tout polynôme réel de degré pair atteint *un minimum ou un maximum global*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* TD03, exercice 12, et correction manuscrite : réduction à un compact puis comportement du terme dominant. Les cas du coefficient dominant négatif et du degré nul sont distingués.
]
