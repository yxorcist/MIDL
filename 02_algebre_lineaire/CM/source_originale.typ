#set page(
  paper: "a4",
  margin: (x: 2cm, y: 1.8cm),
)

#set text(
  lang: "fr",
  size: 11pt,
)

#set par(
  justify: true,
  leading: 0.65em,
)

#set heading(numbering: "1.1")

#align(center)[
  #text(size: 18pt, weight: "bold")[Algèbre linéaire — CM 1]
  #v(0.25em)
  #text(size: 11pt)[Espaces vectoriels et sous-espaces vectoriels]
]

#v(0.8em)

#table(
  columns: (1fr, 1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt,
  [*Type*], [*Date*], [*Source*],
  [CM], [08/09/2026], [CM, faculté],
)

#v(1em)


// ============================================================
// PAGE 1
// ============================================================

= Espaces vectoriels et sous-espaces vectoriels

== Espaces vectoriels

=== Définition

Dans ce cours, le corps des scalaires est principalement $K = ℝ$ ou $K = ℂ$.

Un *espace vectoriel sur $K$*, aussi appelé *$K$-espace vectoriel*, est la donnée d'un ensemble non vide $E$ muni de deux opérations.

*Addition interne :*

$
+ : E × E → E,
quad
(u, v) ↦ u + v
$

*Multiplication externe par un scalaire :*

$
· : K × E → E,
quad
(λ, u) ↦ λ u
$

Ces deux opérations doivent vérifier les huit axiomes suivants, pour tous
$u, v, w ∈ E$ et tous $λ, μ ∈ K$.

1. *Commutativité de l'addition*
   $
   u + v = v + u
   $

2. *Associativité de l'addition*
   $
   (u + v) + w = u + (v + w)
   $

3. *Élément neutre pour l'addition*

   Il existe un unique vecteur $0_E ∈ E$ tel que
   $
   u + 0_E = u = 0_E + u
   $

4. *Existence d'un opposé*

   Pour tout $u ∈ E$, il existe un unique vecteur, noté $-u$, tel que
   $
   u + (-u) = 0_E = (-u) + u
   $

5. *Associativité de la multiplication scalaire*
   $
   (λ μ) u = λ (μ u)
   $

6. *Élément neutre scalaire*
   $
   1 u = u
   $

7. *Distributivité par rapport à l'addition des vecteurs*
   $
   λ (u + v) = λ u + λ v
   $

8. *Distributivité par rapport à l'addition des scalaires*
   $
   (λ + μ) u = λ u + μ u
   $

=== Terminologie

- Les éléments de $E$ sont appelés *vecteurs*.
- Les éléments de $K$ sont appelés *scalaires*.
- $0_E$ est appelé le *vecteur nul* de $E$.
- Pour tout $u ∈ E$, son opposé est unique et est noté $-u$.

*Remarque.* Un espace vectoriel n'est jamais vide, puisqu'il contient nécessairement $0_E$.


// ============================================================
// PAGE 2
// ============================================================

== Exemples fondamentaux d'espaces vectoriels

=== L'espace $K^n$

Pour $n ∈ ℕ$ avec $n ≥ 1$,

$
K^n = { (x_1, …, x_n) ; x_1 ∈ K, …, x_n ∈ K }
$

est un $K$-espace vectoriel avec les opérations définies coordonnée par coordonnée :

$
(x_1, …, x_n) + (y_1, …, y_n)
=
(x_1 + y_1, …, x_n + y_n)
$

et

$
λ (x_1, …, x_n)
=
(λ x_1, …, λ x_n)
$

On peut voir $K^n$ comme le produit de $n$ copies de $K$ :

$
K^n = K × K × … × K
$

=== Produit de deux espaces vectoriels

Soient $E_1$ et $E_2$ deux $K$-espaces vectoriels.

Alors

$
E_1 × E_2
=
{ (x_1, x_2) ; x_1 ∈ E_1, x_2 ∈ E_2 }
$

est un $K$-espace vectoriel pour les opérations

$
(x_1, x_2) + (y_1, y_2)
=
(x_1 + y_1, x_2 + y_2)
$

et

$
λ (x_1, x_2)
=
(λ x_1, λ x_2)
$

=== Autres exemples

- $K[X]$ : ensemble des polynômes à coefficients dans $K$.
- $M_(m,p)(K)$ : ensemble des matrices à $m$ lignes et $p$ colonnes à coefficients dans $K$.
- $K^ℕ$ : ensemble des suites à valeurs dans $K$.

=== Espaces de fonctions

Soit $I$ un ensemble non vide.

L'ensemble des applications de $I$ dans $K$, noté $F(I, K)$, est un $K$-espace vectoriel pour les opérations définies point par point :

$
(f + g)(x) = f(x) + g(x)
$

et

$
(λ f)(x) = λ f(x)
$

Plus généralement, si $F$ est un $K$-espace vectoriel, alors l'ensemble
$F(I, F)$ des applications de $I$ dans $F$ est lui aussi un $K$-espace vectoriel, avec les mêmes opérations définies point par point.

*Remarque.* $ℂ$ est un $ℂ$-espace vectoriel, mais également un $ℝ$-espace vectoriel.


// ============================================================
// PAGE 3
// ============================================================

== Règles de calcul dans un espace vectoriel

On définit la soustraction par

$
u - v := u + (-v)
$

pour tous $u, v ∈ E$.

Pour tous $u, v, w ∈ E$ et tous $λ, μ ∈ K$, on a les règles suivantes.

1. *Simplification additive*

   Si
   $
   u + v = u + w,
   $
   alors
   $
   v = w.
   $

2. $
   λ 0_E = 0_E
   $

3. $
   0 v = 0_E
   $

4. $
   (-λ) v = -(λ v) = λ (-v)
   $

   En particulier,
   $
   (-λ) (-v) = λ v.
   $

5. $
   λ (u - v) = λ u - λ v
   $

6. $
   (λ - μ) v = λ v - μ v
   $

7. Si
   $
   λ v = 0_E,
   $
   alors
   $
   λ = 0
   $
   ou
   $
   v = 0_E.
   $

8. Si
   $
   λ v = λ u
   $
   et $λ ≠ 0$, alors
   $
   v = u.
   $

9. Si
   $
   λ v = μ v
   $
   et $v ≠ 0_E$, alors
   $
   λ = μ.
   $

== Stabilité d'une partie

Soit $E$ un $K$-espace vectoriel et soit $F$ une partie de $E$.

=== Stabilité par addition

$F$ est *stable par addition* si, pour tous $u, v ∈ F$,

$
u + v ∈ F.
$

=== Stabilité par multiplication externe

$F$ est *stable par multiplication externe* si, pour tout $λ ∈ K$ et tout $v ∈ F$,

$
λ v ∈ F.
$


// ============================================================
// PAGES 4 ET 5
// ============================================================

== Sous-espaces vectoriels

=== Définition

Soit $E$ un $K$-espace vectoriel.

Une partie $F$ de $E$ est un *sous-espace vectoriel* de $E$ si :

1. $F ≠ ∅$ ;
2. $F$ est stable par addition ;
3. $F$ est stable par multiplication externe.

=== Le vecteur nul appartient à tout sous-espace vectoriel

Si $F$ est un sous-espace vectoriel de $E$, alors

$
0_E ∈ F.
$

*Démonstration.*

Comme $F ≠ ∅$, il existe $v ∈ F$.

La stabilité par multiplication externe donne

$
-v = (-1) v ∈ F.
$

Puis la stabilité par addition donne

$
0_E = v + (-v) ∈ F.
$

Ainsi, dans la définition d'un sous-espace vectoriel, la condition $F ≠ ∅$ peut être remplacée par la condition

$
0_E ∈ F.
$

=== Structure vectorielle induite

Si $F$ est un sous-espace vectoriel de $E$, alors $F$ est lui-même un $K$-espace vectoriel pour les opérations induites par celles de $E$.

=== Exemples

- $∅$ n'est pas un sous-espace vectoriel de $E$.
- ${0_E}$ est un sous-espace vectoriel de $E$.
- $E$ est un sous-espace vectoriel de lui-même.
- Si $v ∈ E$, alors
  $
  K v = { λ v ; λ ∈ K }
  $
  est un sous-espace vectoriel de $E$.

=== Critère pratique de sous-espace vectoriel

Soit $F ⊆ E$.

Alors $F$ est un sous-espace vectoriel de $E$ si et seulement si :

1. $F ≠ ∅$ ;

2. pour tout $λ ∈ K$ et tous $u, v ∈ F$,
   $
   λ u + v ∈ F.
   $

La première condition peut aussi être remplacée par $0_E ∈ F$.

==== Démonstration : sens direct $⇒$

Supposons que $F$ soit un sous-espace vectoriel de $E$.

On a déjà $F ≠ ∅$.

Soient $λ ∈ K$ et $u, v ∈ F$.

Comme $F$ est stable par multiplication externe,

$
λ u ∈ F.
$

Comme $F$ est stable par addition,

$
λ u + v ∈ F.
$

La deuxième condition est donc vérifiée.

==== Démonstration : sens réciproque $⇐$

Supposons maintenant que :

- $F ≠ ∅$ ;
- pour tout $λ ∈ K$ et tous $u, v ∈ F$, on a $λ u + v ∈ F$.

*Stabilité par addition.*

Soient $u, v ∈ F$. En prenant $λ = 1$,

$
u + v = 1 u + v ∈ F.
$

Donc $F$ est stable par addition.

*Présence du vecteur nul.*

Comme $F ≠ ∅$, choisissons $v ∈ F$.

En prenant $λ = -1$ et $u = v$,

$
0_E = (-1) v + v ∈ F.
$

Donc $0_E ∈ F$.

*Stabilité par multiplication externe.*

Soient $λ ∈ K$ et $u ∈ F$.

Comme $0_E ∈ F$,

$
λ u = λ u + 0_E ∈ F.
$

Donc $F$ est stable par multiplication externe.

Ainsi, $F$ est un sous-espace vectoriel de $E$.


// ============================================================
// PAGE 6
// ============================================================

= Sous-espaces engendrés

== Intersection de sous-espaces vectoriels

Soit $p ∈ ℕ$ avec $p ≥ 2$.

Soient $F_1, …, F_p$ des sous-espaces vectoriels de $E$.

On définit leur intersection par

$
F_1 ∩ F_2 ∩ … ∩ F_p
=
{ v ∈ E ; v ∈ F_i " pour tout " i ∈ {1, …, p} }.
$

Pour tout $i ∈ {1, …, p}$,

$
F_1 ∩ … ∩ F_p ⊆ F_i.
$

=== Proposition

L'intersection

$
F_1 ∩ … ∩ F_p
$

est un sous-espace vectoriel de $E$.

=== Démonstration

Pour tout $i$, puisque $F_i$ est un sous-espace vectoriel de $E$,

$
0_E ∈ F_i.
$

Donc

$
0_E ∈ F_1 ∩ … ∩ F_p.
$

Soient maintenant

$
u, v ∈ F_1 ∩ … ∩ F_p
$

et soit $λ ∈ K$.

Alors, pour tout $i$,

$
u ∈ F_i
$

et

$
v ∈ F_i.
$

Comme $F_i$ est un sous-espace vectoriel,

$
λ u + v ∈ F_i.
$

Cette propriété étant vraie pour tout $i$,

$
λ u + v ∈ F_1 ∩ … ∩ F_p.
$

Le critère pratique montre donc que

$
F_1 ∩ … ∩ F_p
$

est un sous-espace vectoriel de $E$.


// ============================================================
// PAGE 7
// ============================================================

== Sous-espace vectoriel engendré par une partie

Soit $U$ une partie de $E$.

=== Proposition

Il existe un unique sous-espace vectoriel de $E$ qui contient $U$ et qui est le plus petit, pour l'inclusion, parmi tous les sous-espaces vectoriels de $E$ contenant $U$.

On le note

$
"Vect"(U).
$

Autrement dit :

- $
  U ⊆ "Vect"(U)
  $

- si $F$ est un sous-espace vectoriel de $E$ et $U ⊆ F$, alors
  $
  "Vect"(U) ⊆ F.
  $

Le sous-espace $"Vect"(U)$ est appelé le *sous-espace vectoriel engendré par $U$*.

=== Exemples

- $
  "Vect"(E) = E
  $

- si $F$ est déjà un sous-espace vectoriel de $E$,
  $
  "Vect"(F) = F
  $

- si $v ∈ E$,
  $
  "Vect"({v}) = K v
  $

- $
  "Vect"(∅) = {0_E}
  $

== Familles de vecteurs

=== Définition

Une *famille finie de vecteurs* est une suite finie

$
(u_1, …, u_k).
$

L'ordre compte et un même vecteur peut être répété.

=== Concaténation

La concaténation des familles

$
(u_1, …, u_k)
$

et

$
(v_1, …, v_p)
$

est la famille

$
(u_1, …, u_k, v_1, …, v_p).
$

== Combinaisons linéaires

Soit $E$ un $K$-espace vectoriel, soit $k ∈ ℕ$ avec $k ≥ 1$, et soient

$
u_1, …, u_k ∈ E.
$

=== Définition

Une *combinaison $K$-linéaire* de $u_1, …, u_k$ est un vecteur de la forme

$
α_1 u_1 + α_2 u_2 + … + α_k u_k
$

avec

$
α_1, …, α_k ∈ K.
$

Les scalaires $α_1, …, α_k$ sont appelés les *coefficients* de la combinaison linéaire.


// ============================================================
// PAGE 8
// ============================================================

== Sous-espace engendré par une famille finie

Soient $u_1, …, u_k ∈ E$.

On considère l'ensemble de toutes leurs combinaisons linéaires :

$
V
=
{
  α_1 u_1 + … + α_k u_k
  ;
  α_1 ∈ K, …, α_k ∈ K
}.
$

Cet ensemble $V$ est un sous-espace vectoriel de $E$.

=== Proposition

$V$ est le sous-espace vectoriel engendré par $u_1, …, u_k$.

On note

$
V = "Vect"(u_1, …, u_k).
$

Ainsi,

$
"Vect"(u_1, …, u_k)
=
{
  α_1 u_1 + … + α_k u_k
  ;
  α_1 ∈ K, …, α_k ∈ K
}.
$
