#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 28/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Composition d'endomorphismes, homothéties et projections]
]
#line(length: 100%)
#v(0.7em)

// source-confidence: high

= Composition d'endomorphismes

Si

$
phi, psi in L_K(E),
$

alors

$
phi compose psi in L_K(E).
$

On obtient donc une loi de composition interne sur $L_K(E)$ :

$
compose : L_K(E) times L_K(E) -> L_K(E),
quad
(phi,psi) -> phi compose psi.
$

== Proposition 2.5.11

Pour $phi,psi,theta in L_K(E)$ :

1. la composition est associative :

   $
   (phi compose psi) compose theta
   =
   phi compose (psi compose theta);
   $

2. $id_E$ est élément neutre :

   $
   phi compose id_E
   =
   phi
   =
   id_E compose phi;
   $

3. la composition est distributive par rapport à l'addition, à droite et à gauche :

   $
   phi compose (psi_1+psi_2)
   =
   phi compose psi_1 + phi compose psi_2,
   $

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
  La loi $compose$ n'est pas commutative en général.
])

= Puissances d'un endomorphisme

Soit

$
phi in L_K(E).
$

Pour $k in NN$, on pose

$
phi^k
=
cases(
  id_E & "si " k=0,
  underbrace(phi compose phi compose dots compose phi, k " fois") & "si " k>=1.
)
$

== Remarque 2.5.13

Si $phi$ est bijective, on note $phi^(-1)$ sa bijection réciproque.

Pour $k in ZZ$ avec $k<0$, on pose

$
phi^k
=
(phi^(-1))^(-k).
$

= Polynômes d'endomorphismes

Soit

$
P
=
a_0+a_1 X+a_2 X^2+dots.h+a_d X^d
in K[X].
$

Pour

$
phi in L_K(E),
$

on définit

$
P(phi)
=
a_0 id_E
+
a_1 phi
+
a_2 phi^2
+
dots.h
+
a_d phi^d
in L_K(E).
$

Par convention,

$
0_(K[X])(phi)=0_E,
$

où $0_E$ désigne l'endomorphisme nul.

== Corollaire 2.5.14

On choisit une base

$
cal(E)=(e_1,dots,e_p)
$

de $E$.

Pour tout endomorphisme

$
phi in L_K(E),
$

on a

$
"Mat"_(cal(E))(P(phi))
=
P("Mat"_(cal(E))(phi)).
$

= Endomorphismes particuliers

On suppose désormais que $E$ est un $K$-espace vectoriel de dimension finie $p$.

== Homothéties

Pour tout $alpha in K$, on considère l'application

$
h_alpha:E->E,
quad
v->alpha v.
$

C'est une application $K$-linéaire appelée *homothétie de rapport* $alpha$.

Un endomorphisme

$
phi in L_K(E)
$

est appelé une homothétie de $E$ s'il existe $alpha in K$ tel que

$
phi=h_alpha.
$

=== Remarques

On a

$
h_alpha=alpha id_E.
$

Pour tous $alpha,beta in K$,

$
h_alpha+h_beta=h_(alpha+beta),
$

$
h_alpha compose h_beta=h_(alpha beta),
$

$
alpha h_beta=h_(alpha beta).
$

Ainsi, si

$
P in K[X],
$

alors

$
P(h_alpha)=h_(P(alpha)).
$

De plus,

$
id_E=h_1
quad "et" quad
0_E=h_0.
$

L'ensemble des homothéties de $E$ est

$
cal(H)(E)
=
{h_alpha | alpha in K}
=
{alpha id_E | alpha in K}
=
"Vect"(id_E).
$

C'est un sous-espace vectoriel de $L_K(E)$ de dimension $1$.

Si

$
cal(E)=(e_1,dots,e_p)
$

est une base de $E$, alors

$
"Mat"_(cal(E))(h_alpha)
=
alpha I_p.
$

== Proposition 2.6.4

Soit

$
phi in L_K(E).
$

1. $phi$ est une homothétie si et seulement s'il existe

   $
   P in K[X]
   $

   de degré $1$ tel que

   $
   P(phi)=0_E.
   $

2. $phi$ est une homothétie si et seulement s'il existe $alpha in K$ et une base
   $cal(E)$ de $E$ telles que

   $
   "Mat"_(cal(E))(phi)=alpha I_p.
   $

=== Preuve du premier point

Si

$
phi=h_alpha,
$

on prend

$
P=X-alpha.
$

Alors

$
P(phi)
=
phi-alpha id_E
=
0_E,
$

et

$
deg(P)=1.
$

Réciproquement, supposons qu'il existe

$
P=a_0+a_1 X
$

avec

$
a_1 != 0
$

et

$
P(phi)=0_E.
$

Alors

$
a_0 id_E+a_1 phi=0_E.
$

Donc

$
phi
=
-(a_0/a_1) id_E,
$

et $phi$ est une homothétie.

== Proposition 2.6.5

Si

$
dim_K(E)=1,
$

alors tout endomorphisme de $E$ est une homothétie :

$
L_K(E)=cal(H)(E).
$

=== Preuve

On a déjà vu que

$
cal(H)(E)
=
"Vect"(id_E)
$

est un sous-espace vectoriel de $L_K(E)$ de dimension $1$.

Or

$
dim_K(L_K(E))
=
(dim_K(E))^2
=
1.
$

Donc

$
L_K(E)=cal(H)(E).
$

== Exemple

Dans le $CC$-espace vectoriel $CC$,

$
h_i:CC->CC,
quad
z->i z
$

est l'homothétie de rapport $i$.

Géométriquement, elle correspond à une rotation de centre $O$ et d'angle

$
pi/2.
$

= Projections

== Définition 2.6.6

Soient $F$ et $G$ deux sous-espaces supplémentaires dans $E$ :

$
E=F direct.sum G.
$

Pour tout $u in E$, il existe un unique couple

$
(u_F,u_G)
$

avec

$
u_F in F,
quad
u_G in G,
$

tel que

$
u=u_F+u_G.
$

La projection sur $F$ parallèlement à $G$ est l'application

$
pi_(F,G):E->E,
quad
u=u_F+u_G -> u_F.
$

C'est un endomorphisme de $E$.

Un endomorphisme $phi in L_K(E)$ est appelé une *projection* ou un *projecteur*
s'il existe deux sous-espaces supplémentaires $F$ et $G$ tels que

$
phi=pi_(F,G).
$

== Exemples

Dans $RR^2$,

$
p:RR^2->RR^2,
quad
(x,y)->(x,0)
$

est la projection sur

$
F="Vect"((1,0))
$

parallèlement à

$
G="Vect"((0,1)).
$

Plus généralement, soit

$
(e_1,dots,e_n)
$

la base canonique de $K^n$ et soit $k in NN^*$ avec $1<=k<=n$.

L'application

$
phi:K^n->K^n,
$

$
(x_1,dots,x_n)
->
(x_1,dots,x_k,0,dots,0)
$

est la projection sur

$
"Vect"(e_1,dots,e_k)
$

parallèlement à

$
"Vect"(e_(k+1),dots,e_n).
$

== Remarque 2.6.8

Si

$
E=F direct.sum G,
$

alors

$
pi_(F,G)+pi_(G,F)=id_E.
$

== Proposition 2.6.9

Soit

$
phi in L_K(E).
$

Alors $phi$ est une projection si et seulement si

$
phi compose phi=phi.
$

Dans ce cas,

$
"Ker"(phi)
quad "et" quad
"Im"(phi)
$

sont supplémentaires dans $E$, et $phi$ est la projection sur

$
"Im"(phi)
$

parallèlement à

$
"Ker"(phi).
$

== Exemple 2.6.10

On considère $CC$ comme un $RR$-espace vectoriel et

$
phi:CC->CC,
quad
z->"Re"(z).
$

L'application $phi$ est $RR$-linéaire et vérifie

$
phi compose phi=phi.
$

Donc $phi$ est la projection sur l'axe réel parallèlement à l'axe imaginaire.
