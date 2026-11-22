// source-confidence: high
// source-note: énoncé officiel TD03_endomorphismes-changements-bases.pdf (2026-2027), exercice 1, questions 1 à 3.
// source-note: nouvelle solution manuscrite autonome du 22 novembre 2026 : preuve de somme directe, décomposition algébrique, formules de p et s et preuve des trois identités.
// source-note: résultats numériques et schéma de la question 2 conservés depuis la version précédente (photographies manuscrites 10902).
// source-reconstruction: les calculs intermédiaires sont mis au propre ; les identités facultatives p²=p et s²=Id sont des compléments.
// source-uncertainty: le schéma SVG reprend la géométrie des droites et des images, sans être le décalque exact du dessin manuscrit.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 1 — Projection et symétrie sur deux droites supplémentaires

== 1. Démontrer que $D_1 "⊕" D_2=RR^2$

On considère
$
D_1={ (x,y) in RR^2 | y=x }="Vect"((1,1))
$
et
$
D_2={ (x,y) in RR^2 | y=0 }="Vect"((1,0)).
$

Soit $v=(x,y) in D_1 inter D_2$. Alors $y=x$ et $y=0$.
Ainsi $x=y=0$, donc
$
D_1 inter D_2={0_(RR^2)}.
$

De plus,
$
dim(D_1)=1,
quad dim(D_2)=1,
quad dim(D_1)+dim(D_2)=2=dim(RR^2).
$

Les deux sous-espaces sont donc supplémentaires :
$
D_1 "⊕" D_2=RR^2.
$

*Rappel.* La somme directe signifie que tout vecteur de $RR^2$ admet une décomposition *unique* en un vecteur de $D_1$ et un vecteur de $D_2$.

== 2. Projection et symétrie

On note $p$ la projection *sur $D_1$ parallèlement à $D_2$*, et $s$ la symétrie *par rapport à $D_1$ parallèlement à $D_2$*.

*Définitions.* Pour $v=v_1+v_2$, avec $v_1 in D_1$ et $v_2 in D_2$ :
$
p(v)=v_1,
quad
s(v)=v_1-v_2.
$

=== Trouver la décomposition générale

Soit $v=(x,y) in RR^2$. Comme les vecteurs de $D_1$ sont de la forme $(a,a)$ et ceux de $D_2$ de la forme $(b,0)$, on cherche $a,b in RR$ tels que
$
(x,y)=(a,a)+(b,0)=(a+b,a).
$

On identifie les coordonnées :
$
cases(
  x=a+b,
  y=a.
)
$

D'où $a=y$ et $b=x-y$. Ainsi :
$
(x,y)=(y,y)+(x-y,0).
$

Les deux termes appartiennent respectivement à $D_1$ et à $D_2$.

=== Formules de $p$ et $s$

La projection conserve la composante dans $D_1$ :
$
p(x,y)=(y,y).
$

La symétrie conserve la première composante et inverse la seconde :
$
s(x,y)=(y,y)-(x-y,0)
$
$
=(y-(x-y),y-0)
$
$
=(2y-x,y).
$

=== Images des trois vecteurs

$
p(1,0)=(0,0),
quad s(1,0)=(-1,0);
$
$
p(1,1)=(1,1),
quad s(1,1)=(1,1);
$
$
p(2,1)=(1,1),
quad s(2,1)=(0,1).
$

Pour le dessin : tracer $D_1$ (droite $y=x$) et $D_2$ (axe $y=0$).
Les déplacements entre $v$, $p(v)$ et $s(v)$ se font parallèlement à $D_2$.

#align(center)[
  #image("../figures/ex01-droites-projection.svg", width: 85%)
]

== 3. Projection complémentaire et relations

On note $q$ la projection sur $D_2$ parallèlement à $D_1$.

Pour tout $v in RR^2$, on écrit $v=v_1+v_2$ avec $v_1 in D_1$ et $v_2 in D_2$. Par définition :
$
p(v)=v_1,
quad q(v)=v_2,
quad s(v)=v_1-v_2,
quad "Id"_(RR^2)(v)=v_1+v_2.
$

=== Montrer que $p+q="Id"_(RR^2)$

$
(p+q)(v)=p(v)+q(v)=v_1+v_2=v="Id"_(RR^2)(v).
$

Cette égalité vaut pour tout $v in RR^2$, donc
$
p+q="Id"_(RR^2).
$

=== Montrer que $s="Id"_(RR^2)-2q$

$
("Id"_(RR^2)-2q)(v)
=v-2q(v)
=(v_1+v_2)-2v_2
=v_1-v_2
=s(v).
$

Donc
$
s="Id"_(RR^2)-2q.
$

=== Montrer que $s=2p-"Id"_(RR^2)$

$
(2p-"Id"_(RR^2))(v)
=2p(v)-v
=2v_1-(v_1+v_2)
=v_1-v_2
=s(v).
$

Donc
$
s=2p-"Id"_(RR^2).
$

Ainsi, les trois égalités demandées sont démontrées :
$
p+q="Id"_(RR^2),
quad
s="Id"_(RR^2)-2q=2p-"Id"_(RR^2).
$

=== Compléments (non demandés)

En isolant $p$ et $q$ dans les égalités précédentes :
$
p=("Id"_(RR^2)+s)/2,
quad
q=("Id"_(RR^2)-s)/2.
$

Les définitions donnent aussi $p^2=p$ et $s^2="Id"_(RR^2)$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Énoncé vérifié sur la feuille officielle TD03 (UCA, 2026–2027).
  La preuve de somme directe, la recherche de $a,b$, les formules de $p,s$ et les démonstrations de la question 3 suivent la copie manuscrite récente, avec les corrections algébriques intégrées.
  Les trois images numériques et la figure étaient déjà documentées dans la version antérieure.
  Les compléments de la fin ne sont pas explicitement demandés.
]
