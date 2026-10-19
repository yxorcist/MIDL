#import "../../style.typ": *

// source-confidence: high
// source-note: photos 11054, 11050, 11068, 11066, 11064, 11061 et 11058.
// source-note: 19/10/2026 est la date de classement, non la date attestée du CM.
// source-reconstruction: passages abrégés développés, calculs vérifiés ; répétitions avec 15/10 évitées.

#align(center)[
  #text(size: 18pt, weight: "bold")[Chapitre 4 — Suite]
  #text(size: 11pt)[Notes reçues le 19 octobre 2026]
]
#line(length: 100%)

= 4.2 — Sous-espaces propres et diagonalisabilité (suite)

== Exemples de non-diagonalisabilité

=== Rotation réelle

L'exemple $phi(x,y)=(y,-x)$ est déjà traité à l'exemple 4.1.3 ; il n'est pas recopié ici.

=== Endomorphisme nilpotent non nul

Soit $phi(x,y)=(0,2x)$ dans $RR^2$, de matrice

$
A=mat(0,0;2,0).
$

On a $"tr"(A)=0$, $det(A)=0$ et $"rg"(A)=1$.

Si $A$ était semblable à une matrice diagonale $D=mat(lambda_1,0;0,lambda_2)$, on aurait

$
lambda_1+lambda_2=0,
quad lambda_1 lambda_2=0.
$

Ainsi $lambda_1=lambda_2=0$, donc $D=0$, ce qui contredit $"rg"(A)=1$.

La seule valeur propre est $0$, et

$
E_0(phi)="Ker"(phi)="Vect"((0,1))
$

est de dimension 1, inférieure à la dimension 2 de l'espace.


=== Exemple en dimension 3

Soit

$
phi(x,y,z)=(2x+y,2y,-z),
quad
A=mat(2,1,0;0,2,0;0,0,-1).
$

La condition $phi(v)=lambda v$ donne

$
cases(
  (2-lambda)x+y=0,
  (2-lambda)y=0,
  (-1-lambda)z=0.
)
$

Les valeurs propres sont $2$ et $-1$.

- Pour $lambda=2$, on obtient $y=z=0$ ; donc $E_2(phi)="Vect"((1,0,0))$.
- Pour $lambda=-1$, on obtient $x=y=0$ ; donc $E_(-1)(phi)="Vect"((0,0,1))$.

Ainsi,

$
dim(E_2(phi))+dim(E_(-1)(phi))=1+1=2<3.
$

Les sous-espaces propres n'engendrent pas $RR^3$. L'endomorphisme n'est pas diagonalisable.

== Proposition 4.2.14 — Sous-espaces stables

Pour un endomorphisme $phi$ de $E$, les sous-espaces

$
{0_E}, quad E, quad "Ker"(phi), quad "Im"(phi), quad E_lambda(phi)
$

sont stables par $phi$ (dans la dernière expression, $lambda$ est une valeur propre).

En effet :

- si $v in "Ker"(phi)$, alors $phi(v)=0_E in "Ker"(phi)$ ;
- si $w=phi(v) in "Im"(phi)$, alors $phi(w)=phi(phi(v)) in "Im"(phi)$ ;
- si $v in E_lambda(phi)$, alors $phi(v)=lambda v in E_lambda(phi)$.

== Remarque 4.2.15 — Restriction

Si $F$ est stable par $phi$, alors $phi(F) subset.eq F$ et la restriction

$
phi_|F: F -> F,
quad v mapsto phi(v)
$

est un endomorphisme de $F$.

== Théorème 4.2.16 — Somme directe des sous-espaces propres

Soient $lambda_1,dots,lambda_r$ des valeurs propres deux à deux distinctes.

Alors la famille des sous-espaces propres associés est *en somme directe*.

=== Démonstration

Considérons $v_i in E_(lambda_i)(phi)$ tels que

$
v_1+dots+v_r=0_E.
$

Si l'un des $v_i$ était non nul, les vecteurs non nuls de cette relation formeraient une famille liée de vecteurs propres associés à des valeurs propres distinctes.

Ceci contredirait le théorème 4.2.7. Les $v_i$ sont donc tous nuls, d'où la somme directe.

== Théorème 4.2.17 — Critère de diagonalisation

Si $lambda_1,dots,lambda_r$ sont toutes les valeurs propres distinctes de $phi$ sur le corps $K$, alors

$
phi " diagonalisable"
quad <=> quad
E=E_(lambda_1)(phi) "⊕" dots "⊕" E_(lambda_r)(phi).
$

Par la somme directe déjà démontrée, ceci équivaut à

$
dim(E)=sum_(i=1)^r dim(E_(lambda_i)(phi)).
$

*Preuve.* Si $phi$ est diagonalisable, une base de vecteurs propres engendre $E$, donc la somme des sous-espaces propres est $E$. Réciproquement, on prend une base de chacun des sous-espaces propres : leur réunion est une base de $E$ composée de vecteurs propres, dans laquelle la matrice de $phi$ est diagonale.
