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


= 4.3 — Comment trouver les valeurs propres ? Polynôme caractéristique

== 4.3.1 — Définition et méthode

Une valeur $lambda in K$ est valeur propre de $phi$ si et seulement si l'endomorphisme $phi-lambda "Id"_E$ n'est pas injectif.

En dimension finie, cette condition revient à

$
det(A-lambda I_n)=0,
$

où $A$ est la matrice de $phi$ dans une base.

=== Définition 4.3.1 — Polynôme caractéristique

Pour $A in M_n(K)$, son *polynôme caractéristique* est

$
C_A(X)=det(A-X I_n) in K[X].
$

*Convention de ce cours :* l'expression est $A-X I_n$. Le terme de plus haut degré est donc $(-1)^n X^n$.

=== Exemple 4.3.3 — Matrice de taille 2

Soit

$
A=mat(1,2;3,4).
$

On calcule

$
C_A(X)=det(mat(1-X,2;3,4-X))
$

$
=(1-X)(4-X)-6=X^2-5X-2.
$

=== Exemple — Matrice de taille 3

La seconde matrice manuscrite est lue comme suit :

$
B=mat(1,2,-1;0,3,1;-1,1,0).
$

On a

$
C_B(X)=det(mat(1-X,2,-1;0,3-X,1;-1,1,-X)).
$

En développant par la deuxième ligne,

$
C_B(X)=(3-X) (X^2-X-1)-(3-X).
$

Donc

$
C_B(X)=-X^3+4X^2-X-6
$

$
=-(X-3)(X-2)(X+1).
$

Les valeurs propres de $B$ sont $3$, $2$ et $-1$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Transcription partiellement incertaine.* Les coefficients de $B$ au bas de la photo 11058 sont peu lisibles. Le calcul du polynôme et sa factorisation ont été vérifiés pour la matrice transcrite ci-dessus.
]

== Proposition 4.3.4 — Polynôme caractéristique et similitude

Si $B=P^(-1) A P$ avec $P$ inversible, alors

$
C_B(X)=det(P^(-1)(A-X I_n)P)
$

$
=det(P^(-1)) det(A-X I_n) det(P)=C_A(X).
$

Les matrices semblables ont donc le même polynôme caractéristique.

== Définition 4.3.5 — Polynôme caractéristique d'un endomorphisme

Le polynôme caractéristique $C_phi$ de $phi in cal(L)(E)$ est celui d'une matrice de $phi$ dans *n'importe quelle base*. Il ne dépend pas de la base grâce à la similitude des matrices de représentation.

== Proposition 4.3.6 — Racines et valeurs propres

Pour tout $lambda in K$,

$
lambda " est valeur propre de " phi
quad <=> quad C_phi(lambda)=0.
$

Les valeurs propres sont donc exactement les racines du polynôme caractéristique dans le corps $K$.

== Exemples 4.3.7 — Homothétie, projection, symétrie

Si $dim(E)=n$ et $phi=alpha "Id"_E$,

$
C_phi(X)=(alpha-X)^n.
$

Si $E=F "⊕" G$, avec $dim(F)=d$ et $dim(G)=n-d$, et si $p$ est la projection sur $F$ parallèlement à $G$, alors

$
C_p(X)=(1-X)^d (-X)^(n-d).
$

Pour la symétrie $s$ qui fixe $F$ et change le signe de $G$,

$
C_s(X)=(1-X)^d (-1-X)^(n-d).
$

== Remarque 4.3.8 — Corps de base

Considérer une matrice réelle comme une matrice complexe ne change pas le polynôme caractéristique ; toutefois, il peut se factoriser différemment.

Par exemple, pour

$
A=mat(0,1;-1,0),
quad C_A(X)=X^2+1,
$

il n'existe aucune racine réelle, mais les racines complexes sont $i$ et $-i$.

== Proposition 4.3.9 — Matrice triangulaire

Pour toute matrice triangulaire supérieure ou inférieure $A$,

$
C_A(X)=product_(i=1)^n (a_(i i)-X).
$

Ses valeurs propres sont donc ses coefficients diagonaux, avec répétition éventuelle.

== Exemple 4.3.10 — Formule en dimension 2

Pour $A=mat(a,b;c,d)$,

$
C_A(X)=(a-X)(d-X)-bc
$

$
=X^2-(a+d)X+(ad-bc)
$

$
=X^2-"tr"(A)X+det(A).
$

== Proposition 4.3.11 — Coefficients extrêmes

Pour $A in M_n(K)$,

$
C_A(X)=(-1)^n X^n+(-1)^(n-1) "tr"(A) X^(n-1)+dots+det(A).
$

Par conséquent :

- $deg(C_A)=n$ ;
- son coefficient dominant est $(-1)^n$ ;
- le coefficient de $X^(n-1)$ est $(-1)^(n-1)"tr"(A)$ ;
- son terme constant est $det(A)$.
