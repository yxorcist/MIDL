#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 28/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Endomorphismes, homothéties et projections]
]
#line(length: 100%)
#v(0.7em)

// source-confidence: medium
// source-uncertainty: several proposition numbers and a few intermediate proof lines are difficult to read in the photographs; only clearly supported statements are retained.
// source-uncertainty: one geometric diagram for projections is simplified textually rather than reconstructed exactly.

= Matrices et compositions — compléments

On reprend la formule de composition :

$
"Mat"_(cal(E),cal(G))(psi compose phi)
=
"Mat"_(cal(F),cal(G))(psi)
"Mat"_(cal(E),cal(F))(phi).
$

Les notes poursuivent également le lien entre rang d'une application linéaire et rang de sa matrice :

$
"rg"(phi)
=
"rg"("Mat"_(cal(E),cal(F))(phi)).
$

== Corollaire — isomorphismes et matrices inversibles

Soient $E$ et $F$ deux $K$-espaces vectoriels de même dimension finie, munis de bases
$cal(E)$ et $cal(F)$.

Pour une application linéaire

$
phi:E->F,
$

on a :

$
phi " est un isomorphisme"
quad <=> quad
"Mat"_(cal(E),cal(F))(phi) " est inversible".
$

Dans ce cas,

$
"Mat"_(cal(F),cal(E))(phi^(-1))
=
"Mat"_(cal(E),cal(F))(phi)^(-1).
$

En effet,

$
phi^(-1) compose phi = "id"_E
quad "et" quad
phi compose phi^(-1) = "id"_F,
$

et la formule de composition transforme ces identités en produits matriciels égaux aux matrices identité.

= Composition d'endomorphismes

Soit $E$ un $K$-espace vectoriel. Si

$
phi,psi in L_K(E),
$

alors

$
phi compose psi in L_K(E).
$

On obtient ainsi une loi de composition interne sur $L_K(E)$.

== Propriétés

Pour $phi,psi,theta in L_K(E)$ :

1. la composition est associative :

   $
   (phi compose psi) compose theta
   =
   phi compose (psi compose theta);
   $

2. $"id"_E$ est élément neutre :

   $
   phi compose "id"_E
   =
   "id"_E compose phi
   =
   phi;
   $

3. la composition est distributive par rapport à l'addition :

   $
   phi compose (psi_1+psi_2)
   =
   phi compose psi_1 + phi compose psi_2,
   $

   et

   $
   (phi_1+phi_2) compose psi
   =
   phi_1 compose psi + phi_2 compose psi;
   $

4. pour tout $lambda in K$,

   $
   phi compose (lambda psi)
   =
   (lambda phi) compose psi
   =
   lambda (phi compose psi).
   $

#remark([
  La composition des endomorphismes n'est pas commutative en général.
])

== Puissances d'un endomorphisme

Pour $phi in L_K(E)$ et $n in NN$, on pose

$
phi^n =
cases(
"id"_E & "si " n=0,
underbrace(phi compose dots compose phi, n " fois") & "si " n>=1.
)
$

Si $phi$ est bijective, alors $phi^(-1)$ est encore un endomorphisme.

Pour $n>=1$,

$
(phi^n)^(-1)
=
(phi^(-1))^n.
$

= Polynômes d'endomorphismes

Soit

$
P
=
a_0+a_1 X+dots.h+a_p X^p
in K[X].
$

Pour $phi in L_K(E)$, on définit

$
P(phi)
=
a_0 "id"_E
+
a_1 phi
+
dots.h
+
a_p phi^p
in L_K(E).
$

En particulier,

$
0(phi)=0_(L_K(E))
quad "et" quad
1(phi)="id"_E.
$

Si $cal(E)$ est une base de $E$, alors les notes donnent :

$
"Mat"_(cal(E))(P(phi))
=
P("Mat"_(cal(E))(phi)).
$

Autrement dit, évaluer un polynôme en un endomorphisme puis prendre sa matrice revient à évaluer le même polynôme dans la matrice de l'endomorphisme.

= Endomorphismes particuliers

On suppose désormais que $E$ est un $K$-espace vectoriel de dimension finie.

== Homothéties

Pour tout $alpha in K$, on considère l'application

$
h_alpha:E->E,
quad
v->alpha v.
$

#definition([
  L'application $h_alpha$ est appelée *homothétie de rapport* $alpha$.
])

On a immédiatement

$
h_alpha
=
alpha "id"_E.
$

Pour $alpha,beta in K$,

$
h_alpha compose h_beta
=
h_(alpha beta).
$

Si $alpha!=0$, alors $h_alpha$ est bijective et

$
h_alpha^(-1)
=
h_(alpha^(-1)).
$

Dans toute base $cal(E)$ de $E$,

$
"Mat"_(cal(E))(h_alpha)
=
alpha I_n.
$

Ainsi, pour tout $P in K[X]$,

$
P(h_alpha)
=
h_(P(alpha)).
$

== Caractérisation par un polynôme de degré 1

Les notes montrent que $phi in L_K(E)$ est une homothétie si et seulement s'il existe un polynôme non nul

$
P in K[X]
$

de degré $1$ tel que

$
P(phi)=0.
$

En effet, si

$
P(X)=a_0+a_1 X,
quad
a_1!=0,
$

et

$
P(phi)=0,
$

alors

$
a_0 "id"_E+a_1 phi=0,
$

donc

$
phi
=
-(a_0/a_1)"id"_E.
$

Réciproquement, pour $phi=h_alpha$, le polynôme

$
P(X)=X-alpha
$

vérifie

$
P(phi)=0.
$

== Dépendance au corps de base

Les notes donnent l'exemple de l'application

$
h_i:CC->CC,
quad
z->i z.
$

Vue comme application $CC$-linéaire, c'est l'homothétie de rapport $i$.

En revanche, si $CC$ est considéré comme espace vectoriel réel, cette même application représente géométriquement une rotation d'angle $pi/2$ et n'est pas une homothétie réelle.

= Projections

Soient $F$ et $G$ deux sous-espaces supplémentaires de $E$ :

$
E=F "⊕" G.
$

Pour tout $u in E$, il existe un unique couple

$
(u_F,u_G) in F times G
$

tel que

$
u=u_F+u_G.
$

#definition([
  La projection sur $F$ parallèlement à $G$ est l'application

  $
  p_(F,G):E->E,
  quad
  u->u_F.
  $
])

Ainsi,

$
"Im"(p_(F,G))=F
$

et

$
"Ker"(p_(F,G))=G.
$

Les notes illustrent cette définition géométriquement dans $RR^2$ : un vecteur est décomposé suivant deux directions supplémentaires, et sa projection conserve uniquement sa composante suivant $F$.

== Caractérisation des projections

Soit

$
p in L_K(E).
$

Les notes donnent la caractérisation :

$
p " est une projection"
quad <=> quad
p compose p=p.
$

Autrement dit,

$
p^2=p.
$

Si cette relation est vérifiée, alors

$
E
=
"Im"(p)
"⊕"
"Ker"(p),
$

et $p$ est précisément la projection sur $"Im"(p)$ parallèlement à $"Ker"(p)$.

En effet, pour tout $u in E$,

$
u
=
p(u)+(u-p(u)).
$

On a

$
p(u) in "Im"(p)
$

et, puisque $p^2=p$,

$
p(u-p(u))
=
p(u)-p^2(u)
=
0,
$

donc

$
u-p(u) in "Ker"(p).
$

De plus, si

$
v in "Im"(p) inter "Ker"(p),
$

alors $v=p(w)$ pour un certain $w$, mais aussi $p(v)=0$. Or

$
p(v)=p^2(w)=p(w)=v,
$

donc

$
v=0.
$

== Exemple dans $CC$ vu comme espace vectoriel réel

On considère

$
p:CC->CC,
quad
z->"Re"(z).
$

Comme espace vectoriel réel,

$
CC
=
RR "⊕" i RR.
$

L'application $p$ est la projection sur l'axe réel parallèlement à l'axe imaginaire.

Elle vérifie

$
p compose p=p.
$
