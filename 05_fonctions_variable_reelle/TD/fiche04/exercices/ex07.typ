// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 7.
 // source-note: premier lot FVR, photo « Exercice 7 » : minimum strictement positif de f' et TAF.
// source-verification: f'(x)>0 sur le compact [0,1], existence de m>0.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 7 — Minoration uniforme de la dérivée

On considère $f:[0,1]->RR$ de classe $C^1$, avec
$
f(0)=0,
quad
forall x in [0,1],quad f'(x)>0.
$

== 1. Trouver $m>0$ tel que $f'(x)>=m$

Comme $f$ est de classe $C^1$, sa dérivée $f'$ est *continue* sur le compact $[0,1]$.

D'après le *théorème des bornes atteintes*, il existe $x_0 in [0,1]$ tel que
$
m=f'(x_0)=min_(x in [0,1]) f'(x).
$

L'hypothèse donne $f'(x_0)>0$, donc *$m>0$*. Pour tout $x in [0,1]$,
$
f'(x)>=m.
$

La continuité est essentielle : une fonction simplement positive sur un intervalle compact, mais non continue, n'admet pas nécessairement de minorant strictement positif.

== 2. Montrer que $f(x)>=mx$

Si $x=0$, l'inégalité s'écrit $f(0)=0>=0$, donc elle est vraie.

Soit $x in ]0,1]$. Par le *théorème des accroissements finis* sur $[0,x]$, il existe $c in ]0,x[$ tel que
$
f(x)-f(0)=f'(c)(x-0).
$

Comme $f(0)=0$ et $f'(c)>=m$,
$
f(x)=f'(c)x>=mx
$
car $x>0$.

*Conclusion :* pour tout $x in [0,1]$,
$
f(x)>=mx.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Fiche officielle TD04, exercice 7 ; démonstration fondée sur les deux idées visibles dans la photographie : bornes atteintes et accroissements finis.
]
