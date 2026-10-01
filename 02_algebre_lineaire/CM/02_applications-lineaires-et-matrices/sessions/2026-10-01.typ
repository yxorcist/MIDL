#import "../../style.typ": *

// source-confidence: high
// source-note: handwritten CM pages supplied for 01/10/2026. They continue the section on projections, then introduce symmetries.
// source-note: the Google Drive CM folders contain no professor document for this date; the session is transcribed from the handwritten pages.
// source-note: Proposition 2.6.9 and Example 2.6.10 were already stated in the 28/09 session; only the newly supplied proof/details are developed here.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 01/10/2026]
  #v(0.2em)
  #text(size: 11pt)[Projections et symétries]
]
#line(length: 100%)
#v(0.7em)

= Compléments sur les projections

== Preuve de la proposition 2.6.9

On rappelle que, pour

$
phi in L_K(E),
$

$phi$ est une projection si et seulement si

$
phi compose phi = phi.
$

=== Sens direct

Supposons que $phi$ soit la projection sur $F$ parallèlement à $G$, avec

$
E=F "⊕" G.
$

Soit

$
u=u_F+u_G
$

avec

$
u_F in F
quad "et" quad
u_G in G.
$

Alors

$
phi(u)=u_F.
$

Comme

$
u_F=u_F+0_E,
$

avec $u_F in F$ et $0_E in G$, on a

$
phi(phi(u))
=
phi(u_F)
=
u_F
=
phi(u).
$

Donc

$
phi compose phi=phi.
$

=== Sens réciproque

Supposons maintenant

$
phi compose phi=phi.
$

Il faut montrer :

1. que

   $
   E="Im"(phi) "⊕" "Ker"(phi);
   $

2. que $phi$ est la projection sur $"Im"(phi)$ parallèlement à $"Ker"(phi)$.

#### Intersection

Soit

$
u in "Im"(phi) inter "Ker"(phi).
$

Comme

$
u in "Im"(phi),
$

il existe $v in E$ tel que

$
u=phi(v).
$

Comme

$
u in "Ker"(phi),
$

on a

$
0_E
=
phi(u)
=
phi(phi(v))
=
phi(v)
=
u.
$

Donc

$
"Im"(phi) inter "Ker"(phi)
=
{0_E}.
$

#### Somme

Les notes donnent deux méthodes.

*Première méthode — dimension finie.*

D'après le théorème du rang,

$
dim(E)
=
dim("Im"(phi))
+
dim("Ker"(phi)).
$

Comme l'intersection est réduite à $0_E$,

$
E="Im"(phi) "⊕" "Ker"(phi).
$

*Deuxième méthode — valable pour tout $E$.*

Soit $u in E$.

On écrit

$
u
=
phi(u)
+
(u-phi(u)).
$

On a

$
phi(u) in "Im"(phi).
$

De plus,

$
phi(u-phi(u))
=
phi(u)-phi(phi(u))
=
phi(u)-phi(u)
=
0_E.
$

Donc

$
u-phi(u) in "Ker"(phi).
$

Ainsi,

$
u in "Im"(phi)+"Ker"(phi).
$

Comme l'intersection est nulle,

$
E="Im"(phi) "⊕" "Ker"(phi).
$

#### Identification de la projection

Soit

$
u=u_I+u_K,
$

avec

$
u_I in "Im"(phi)
quad "et" quad
u_K in "Ker"(phi).
$

Alors

$
phi(u)
=
phi(u_I)+phi(u_K)
=
phi(u_I).
$

Comme $u_I in "Im"(phi)$, il existe $v in E$ tel que

$
u_I=phi(v).
$

Donc

$
phi(u_I)
=
phi(phi(v))
=
phi(v)
=
u_I.
$

Ainsi,

$
phi(u)=u_I.
$

Donc $phi$ est bien la projection sur $"Im"(phi)$ parallèlement à $"Ker"(phi)$.

== Remarque 2.6.11 — vecteurs fixés

Soit $phi$ une projection.

Alors

$
"Im"(phi)
=
"Ker"(phi-id_E)
=
{u in E | phi(u)=u}.
$

=== Preuve

Comme

$
phi compose phi=phi,
$

si $u in E$ vérifie

$
phi(u)=u,
$

alors évidemment

$
u in "Im"(phi).
$

Réciproquement, si

$
u in "Im"(phi),
$

il existe $v in E$ tel que

$
u=phi(v).
$

Alors

$
phi(u)
=
phi(phi(v))
=
phi(v)
=
u.
$

Donc les vecteurs de l'image de $phi$ sont exactement les vecteurs fixés par $phi$.

== Matrice d'une projection dans une base adaptée

Soit $phi$ la projection sur $F$ parallèlement à $G$, avec

$
E=F "⊕" G.
$

On choisit une base

$
cal(B)_F=(e_1,dots,e_r)
$

de $F$ et une base

$
cal(B)_G=(e_(r+1),dots,e_p)
$

de $G$.

Alors

$
cal(B)=cal(B)_F union cal(B)_G
$

est une base de $E$.

Pour

$
1<=j<=r,
$

on a

$
phi(e_j)=e_j.
$

Pour

$
r+1<=j<=p,
$

on a

$
phi(e_j)=0_E.
$

Ainsi,

$
"Mat"_cal(B)(phi)
=
mat(
  I_r, 0;
  0, 0_(p-r);
).
$

== Proposition 2.6.12 — caractérisation matricielle

Soit

$
phi in L_K(E).
$

Alors $phi$ est une projection de $E$ si et seulement s'il existe une base $cal(B)$ de $E$ et

$
r in {0,dots,p}
$

tels que

$
"Mat"_cal(B)(phi)
=
mat(
  I_r, 0;
  0, 0_(p-r);
).
$

=== Sens réciproque

Supposons qu'il existe une base $cal(B)$ telle que

$
A="Mat"_cal(B)(phi)
=
mat(
  I_r, 0;
  0, 0_(p-r);
).
$

Alors

$
A^2=A.
$

Donc

$
"Mat"_cal(B)(phi compose phi)
=
"Mat"_cal(B)(phi).
$

Par unicité de l'application linéaire associée à une matrice dans une base donnée,

$
phi compose phi=phi.
$

D'après la proposition 2.6.9, $phi$ est donc une projection.

= Symétries

== Définition 2.6.14

Soient $F$ et $G$ deux sous-espaces vectoriels supplémentaires de $E$ :

$
E=F "⊕" G.
$

Pour tout

$
u=u_F+u_G,
$

avec

$
u_F in F
quad "et" quad
u_G in G,
$

la *symétrie par rapport à $F$ parallèlement à $G$* est l'application

$
sigma_(F,G):E->E,
quad
u_F+u_G -> u_F-u_G.
$

C'est un endomorphisme de $E$.

Un endomorphisme de $E$ obtenu de cette manière est appelé une *symétrie* de $E$.

== Exemple 2.6.15

Dans $RR^2$, avec la base canonique $(e_1,e_2)$, on considère

$
phi:RR^2->RR^2,
quad
(x,y)->(x,-y).
$

Alors

$
phi(x e_1+y e_2)
=
x e_1-y e_2.
$

Ainsi, $phi$ est la symétrie par rapport à

$
"Vect"(e_1)
$

parallèlement à

$
"Vect"(e_2).
$

Géométriquement, il s'agit de la symétrie par rapport à l'axe des abscisses.

== Remarque 2.6.16

Si

$
E=F "⊕" G,
$

alors

$
sigma_(G,F)
=
-sigma_(F,G).
$

== Proposition 2.6.17

Soit

$
phi in L_K(E).
$

Alors $phi$ est une symétrie de $E$ si et seulement si

$
phi compose phi=id_E.
$

Si $phi$ est une symétrie, alors :

- $phi$ est bijective ;
- on a

  $
  phi^(-1)=phi;
  $

- $phi$ est la symétrie par rapport à

  $
  F_phi="Ker"(phi-id_E)
  $

  parallèlement à

  $
  G_phi="Ker"(phi+id_E).
  $

Autrement dit,

$
F_phi
=
{u in E | phi(u)=u},
$

et

$
G_phi
=
{u in E | phi(u)=-u}.
$

=== Preuve — sens direct

Supposons

$
phi=sigma_(F,G).
$

Pour

$
u=u_F+u_G,
$

on a

$
phi(u)=u_F-u_G.
$

Donc

$
phi(phi(u))
=
phi(u_F-u_G)
=
u_F+u_G
=
u.
$

Ainsi,

$
phi compose phi=id_E.
$

=== Preuve — sens réciproque

Supposons

$
phi compose phi=id_E.
$

Posons

$
F_phi="Ker"(phi-id_E)
quad "et" quad
G_phi="Ker"(phi+id_E).
$

Montrons d'abord

$
E=F_phi "⊕" G_phi.
$

Soit

$
u in F_phi inter G_phi.
$

Alors

$
phi(u)=u
quad "et" quad
phi(u)=-u.
$

Donc

$
u=-u,
$

et ainsi

$
u=0_E.
$

L'intersection est donc réduite à $0_E$.

Soit maintenant $u in E$.

On écrit

$
u
=
1/2 (u+phi(u))
+
1/2 (u-phi(u)).
$

Or

$
phi(1/2 (u+phi(u)))
=
1/2 (phi(u)+phi(phi(u)))
=
1/2 (phi(u)+u).
$

Donc

$
1/2 (u+phi(u))
in F_phi.
$

De même,

$
phi(1/2 (u-phi(u)))
=
1/2 (phi(u)-phi(phi(u)))
=
1/2 (phi(u)-u)
=
-1/2 (u-phi(u)).
$

Donc

$
1/2 (u-phi(u))
in G_phi.
$

Ainsi,

$
E=F_phi "⊕" G_phi.
$

Enfin, si

$
u=u_(F_phi)+u_(G_phi),
$

alors

$
phi(u)
=
phi(u_(F_phi))
+
phi(u_(G_phi))
=
u_(F_phi)-u_(G_phi).
$

Donc

$
phi=sigma_(F_phi,G_phi).
$

== Exemple 2.6.18

On considère $CC$ comme un $RR$-espace vectoriel et

$
phi:CC->CC,
quad
z->bar(z).
$

Alors

$
phi compose phi=id_CC.
$

Ainsi, $phi$ est la symétrie par rapport à l'axe réel parallèlement à l'axe imaginaire.

== Remarque 2.6.19

Soit $phi$ une symétrie.

Alors

$
F_phi
=
"Ker"(phi-id_E)
=
"Im"(phi+id_E),
$

et

$
G_phi
=
"Ker"(phi+id_E)
=
"Im"(phi-id_E).
$

=== Démonstration pour $F_phi$

Soit

$
u in "Im"(phi+id_E).
$

Il existe $v in E$ tel que

$
u
=
(phi+id_E)(v)
=
phi(v)+v.
$

Alors

$
phi(u)
=
phi(phi(v))+phi(v)
=
v+phi(v)
=
u.
$

Donc

$
u in F_phi.
$

Ainsi,

$
"Im"(phi+id_E)
subset.eq
F_phi.
$

Réciproquement, soit

$
u in F_phi.
$

Alors

$
phi(u)=u.
$

Donc

$
(phi+id_E)(u)
=
2u.
$

Ainsi,

$
u
=
(phi+id_E)(1/2 u)
in "Im"(phi+id_E).
$

Donc

$
F_phi
=
"Im"(phi+id_E).
$

Le second résultat s'obtient de manière analogue.

== Matrice d'une symétrie dans une base adaptée

Soit

$
phi=sigma_(F,G),
quad
E=F "⊕" G.
$

On choisit une base

$
cal(B)_F=(e_1,dots,e_d)
$

de $F$ et une base

$
cal(B)_G=(e_(d+1),dots,e_p)
$

de $G$.

Alors

$
cal(B)=cal(B)_F union cal(B)_G
$

est une base de $E$.

Pour

$
1<=j<=d,
$

on a

$
phi(e_j)=e_j.
$

Pour

$
d+1<=j<=p,
$

on a

$
phi(e_j)=-e_j.
$

Donc

$
"Mat"_cal(B)(phi)
=
mat(
  I_d, 0;
  0, -I_(p-d);
).
$

== Proposition 2.6.20 — caractérisation matricielle

Soit

$
phi in L_K(E).
$

Alors $phi$ est une symétrie si et seulement s'il existe une base $cal(B)$ de $E$ et

$
d in {0,dots,p}
$

tels que

$
"Mat"_cal(B)(phi)
=
mat(
  I_d, 0;
  0, -I_(p-d);
).
$

== Remarques 2.6.21

1. Si

   $
   E=F "⊕" G,
   $

   alors

   $
   sigma_(F,G)
   =
   pi_(F,G)-pi_(G,F)
   =
   2 pi_(F,G)-id_E,
   $

   puisque

   $
   pi_(F,G)+pi_(G,F)=id_E.
   $

2. Si

   $
   P=X^2-X,
   $

   alors $phi$ est une projection si et seulement si

   $
   P(phi)=0_E.
   $

3. Si

   $
   P=X^2-1,
   $

   alors $phi$ est une symétrie si et seulement si

   $
   P(phi)=0_E.
   $

4. Si $phi$ est une projection sur $F$, alors, dans une base adaptée,

   $
   "rg"(phi)
   =
   "rg"("Mat"_cal(B)(phi))
   =
   dim(F).
   $
