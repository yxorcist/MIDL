// source-confidence: high
// source-note: TD03_continuite.pdf, exercice 11, vérifié dans Google Drive.
// source-note: photos de la seconde livraison FVR, exercice 11 : signe sur une demi-droite, contradiction par surjectivité, translation f-y.
// source-reconstruction: démarche de la copie manuscrite de l'étudiant (2026-11-27), avec justifications du TVI, de la symétrie en Q2 et de la translation verticale en Q3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 11 — Antécédents d'une fonction continue surjective

Soit $f:RR_+ -> RR$ une fonction *continue et surjective*.

== 1. Si $f$ ne s'annule plus après $A$, elle garde un signe constant

Supposons qu'il existe $A>=0$ tel que
$
forall x>=A, quad f(x)!=0.
$

Par l'absurde, supposons que $f$ ne soit pas de signe constant sur $[A,+infinity[$. Il existe alors $x,y in RR_+$ tels que
$
A<=x<y, quad f(x) f(y)<0.
$

Comme $f$ est continue sur $[x,y]$, par le théorème des valeurs intermédiaires (TVI),
$
exists z in ]x,y[, quad f(z)=0.
$

Or $z>=A$, ce qui contredit l'hypothèse
$
forall x>=A, quad f(x)!=0.
$

Donc $f$ est de signe constant sur $[A,+infinity[$.

== 2. Le réel $0$ possède une infinité d'antécédents

Par l'absurde, supposons que $0$ admette un nombre fini d'antécédents par $f$.

On pose
$
Z={x in RR_+ : f(x)=0}.
$

On choisit $A>max(Z)$ si $Z$ est non vide, et $A=0$ sinon.

Ainsi,
$
forall x>=A, quad f(x)!=0.
$

Comme $f$ est continue sur le segment $[0,A]$, le théorème des bornes atteintes garantit que $f$ y est bornée :
$
exists M>0, quad forall x in [0,A], quad abs(f(x))<=M.
$

Donc
$
forall x in [0,A], quad -M<=f(x)<=M.
$

D'après la question 1, $f$ est de signe constant sur $[A,+infinity[$.

Sans perte de généralité, supposons que
$
forall x>=A, quad f(x)>0,
$
quitte à remplacer $f$ par $-f$, qui est également continue et surjective et possède les mêmes zéros.

En combinant les deux intervalles, on a alors :

- Sur $[0,A]$, $f(x)>=-M$.
- Sur $[A,+infinity[$, $f(x)>0>=-M$.

Ainsi,
$
forall x in RR_+, quad f(x)>=-M.
$

La valeur $-M-1$ n'admet donc aucun antécédent par $f$, ce qui contredit sa surjectivité.

Donc $0$ admet une infinité d'antécédents par $f$.

== 3. Chaque réel a une infinité d'antécédents

On fixe un réel $y in RR$ arbitraire.

On pose
$
g:RR_+ -> RR, quad g(x)=f(x)-y.
$

Comme $y$ est une constante, $g$ est une translation verticale de $f$ : elle est continue et surjective. En effet, puisque $f(RR_+)=RR$,
$
g(RR_+)={t-y : t in RR}=RR.
$

Ainsi, $g$ vérifie les hypothèses de la question 2.

D'après la question 2 appliquée à $g$, l'équation $g(x)=0$ admet une infinité de solutions.

Or
$
g(x)=0
quad <=> quad f(x)-y=0
quad <=> quad f(x)=y.
$

Les solutions de ces deux équations sont exactement les mêmes.

Donc, pour tout $y in RR$, il existe une infinité de $x in RR_+$ tels que $f(x)=y$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Sujet officiel TD03, exercice 11, et photos manuscrites de la seconde livraison. Démarche de la copie manuscrite du 2026-11-27 : raisonnement par l'absurde, ensemble des zéros, bornitude sur $[0,A]$, symétrie des deux signes et translation verticale. Les hypothèses des théorèmes et les implications sont explicitées.
]
