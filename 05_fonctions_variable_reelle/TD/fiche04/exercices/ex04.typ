// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 4.
 // source-note: premier lot FVR, photos « Exercice 4 » : théorème de Rolle et borne du nombre de racines ; seconde livraison, rappels associés.
// source-reconstruction: question 3 explicitée par récurrence de Rolle sur les zéros de sin(1/x).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 4 — Racines et théorème de Rolle

== 1. Une fonction avec $k$ zéros a une dérivée avec au moins $k-1$ zéros

Soit $f:I->RR$ dérivable et admettant au moins $k>=2$ zéros distincts. Choisissons-en $k$, notés
$
x_1<x_2<dots<x_k.
$

Sur chacun des $k-1$ segments $[x_i,x_(i+1)]$, la fonction est continue et dérivable à l'intérieur. Comme
$
f(x_i)=f(x_(i+1))=0,
$
le *théorème de Rolle* fournit
$
c_i in ]x_i,x_(i+1)[ quad "tel que" quad f'(c_i)=0.
$

Les intervalles ouverts sont disjoints, donc $c_1,dots,c_(k-1)$ sont distincts. Ainsi *$f'$ admet au moins $k-1$ zéros distincts*.

== 2. Nombre de solutions de $x^n+a x+b=0$

Soient $n>=2$ et $a,b in RR$. Posons
$
h(x)=x^n+a x+b.
$
Sa dérivée est
$
h'(x)=n x^(n-1)+a.
$

L'équation $h'(x)=0$ équivaut à
$
x^(n-1)=-a/n.
$

Si $n-1$ est impair, l'équation possède exactement une solution réelle. S'il est pair, elle en possède au plus deux. Dans tous les cas, *$h'$ a au plus deux racines réelles distinctes*.

Si $h$ avait au moins quatre zéros distincts, la question 1 imposerait au moins trois zéros distincts de $h'$, contradiction.

*Conclusion :* une équation $x^n+a x+b=0$ a *au plus trois solutions réelles*.

== 3. Nombre de zéros de la dérivée d'ordre $n$ de $sin(1/x)$

Soit
$
f:RR_+^*->RR,
quad
f(x)=sin(1/x).
$

Pour chaque entier $j>=1$,
$
f(1/(j pi))=sin(j pi)=0.
$

Les zéros $x_j=1/(j pi)$ forment une suite strictement décroissante vers $0$. Il existe donc une infinité d'intervalles disjoints $]x_(j+1),x_j[$.

Rolle donne un zéro de $f'$ dans chaque intervalle. Les zéros obtenus forment une suite strictement décroissante vers $0$, et on peut réappliquer Rolle entre deux zéros consécutifs de $f'$.

Par récurrence, pour tout $n>=1$, la dérivée $f^(n)$ possède *une infinité de zéros distincts sur $RR_+^*$*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Exercice 4 de la fiche officielle ; questions 1–2 développées sur la photo manuscrite. La question 3, seulement amorcée, est complétée par une récurrence de Rolle.
]
