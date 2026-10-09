#import "../../style.typ": *

// source-confidence: high
// source-note: handwritten CM pages supplied in the batch of 09/10/2026.
// source-note: session date resolved from the MIDL timetable: Algèbre linéaire CM on 08/10/2026, 07:45–09:15.
// source-note: no professor CM file is present in the Google Drive course folder for cross-checking; transcription follows the handwritten source.
// source-note: the source ends by writing the title of Chapter 4, without substantive Chapter 4 content.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 08/10/2026]
  #v(0.2em)
  #text(size: 11pt)[Rang et matrices semblables]
]
#line(length: 100%)
#v(0.7em)

= Complément sur les matrices rang-équivalentes

== Preuve de la proposition 3.2.14

On rappelle que deux matrices $A$ et $B$ de même format sont rang-équivalentes si

$
B=P A Q
$

avec $P$ et $Q$ inversibles.

=== Sens direct

Si $A$ est rang-équivalente à

$
J_(n,p)(r)
=
mat(
  I_r, 0;
  0, 0;
),
$

alors, par invariance du rang par multiplication à gauche et à droite par des matrices inversibles,

$
"rg"(A)
=
"rg"(J_(n,p)(r))
=
r.
$

=== Sens réciproque

Supposons

$
"rg"(A)=r.
$

Soit

$
phi:K^p -> K^n
$

l'application linéaire dont la matrice dans les bases canoniques est $A$.

D'après le théorème du rang,

$
dim("Ker"(phi))
=
p-r.
$

On choisit une base

$
(e_1,dots,e_(p-r))
$

de $"Ker"(phi)$ et on la complète en une base

$
cal(E)
=
(e_1,dots,e_p)
$

de $K^p$.

La famille

$
(
phi(e_(p-r+1)),
dots,
phi(e_p)
)
$

est alors une base de $"Im"(phi)$.

On la complète en une base $cal(F)$ de $K^n$.

Dans ces bases adaptées, la matrice de $phi$ contient un bloc identité de taille $r$ et des zéros ailleurs. Après une permutation des vecteurs de base, on obtient exactement

$
J_(n,p)(r).
$

Ainsi $A$ est rang-équivalente à $J_(n,p)(r)$.

Par conséquent, deux matrices de même format sont rang-équivalentes si et seulement si elles ont le même rang.

== Proposition — Rang et transposée

Pour toute matrice $A$,

$
"rg"(A)
=
"rg"(A^T).
$

En effet, si

$
A
~

J_(n,p)(r),
$

alors, en transposant la relation de rang-équivalence,

$
A^T
~

J_(p,n)(r).
$

Donc les deux matrices ont le même rang.

== Corollaire

Le rang d'une matrice est à la fois :

- le rang de la famille de ses vecteurs colonnes ;
- le rang de la famille de ses vecteurs lignes.

= Méthodes de calcul du rang d'une matrice

Soit

$
A in M_(n,p)(K).
$

Les notes donnent plusieurs méthodes équivalentes.

1. Échelonner la matrice par opérations élémentaires sur les lignes ou les colonnes : le rang est le nombre de lignes ou colonnes non nulles dans la forme échelonnée.
2. Compter les pivots obtenus par élimination.
3. Chercher le plus grand mineur non nul : son ordre est le rang de $A$.
4. Calculer la dimension de l'espace engendré par les colonnes, ou de manière équivalente par les lignes.

== Exemple 3.2.18

L'exemple manuscrit applique une élimination de Gauss à une matrice $3 times 3$ et obtient une forme presque échelonnée avec exactement deux lignes non nulles.

On conclut :

$
"rg"(A)=2.
$

= 3.3 — Matrices semblables

== Définition 3.3.1

Soient

$
A,A' in M_p(K).
$

On dit que $A'$ est *semblable* à $A$ s'il existe

$
P in GL_p(K)
$

tel que

$
A'
=
P^(-1) A P.
$

== Remarque 3.3.2

La relation « être semblable à » est une relation d'équivalence.

Elle est :

- réflexive, en prenant $P=I_p$ ;
- symétrique : si $A'=P^(-1)AP$, alors $A=P A' P^(-1)$ ;
- transitive, par composition des matrices de changement de base.

Deux matrices semblables sont rang-équivalentes.

La réciproque est fausse : avoir le même rang ne suffit pas pour être semblables.

== Lemme 3.3.3

Soient $A,A' in M_p(K)$ avec

$
A'=P^(-1) A P.
$

Alors, pour tout $k in NN$,

$
(A')^k
=
P^(-1) A^k P.
$

Plus généralement, pour tout polynôme

$
f in K[X],
$

on a

$
f(A')
=
P^(-1) f(A) P.
$

=== Preuve pour les puissances

Pour $k=0$,

$
(A')^0
=
I_p
=
P^(-1) I_p P.
$

Si la propriété est vraie au rang $k$, alors

$
(A')^(k+1)
=
(A')^k A'
=
(P^(-1)A^kP)(P^(-1)AP)
=
P^(-1)A^(k+1)P.
$

On conclut par récurrence.

Pour un polynôme

$
f(X)=sum_(i=0)^d a_i X^i,
$

on obtient

$
f(A')
=
sum_(i=0)^d a_i (A')^i
=
P^(-1)
(
sum_(i=0)^d a_i A^i
)
P
=
P^(-1)f(A)P.
$

== Proposition 3.3.4

Soient $A$ et $A'$ deux matrices semblables.

Alors :

1. pour tout $k in NN$, $A^k$ et $(A')^k$ sont semblables ;
2. pour tout $f in K[X]$, $f(A)$ et $f(A')$ sont semblables ;
3. $A$ est inversible si et seulement si $A'$ est inversible, et dans ce cas leurs inverses sont semblables ;
4. on a

   $
   "rg"(A)
   =
   "rg"(A');
   $

5. on a

   $
   "tr"(A)
   =
   "tr"(A');
   $

6. on a

   $
   det(A)
   =
   det(A').
   $

=== Justifications

Les deux premiers points découlent du lemme précédent.

Pour l'inversibilité,

$
A'=P^(-1)AP
$

est inversible exactement lorsque $A$ l'est, et

$
(A')^(-1)
=
P^(-1)A^(-1)P.
$

L'égalité des rangs vient du fait que deux matrices semblables sont rang-équivalentes.

Pour la trace, on utilise

$
"tr"(BC)="tr"(CB).
$

Ainsi,

$
"tr"(P^(-1)AP)
=
"tr"(APP^(-1))
=
"tr"(A).
$

Enfin,

$
det(P^(-1)AP)
=
det(P^(-1)) det(A) det(P)
=
det(A).
$

== Attention

Deux matrices semblables ont donc même rang, même trace et même déterminant.

La réciproque est fausse : ces trois invariants ne suffisent pas, en général, à garantir que deux matrices sont semblables.

= Matrices d'un même endomorphisme dans deux bases

Soit $phi$ un endomorphisme de $E$ et soient $cal(B)$ et $cal(B)'$ deux bases de $E$.

La formule de changement de base donne

$
"Mat"_(cal(B)')(phi)
=
P^(-1)
"Mat"_(cal(B))(phi)
P.
$

Les matrices d'un même endomorphisme dans deux bases différentes sont donc semblables.

== Définition 3.3.5 — Trace et déterminant d'un endomorphisme

Soit

$
phi in L(E).
$

On définit la *trace* de $phi$ par

$
"tr"(phi)
=
"tr"("Mat"_(cal(B))(phi)),
$

où $cal(B)$ est une base quelconque de $E$.

De même, on définit le *déterminant* de $phi$ par

$
det(phi)
=
det("Mat"_(cal(B))(phi)).
$

Ces définitions ne dépendent pas du choix de la base puisque deux matrices représentant le même endomorphisme dans deux bases sont semblables.

== Exemple 3.3.6 — Projection et symétrie

Supposons

$
E=F "⊕" G,
$

avec

$
dim(E)=p
quad "et" quad
dim(F)=d.
$

Dans une base adaptée à $F$ et $G$, la projection $pi_(F,G)$ a pour matrice

$
mat(
  I_d, 0;
  0, 0;
).
$

On obtient alors

$
"rg"(pi_(F,G))
=
d
=
dim(F),
$

$
"tr"(pi_(F,G))
=
d
=
dim(F),
$

et, si $G != {0_E}$,

$
det(pi_(F,G))
=
0.
$

La symétrie $sigma_(F,G)$ a pour matrice

$
mat(
  I_d, 0;
  0, -I_(p-d);
).
$

Ainsi,

$
"rg"(sigma_(F,G))
=
p
=
dim(E),
$

$
"tr"(sigma_(F,G))
=
d-(p-d)
=
2d-p,
$

et

$
det(sigma_(F,G))
=
(-1)^(p-d)
=
(-1)^(dim(G)).
$

// La source manuscrite se termine ici par le titre :
// « Chapitre 4 — Éléments propres d'un endomorphisme ».
// Aucun contenu substantiel du chapitre 4 n'apparaît encore dans ce lot.
