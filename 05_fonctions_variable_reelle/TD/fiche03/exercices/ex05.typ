// source-confidence: high
// source-note: photo 11486, page droite, exercice 5 ; démonstration par le théorème des valeurs intermédiaires.
// source-uncertainty: la feuille FVR TD03 n'a pas été retrouvée ; la propriété est formulée d'après les hypothèses visibles sur la copie.
// source-verification: la démonstration par contradiction utilise seulement la connexité de l'intervalle I et la continuité de f.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 5 — Fonction continue prenant seulement deux valeurs

== Propriété reconstituée

Soit $I$ un intervalle de $RR$ et soit $f:I->RR$ une fonction *continue* vérifiant

$
forall x in I,
quad f(x)^2=1.
$

Montrer que $f$ est constante sur $I$.

== Démonstration par l'absurde

L'équation $f(x)^2=1$ équivaut à

$
f(x) in \{-1,1\}.
$

Supposons que $f$ ne soit pas constante.

Alors il existe $a,b in I$ tels que $f(a) != f(b)$. Les valeurs possibles étant uniquement $-1$ et $1$, quitte à permuter $a$ et $b$, on peut supposer que

$
f(a)=-1,
quad f(b)=1.
$

En réordonnant les points au besoin, considérons le segment d'extrémités $a$ et $b$.

Puisque $I$ est un intervalle, tout le segment est contenu dans $I$. La restriction de $f$ à ce segment est continue.

Comme

$
-1<0<1,
$

le *théorème des valeurs intermédiaires* assure l'existence d'un point $c$ entre $a$ et $b$ tel que

$
f(c)=0.
$

Mais alors $f(c)^2=0 !=1$, ce qui contredit l'hypothèse.

Donc $f$ est *constante*, égale partout à $1$ ou partout à $-1$.

== Autre justification — Image d'un intervalle

L'image d'un intervalle par une fonction continue est un intervalle.

Or

$
f(I) subset.eq \{-1,1\}.
$

Le seul moyen pour que $f(I)$ soit un intervalle non vide est qu'il soit réduit à un seul point : $\{-1\}$ ou $\{1\}$.

On retrouve que $f$ est constante.

== Méthode à retenir

Lorsqu'une fonction continue sur un intervalle ne peut prendre ses valeurs que dans un ensemble *discret* (ici deux valeurs isolées), tester le théorème des valeurs intermédiaires. Si deux valeurs distinctes étaient atteintes, toutes les valeurs intermédiaires devraient l'être également.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* La preuve par l'absurde et le passage par la valeur intermédiaire $0$ figurent sur la photo. La preuve par l'image d'un intervalle est également mentionnée dans les notes et a été clarifiée ici.
]
