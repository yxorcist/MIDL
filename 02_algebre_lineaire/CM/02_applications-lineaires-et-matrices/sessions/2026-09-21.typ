#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 21/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Rang, composition et matrices]
]
#line(length: 100%)
#v(0.7em)

= Compléments sur les applications linéaires

== Suite du résultat précédent

Soit

$
B = (u_1, ..., u_p)
$

une base de $E$.

2. On a les équivalences suivantes :

   $
   phi " est injective"
   <=>
   phi(B) " est libre",
   $

   $
   phi " est surjective"
   <=>
   phi(B) " engendre " F,
   $

   $
   phi " est bijective"
   <=>
   phi(B) " est une base de " F.
   $

== Remarque 2.1.17

Si une famille $U$ engendre $E$, alors $phi(U)$ engendre $"Im"(phi)$.

En particulier,

$
phi("Vect"(U)) = "Vect"(phi(U)).
$

== Proposition 2.1.18

On suppose $E$ et $F$ de dimension finie et

$
phi in "ℒ"_K(E,F).
$

1. Si $phi$ est injective, alors

   $
   dim_K(E) <= dim_K(F).
   $

2. Si $phi$ est surjective, alors

   $
   dim_K(E) >= dim_K(F).
   $

3. Si $phi$ est bijective, alors

   $
   dim_K(E) = dim_K(F).
   $

=== Démonstration du point 1

Soit

$
B = (u_1, ..., u_p)
$

une base de $E$, avec

$
dim_K(E) = p.
$

Puisque $phi$ est injective, la famille

$
phi(B) = (phi(u_1), ..., phi(u_p))
$

est libre dans $F$. Donc

$
dim_K(E)
=
p
=
"card"(phi(B))
<=
dim_K(F).
$

= 2.2 Rang d'une application linéaire

Fixons deux $K$-espaces vectoriels $E$ et $F$, avec $E$ de dimension finie, et une application linéaire

$
phi : E -> F.
$

On remarque que $"Im"(phi)$ est de dimension finie.

== Définition 2.2.1

Le *rang* de $phi$ est

$
"rg"(phi)
=
dim_K("Im"(phi)).
$

== Remarque 2.2.2

- Si $F$ est de dimension finie,

  $
  "rg"(phi) <= dim_K(F).
  $

- On a toujours

  $
  "rg"(phi) <= dim_K(E).
  $

== Théorème 2.2.3 — théorème du rang

Soient $E$ et $F$ deux $K$-espaces vectoriels, avec $E$ de dimension finie, et

$
phi in "ℒ"_K(E,F).
$

Alors

$
dim_K(E)
=
dim_K("Ker"(phi))
+
"rg"(phi).
$

=== Démonstration

On fixe un supplémentaire $S$ de $"Ker"(phi)$ dans $E$ :

$
E = "Ker"(phi) ⊕ S.
$

On construit un isomorphisme entre $S$ et $"Im"(phi)$ en considérant la restriction

$
psi : S -> "Im"(phi),
quad
u -> phi(u).
$

Montrons d'abord que $psi$ est injective.

Soit $u in "Ker"(psi)$. Alors $u in S$ et

$
psi(u) = 0_F.
$

Donc $u in S ∩ "Ker"(phi)$. Comme la somme est directe,

$
S ∩ "Ker"(phi) = {0_E}.
$

Ainsi

$
"Ker"(psi) = {0_E},
$

donc $psi$ est injective.

Montrons maintenant que $psi$ est surjective.

Soit $v in "Im"(phi)$. Il existe $w in E$ tel que

$
v = phi(w).
$

Comme

$
E = S ⊕ "Ker"(phi),
$

il existe $u in S$ et $x in "Ker"(phi)$ tels que

$
w = u + x.
$

Alors

$
v
=
phi(w)
=
phi(u + x)
=
phi(u) + phi(x)
=
phi(u)
=
psi(u).
$

Donc $psi$ est surjective, et par conséquent c'est un isomorphisme.

Finalement,

$
"rg"(phi)
=
dim_K("Im"(phi))
=
dim_K(S)
=
dim_K(E) - dim_K("Ker"(phi)).
$

D'où

$
dim_K(E)
=
dim_K("Ker"(phi))
+
"rg"(phi).
$

== Corollaire 2.2.4

On suppose de plus que

$
dim_K(E) = dim_K(F).
$

Alors

$
phi " est injective"
<=>
phi " est bijective"
<=>
phi " est surjective".
$

Ce résultat est faux en général si $E$ et $F$ ne sont pas de dimension finie.

= 2.3 Composition d'applications linéaires

Soient

$
phi : X -> Y
$

et

$
psi : Y -> Z
$

deux applications.

On définit leur composée

$
psi ∘ phi : X -> Z
$

par

$
x -> psi(phi(x)).
$

== Proposition 2.3.1

Si $phi$ et $psi$ sont linéaires, alors

$
psi ∘ phi
$

est linéaire.

Si

$
phi : E -> F
$

est une application bijective, elle possède une bijection réciproque

$
phi^(-1) : F -> E
$

telle que

$
phi^(-1) ∘ phi = "id"_E
$

et

$
phi ∘ phi^(-1) = "id"_F.
$

== Proposition 2.3.2

Si $phi$ est linéaire et bijective, alors $phi^(-1)$ est linéaire.

=== Démonstration

Soient $u,v in F$ et $lambda in K$.

Posons

$
u' = phi^(-1)(u)
quad "et" quad
v' = phi^(-1)(v).
$

Alors

$
u = phi(u')
quad "et" quad
v = phi(v').
$

On obtient

$
phi^(-1)(lambda u + v)
=
phi^(-1)(lambda phi(u') + phi(v'))
$

$
=
phi^(-1)(phi(lambda u' + v'))
$

$
=
lambda u' + v'
$

$
=
lambda phi^(-1)(u) + phi^(-1)(v).
$

Donc $phi^(-1)$ est linéaire.

= 2.4 Matrices

== Matrices triangulaires et diagonales

Une matrice triangulaire supérieure est de la forme

$
mat(
  a_(1,1), dots, a_(1,n);
  dots.v, dots.down, dots.v;
  0, dots, a_(n,n)
)
$

avec

$
a_(i,j) = 0
quad "si" quad
i > j.
$

Une matrice triangulaire inférieure est de la forme

$
mat(
  a_(1,1), dots, 0;
  dots.v, dots.down, dots.v;
  a_(n,1), dots, a_(n,n)
)
$

avec

$
a_(i,j) = 0
quad "si" quad
i < j.
$

Une matrice carrée est diagonale si

$
a_(i,j) = 0
quad "si" quad
i != j.
$

On la note

$
"diag"(a_(1,1), ..., a_(n,n)).
$

== Notation 2.4.1

Dans $M_(n,p)(K)$, on considère les matrices élémentaires $E_(i,j)$ dont tous les coefficients sont nuls sauf celui de la ligne $i$ et de la colonne $j$, qui vaut $1$.

Ainsi, si

$
A = (a_(i,j)) in M_(n,p)(K),
$

alors

$
A
=
sum_(i=1)^n sum_(j=1)^p a_(i,j) E_(i,j).
$

== Théorème 2.4.2

L'ensemble

$
M_(n,p)(K)
$

est un $K$-espace vectoriel. Son vecteur nul est la matrice nulle, notée $O$ ou $O_(n,p)$.

La famille

$
(E_(1,1), E_(1,2), ..., E_(1,p), E_(2,1), ..., E_(n,p))
$

est une base de $M_(n,p)(K)$, appelée *base canonique*.

En particulier,

$
dim_K(M_(n,p)(K)) = n p.
$

== 2.4.3 Produit matriciel

Soient

$
A = (a_(i,j)) in M_(n,p)(K)
$

et

$
B = (b_(j,k)) in M_(p,q)(K).
$

Alors

$
A B = C in M_(n,q)(K),
$

où

$
C_(i,k)
=
sum_(j=1)^p a_(i,j) b_(j,k).
$

=== Remarque 2.4.3

Pour les matrices élémentaires,

$
E_(i,j) E_(k,l)
=
cases(
  O & "si " j != k,
  E_(i,l) & "si " j = k,
).
$

=== Observations

- Le produit matriciel est associatif.
- Le produit matriciel n'est pas commutatif. Par exemple,

  $
  mat(1, 0) mat(0; 1)
  =
  mat(0)
  $

  tandis que

  $
  mat(0; 1) mat(1, 0)
  =
  mat(0, 0; 1, 0).
  $

- Il peut arriver que $A != O$ et $B != O$ mais que

  $
  A B = O.
  $

- Pour $lambda in K$,

  $
  lambda (A B)
  =
  (lambda A) B
  =
  A (lambda B).
  $

- La matrice identité

  $
  I_n = "diag"(1, ..., 1)
  $

  vérifie, pour les tailles compatibles,

  $
  I_n A = A
  quad "et" quad
  B I_n = B.
  $

== 2.4.4 Matrices par blocs

Une matrice peut être découpée en sous-matrices, appelées *blocs*.

On peut par exemple l'écrire sous la forme

$
A
=
mat(
  A_1, A_2;
  A_3, A_4
),
$

ou plus généralement sous la forme d'une matrice de blocs $(A_(i,j))$.

= 2.4.5 Transposée

== Définition 2.4.5

Soit

$
A = (a_(i,j)) in M_(n,p)(K).
$

On définit sa transposée

$
A^T = (a'_(i,j)) in M_(p,n)(K)
$

par

$
a'_(i,j) = a_(j,i).
$

Autrement dit, on échange les lignes et les colonnes de $A$.

La transposée définit une application

$
T : M_(n,p)(K) -> M_(p,n)(K),
quad
A -> A^T.
$

== Proposition 2.4.6

1. Si $A in M_(n,p)(K)$, alors

   $
   (A^T)^T = A.
   $

2. Si $A,B in M_(n,p)(K)$ et $lambda in K$, alors

   $
   (lambda A + B)^T
   =
   lambda A^T + B^T.
   $

   Autrement dit, l'application de transposition est linéaire.

3. Si

   $
   A in M_(n,p)(K)
   quad "et" quad
   B in M_(p,q)(K),
   $

   alors

   $
   (A B)^T = B^T A^T.
   $

=== Démonstration du point 1

Posons

$
A = (a_(i,j)).
$

Si

$
A^T = (b_(i,j)),
$

alors

$
b_(i,j) = a_(j,i).
$

En transposant une seconde fois, le coefficient $(i,j)$ redevient $a_(i,j)$.

Donc

$
(A^T)^T = A.
$

=== Démonstration du point 2

Posons

$
A = (a_(i,j))
quad "et" quad
B = (b_(i,j)).
$

Le coefficient $(i,j)$ de

$
(lambda A + B)^T
$

est

$
lambda a_(j,i) + b_(j,i),
$

qui est exactement le coefficient $(i,j)$ de

$
lambda A^T + B^T.
$

Ainsi,

$
(lambda A + B)^T
=
lambda A^T + B^T.
$
