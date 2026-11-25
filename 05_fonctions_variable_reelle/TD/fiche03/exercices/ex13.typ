// source-confidence: high
// source-note: TD03_continuite.pdf, exercice 13, vérifié dans Google Drive.
// source-note: photos de la seconde livraison FVR : minimum de f-g et contre-exemple sur [1,+infini[.
// source-reconstruction: choix explicite d'un contre-exemple avec différence tendant vers 0.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 13 — Séparation uniforme sur un compact

== 1. Deux fonctions continues strictement ordonnées sur $[a,b]$

Soient $f,g:[a,b]->RR$ continues, et supposons
$
forall x in [a,b], quad f(x)>g(x).
$

Posons
$
h(x)=f(x)-g(x).
$

La fonction $h$ est continue sur le *compact* $[a,b]$ et elle est *strictement positive partout*.

Par le théorème des bornes atteintes, il existe $x_0 in [a,b]$ où $h$ atteint son minimum :
$
delta=h(x_0)=min_(x in [a,b])h(x).
$

Comme $h(x_0)>0$, on a *$delta>0$*. Pour tout $x in [a,b]$,
$
f(x)-g(x)=h(x)>=delta,
$
soit
$
forall x in [a,b], quad f(x)>=g(x)+delta.
$

*Le point décisif est la compacité de $[a,b]$*, qui garantit que le minimum est atteint.

== 2. Contre-exemple sur $[1,+infinity[$

Considérons
$
f(x)=1/x,
quad
g(x)=0 quad "pour" x>=1.
$

Les deux fonctions sont continues sur $[1,+infinity[$ et, pour tout $x>=1$,
$
f(x)-g(x)=1/x>0.
$

Cependant
$
lim_(x->+infinity)(f(x)-g(x))=0.
$

Si un $delta>0$ vérifiait $f(x)>=g(x)+delta$ pour *tout* $x>=1$, on aurait $1/x>=delta$ pour tout $x>=1$. En prenant $x>1/delta$, on obtient $1/x<delta$, contradiction.

*Conclusion :* une inégalité strictement positive *point par point* sur un intervalle non borné n'implique pas un écart uniforme strictement positif.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Sujet officiel TD03, exercice 13. La méthode (minimum strictement positif de $f-g$) correspond aux photos ; le contre-exemple est écrit explicitement pour achever la question 2.
]
