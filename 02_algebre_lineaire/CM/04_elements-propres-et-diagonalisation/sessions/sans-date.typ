#import "../../style.typ": *

// source-confidence: high
// source-note: photographies manuscrites 10911, 10912 et 10913 fournies le 16/10/2026.
// source-note: aucun jour de séance n'est visible ; fichier nommé « sans-date » pour ne pas inventer de date.
// source-note: le haut de la photo 10911 reprend la fin du chapitre 3 (matrices semblables, rang, trace, déterminant, projections/symétries), déjà présent dans 2026-10-08.typ ; il n'est pas dupliqué.
// source-note: définitions, exemples et démonstration de l'indépendance des vecteurs propres reproduits dans l'ordre des feuilles.
// source-uncertainty: certains numéros de sous-sections sont peu lisibles ; le découpage 4.1/4.2 est confirmé, la succession mathématique est conservée.
// source-uncertainty: l'exemple de rotation est transcrit sur le corps réel, conformément à la conclusion manuscrite « pas diagonalisable ».

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — séance non datée]
  #v(0.2em)
  #text(size: 11pt)[Chapitre 4 — Éléments propres d'un endomorphisme, diagonalisabilité]
]
#line(length: 100%)
#v(0.7em)

= 4.1 — Diagonalisabilité

== Définition 4.1.1 — Endomorphisme diagonalisable

Soit $E$ un espace vectoriel de dimension finie $n$ sur un corps $K$ et soit $phi in cal(L)(E)$.

L'endomorphisme $phi$ est *diagonalisable* s'il existe une base $cal(B)$ de $E$ telle que

$
"Mat"_(cal(B))(phi)
=
mat(
  lambda_1,0,dots,0;
  0,lambda_2,dots,0;
  dots.v,dots.v,dots.down,dots.v;
  0,0,dots,lambda_n
).
$

Cette matrice est notée

$
"diag"(lambda_1,dots,lambda_n).
$

== Exemples 4.1.2

- L'identité est diagonalisable, car sa matrice dans toute base est l'identité $I_n$.
- Toute homothétie $lambda "Id"_E$ est diagonalisable, car sa matrice dans toute base est $lambda I_n$.
- Les projections et les symétries associées à une somme directe $E=F "⊕" G$ sont diagonalisables. Dans une base adaptée, leurs matrices sont respectivement

  $
  mat(I_(dim(F)),0;0,0)
  quad "et" quad
  mat(I_(dim(F)),0;0,-I_(dim(G))).
  $

== Exemple 4.1.3 — Une application non diagonalisable sur $RR$

Dans $RR^2$, on considère

$
phi(x,y)=(y,-x).
$

Dans la base canonique,

$
"Mat"(phi)=mat(0,1;-1,0).
$

Si $phi$ était diagonalisable sur $RR$, il existerait un vecteur non nul $(x,y)$ et un réel $lambda$ tels que

$
phi(x,y)=lambda (x,y).
$

Cela imposerait

$
cases(
  y=lambda x,
  -x=lambda y
).
$

En remplaçant $y$ par $lambda x$,

$
(1+lambda^2)x=0.
$

Comme $1+lambda^2>0$ pour tout $lambda in RR$, on obtient $x=0$, puis $y=0$ : contradiction.

Il n'existe aucun vecteur propre réel non nul. Ainsi $phi$ n'est *pas diagonalisable sur $RR$*.

== Définition 4.1.4 — Matrice diagonalisable

Une matrice $A in M_n(K)$ est dite *diagonalisable* si elle est semblable à une matrice diagonale, c'est-à-dire s'il existe

$
P in "GL"_n(K)
quad "et" quad
D="diag"(lambda_1,dots,lambda_n)
$

telles que

$
P^(-1) A P=D.
$

Cela revient à dire que l'endomorphisme associé est diagonalisable.

= 4.2 — Valeurs propres, vecteurs propres et sous-espaces propres

== 4.2.1 — Notations

Dans une base $cal(B)=(e_1,dots,e_n)$ dans laquelle $phi$ est représenté par

$
"Mat"_(cal(B))(phi)="diag"(lambda_1,dots,lambda_n),
$

les coefficients diagonaux traduisent les relations

$
phi(e_j)=lambda_j e_j
quad "pour tout " j in {1,dots,n}.
$

Les vecteurs de cette base sont donc transformés en un multiple d'eux-mêmes.

== Définition 4.2.1 — Valeur propre et vecteur propre

Soit $phi in cal(L)(E)$.

Un scalaire $lambda in K$ est une *valeur propre* de $phi$ s'il existe un vecteur $v in E$ *non nul* tel que

$
phi(v)=lambda v.
$

Un tel vecteur non nul $v$ est appelé *vecteur propre* de $phi$ associé à la valeur propre $lambda$.

== Exemples 4.2.2

=== Identité et homothéties

Pour l'identité,

$
"Id"_E(v)=v
quad "pour tout " v in E.
$

Si $E != {0_E}$, son unique valeur propre est $1$, et tous les vecteurs non nuls de $E$ lui sont associés.

Pour l'homothétie $phi=lambda "Id"_E$, l'unique valeur propre est $lambda$, et tous les vecteurs non nuls sont des vecteurs propres associés.

=== Projection

Soit $E=F "⊕" G$ et soit $pi$ la projection sur $F$ parallèlement à $G$.

Pour $v in F$,

$
pi(v)=v.
$

Les vecteurs *non nuls* de $F$ sont donc propres pour la valeur $1$.

Pour $w in G$,

$
pi(w)=0_E.
$

Les vecteurs *non nuls* de $G$ sont donc propres pour la valeur $0$.

Lorsque $F$ et $G$ sont tous deux non nuls, les valeurs propres de $pi$ sont $0$ et $1$.

=== Symétrie

Soit $sigma$ la symétrie associée à la même décomposition $E=F "⊕" G$.

Pour $v in F$ et $w in G$,

$
sigma(v)=v
quad "et" quad
sigma(w)=-w.
$

Les vecteurs non nuls de $F$ sont propres pour $1$ et ceux de $G$ sont propres pour $-1$.

== Remarque 4.2.3 — Unicité de la valeur propre associée à un vecteur

Un vecteur propre non nul $v$ possède *une seule* valeur propre associée.

En effet, si

$
phi(v)=lambda v=mu v,
$

alors

$
(lambda-mu)v=0_E.
$

Comme $v != 0_E$, on obtient $lambda=mu$.

En revanche, une valeur propre peut posséder une infinité de vecteurs propres : si $v$ est propre associé à $lambda$, alors pour tout $a in K$ non nul,

$
phi(a v)=a phi(v)=a lambda v=lambda(a v).
$

== Lemme 4.2.4 — Caractérisation d'une valeur propre

Soient $phi in cal(L)(E)$ et $lambda in K$.

Les assertions suivantes sont équivalentes :

1. $lambda$ est une valeur propre de $phi$ ;
2. il existe $v != 0_E$ tel que $phi(v)=lambda v$ ;
3. $"Ker"(phi-lambda "Id"_E) != {0_E}$ ;
4. l'endomorphisme $phi-lambda "Id"_E$ n'est pas injectif ;
5. puisque $E$ est de dimension finie, $phi-lambda "Id"_E$ n'est pas bijectif.

=== Démonstration

Pour tout $v in E$,

$
v in "Ker"(phi-lambda "Id"_E)
$

équivaut à

$
(phi-lambda "Id"_E)(v)=0_E,
$

c'est-à-dire

$
phi(v)-lambda v=0_E
quad <=> quad
phi(v)=lambda v.
$

L'existence d'un tel vecteur *non nul* signifie exactement que le noyau n'est pas réduit à $ {0_E} $, donc que l'endomorphisme n'est pas injectif.

Sur un espace vectoriel de dimension finie, injectivité et bijectivité sont équivalentes pour un endomorphisme.

== Sous-espace propre associé à $lambda$

Pour toute valeur propre $lambda$, on appelle *sous-espace propre associé* :

$
E_lambda(phi)="Ker"(phi-lambda "Id"_E).
$

Il s'agit d'un sous-espace vectoriel de $E$ comprenant $0_E$ et tous les vecteurs propres associés à $lambda$.

En particulier,

$
0 " est valeur propre de " phi
quad <=> quad
phi " n'est pas injectif".
$

== Théorème 4.2.7 — Liberté des vecteurs propres de valeurs propres distinctes

Soient $lambda_1,dots,lambda_k$ des valeurs propres *deux à deux distinctes* de $phi$ et $v_1,dots,v_k$ des vecteurs propres non nuls associés, respectivement, à ces valeurs.

Alors

$
(v_1,dots,v_k) " est une famille libre".
$

=== Démonstration par récurrence sur $k$

*Initialisation :* pour $k=1$, le vecteur $v_1$ est non nul ; la famille $(v_1)$ est libre.

*Hérédité :* supposons la propriété vraie pour $k-1$ vecteurs propres associés à des valeurs propres distinctes.

Considérons une relation linéaire :

$
alpha_1 v_1+dots+alpha_k v_k=0_E. " (1)"
$

On applique $phi$ et on utilise $phi(v_i)=lambda_i v_i$ :

$
alpha_1 lambda_1 v_1+dots+alpha_k lambda_k v_k=0_E. " (2)"
$

On soustrait $lambda_k$ fois la relation (1) à la relation (2) :

$
alpha_1(lambda_1-lambda_k)v_1
+dots
+alpha_(k-1)(lambda_(k-1)-lambda_k)v_(k-1)=0_E.
$

Par hypothèse de récurrence, $(v_1,dots,v_(k-1))$ est libre.

Les coefficients sont donc nuls :

$
alpha_i(lambda_i-lambda_k)=0
quad "pour " i in {1,dots,k-1}.
$

Comme les valeurs propres sont distinctes, $lambda_i-lambda_k != 0$. Par conséquent,

$
alpha_1=dots=alpha_(k-1)=0.
$

En reportant dans (1),

$
alpha_k v_k=0_E.
$

Or $v_k != 0_E$, donc $alpha_k=0$.

Tous les coefficients étant nuls, la famille $(v_1,dots,v_k)$ est libre.

== Corollaire 4.2.8 — Nombre de valeurs propres distinctes

Si $dim(E)=n$, l'endomorphisme $phi$ possède *au plus $n$ valeurs propres distinctes*.

En effet, choisir un vecteur propre non nul pour chaque valeur propre distincte donne, d'après le théorème précédent, une famille libre de $E$ ; une telle famille compte au plus $n$ vecteurs.

== Corollaire 4.2.9 — Critère suffisant de diagonalisabilité

Si $dim(E)=n$ et si $phi$ possède *$n$ valeurs propres deux à deux distinctes*, alors $phi$ est diagonalisable.

En effet, les $n$ vecteurs propres associés constituent une famille libre de $E$ de cardinal $n$, donc une base de $E$.

Dans cette base, la matrice de $phi$ est diagonale.
