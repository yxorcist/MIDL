// source-confidence: high
// source-note: nouvelles photographies 10902, premier exercice de TD03 (droites D1, D2, symétrie et projection).
// source-note: formules en coordonnées explicitées à partir de la décomposition directe lisible sur la copie.
// source-uncertainty: quelques légendes du dessin manuscrit sont difficiles à lire ; le schéma SVG est reconstruit à partir des droites et des formules, non décalqué.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 1 — Projection et symétrie sur deux droites supplémentaires

== 1. Décomposition en somme directe

On considère les deux droites vectorielles

$
D_1={ (t,t) | t in RR }="Vect"((1,1))
$

et

$
D_2={ (t,0) | t in RR }="Vect"((1,0)).
$

Chaque droite est de dimension $1$, avec les bases respectives $((1,1))$ et $((1,0))$.

La famille $((1,1),(1,0))$ est libre dans $RR^2$, et contient deux vecteurs. C'est donc une base de $RR^2$.

Ainsi,

$
D_1 "⊕" D_2=RR^2.
$

Pour tout $u=(x,y) in RR^2$, la décomposition associée est unique :

$
u=(y,y)+(x-y,0),
$

où $(y,y) in D_1$ et $(x-y,0) in D_2$.

== 2. Projection et symétrie

On note $p$ la projection *sur $D_1$ parallèlement à $D_2$*, et $s$ la symétrie associée.

Par définition, si $u=u_1+u_2$, avec $u_1 in D_1$ et $u_2 in D_2$,

$
p(u)=u_1,
quad
s(u)=u_1-u_2.
$

En utilisant la décomposition calculée ci-dessus,

$
p(x,y)=(y,y)
$

et

$
s(x,y)=(y,y)-(x-y,0)=(2y-x,y).
$

Dans la base canonique,

$
"Mat"(p)=mat(0,1;0,1),
quad
"Mat"(s)=mat(-1,2;0,1).
$

On retrouve les points calculés dans la copie :

$
s(1,0)=(-1,0),
quad
s(1,1)=(1,1),
quad
s(2,1)=(0,1).
$

#align(center)[
  #image("../figures/ex01-droites-projection.svg", width: 85%)
]

== 3. Projection complémentaire et relations

On note $q$ la projection sur $D_2$ parallèlement à $D_1$. Alors

$
q(x,y)=(x-y,0).
$

D'après la décomposition en somme directe,

$
(p+q)(u)=u_1+u_2=u,
$

donc

$
p+q="Id"_(RR^2).
$

De même,

$
s=p-q=2p-"Id"_(RR^2).
$

On en déduit

$
p=( "Id"_(RR^2)+s )/2
quad "et" quad
q=( "Id"_(RR^2)-s )/2.
$

Enfin, on vérifie $p^2=p$ et $s^2="Id"_(RR^2)$ : ce sont respectivement une projection et une symétrie.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* L'énoncé exact n'est pas photographié ; les droites $D_1,D_2$, la décomposition, les applications $p,s,q$ et leurs relations proviennent des deux pages manuscrites. Les matrices et vérifications finales sont des compléments algébriques dérivés de ces données.
]
