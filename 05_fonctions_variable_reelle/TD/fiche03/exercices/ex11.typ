// source-confidence: high
// source-note: TD03_continuite.pdf, exercice 11, vérifié dans Google Drive.
// source-note: photos de la seconde livraison FVR, exercice 11 : signe sur une demi-droite, contradiction par surjectivité, translation f-y.
// source-reconstruction: explicitation de l'argument de bornitude sur [0,A] et des valeurs non atteintes.

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

Si $f$ prenait des valeurs strictement positives et strictement négatives sur $[A,+infinity[$, il existerait $x,y>=A$ avec $f(x)>0$ et $f(y)<0$.

Le *théorème des valeurs intermédiaires* (TVI) sur le segment de bornes $x$ et $y$ donnerait alors un $z$ compris entre eux tel que $f(z)=0$. Comme $z>=A$, ce serait une contradiction.

Donc $f$ est *strictement positive partout* sur $[A,+infinity[$, ou *strictement négative partout* sur cette demi-droite.

== 2. Le réel $0$ possède une infinité d'antécédents

Raisonnons par l'absurde. Si l'ensemble
$
Z={x in RR_+ : f(x)=0}
$
était fini, on pourrait choisir $A>=0$ strictement supérieur à tous ses éléments (ou simplement $A=0$ si $Z$ était vide).

Par la question 1, $f$ aurait alors un signe constant sur $[A,+infinity[$.

D'autre part, $f$ est continue sur le compact $[0,A]$ : d'après le *théorème des bornes atteintes*, son image est bornée. On peut donc trouver $M>0$ tel que
$
forall x in [0,A], quad abs(f(x))<=M.
$

- Si $f(x)>0$ pour tout $x>=A$, les valeurs strictement inférieures à $-M$ ne peuvent être atteintes ni avant ni après $A$.
- Si $f(x)<0$ pour tout $x>=A$, les valeurs strictement supérieures à $M$ ne peuvent être atteintes.

Dans les deux cas, la surjectivité de $f$ sur $RR$ est contredite.

Il existe donc *une infinité de $x>=0$ tels que $f(x)=0$*.

== 3. Chaque réel a une infinité d'antécédents

Soit $y in RR$ fixé. Considérons
$
g:RR_+ -> RR, quad g(x)=f(x)-y.
$

La fonction $g$ est continue. Elle est surjective : pour $z in RR$, la surjectivité de $f$ fournit $x>=0$ tel que $f(x)=z+y$, donc $g(x)=z$.

D'après la question 2 appliquée à $g$, le réel $0$ admet une infinité d'antécédents par $g$. Or
$
g(x)=0 <=> f(x)=y.
$

*Conclusion :* tout $y in RR$ possède *une infinité d'antécédents* par $f$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Sujet officiel TD03, exercice 11, et photos manuscrites de la seconde livraison. L'usage de la bornitude sur $[0,A]$ et le passage de $f$ à $f-y$ explicitent les étapes abrégées dans les notes.
]
