// source-confidence: high
// source-note: TD03_continuite.pdf, exercice 13, vérifié dans Google Drive.
// source-note: photos de la seconde livraison FVR : minimum de f-g et contre-exemple sur [1,+infini[.
// source-reconstruction: reprise de la copie manuscrite de l'étudiant (2026-11-27), avec preuve algébrique par l'absurde en Q2.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 13 — Séparation uniforme sur un compact

== 1. Deux fonctions continues strictement ordonnées sur $[a,b]$

Soient $f,g:[a,b]->RR$ continues, telles que
$
forall x in [a,b], quad f(x)>g(x).
$

On pose
$
h(x)=f(x)-g(x).
$

Par les hypothèses sur $f$ et $g$, $h$ est définie, continue et strictement positive sur le compact $[a,b]$.

Par le théorème des bornes atteintes,
$
exists x_0 in [a,b], quad delta=h(x_0)=min_(x in [a,b]) h(x).
$

Or $h(x_0)>0$, donc $delta>0$.

Ainsi, pour tout $x in [a,b]$,
$
h(x)=f(x)-g(x)>=delta
quad <=> quad f(x)>=g(x)+delta.
$

== 2. Contre-exemple sur $[1,+infinity[$

Prenons $f(x)=1/x$ et $g(x)=0$, définies et continues sur $[1,+infinity[$, avec $f(x)>g(x)$ pour tout $x>=1$.

Comme dans la question 1, on pose $h(x)=f(x)-g(x)$.

Par l'absurde, supposons que
$
exists delta>0, quad forall x>=1, quad h(x)>=delta.
$

Alors, pour tout $x>=1$,
$
f(x)-g(x)>=delta
quad <=> quad 1/x>=delta
quad <=> quad x<=1/delta.
$

Contradiction, car l'intervalle $[1,+infinity[$ n'est pas borné.

Donc il n'existe pas de $delta>0$ tel que $f(x)>=g(x)+delta$ pour tout $x>=1$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Sujet officiel TD03, exercice 13. Copie manuscrite de l'étudiant (2026-11-27) : minimum strictement positif de $f-g$, puis contre-exemple par l'absurde utilisant la non-bornitude de l'intervalle. En Q2, l'hypothèse porte sur une minoration uniforme, et non sur l'existence d'un minimum.
]
