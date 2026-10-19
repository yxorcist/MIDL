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
