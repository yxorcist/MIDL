// source-confidence: high
// source-note: énoncé conservé ; questions 1 à 3.a reprises des solutions manuscrites du 20 novembre 2026.
// source-note: question 3.b : correction préexistante conservée, non vérifiée sur la dernière copie manuscrite.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

On considère
$
phi: RR_3[X] -> RR_3[X],
quad
P -> P(X+1)-P(X).
$

== Question 1

=== a) Linéarité

Pour tous $P,Q in RR_3[X]$ et $lambda in RR$,

$
phi(lambda P+Q)=(lambda P+Q)(X+1)-(lambda P+Q)(X)
$

$
=lambda P(X+1)+Q(X+1)-lambda P(X)-Q(X)
$

$
=lambda (P(X+1)-P(X))+(Q(X+1)-Q(X))
$

$
=lambda phi(P)+phi(Q).
$

Comme $P(X+1)-P(X)$ appartient à $RR_3[X]$, l'application est bien définie. Donc $phi$ est linéaire : c'est un endomorphisme de $RR_3[X]$.

=== b) Noyau

Soit $P in RR_3[X]$. On pose

$
P(X)=a+b X+c X^2+d X^3,
quad a,b,c,d in RR.
$

On utilise

$
(X+1)^2=X^2+2X+1,
$

$
(X+1)^3=X^3+3X^2+3X+1.
$

Donc

$
P(X+1)=a+b(X+1)+c(X+1)^2+d(X+1)^3
$

$
=(a+b+c+d)+(b+2c+3d)X+(c+3d)X^2+d X^3.
$

En soustrayant $P(X)$, on obtient

$
phi(P)=(b+c+d)+(2c+3d)X+3d X^2.
$

Ainsi

$
P in "Ker"(phi) <=> cases(
  b+c+d=0,
  2c+3d=0,
  3d=0,
)
$

$
<=> cases(
  a in RR,
  b=0,
  c=0,
  d=0,
).
$

Le coefficient $a$ est libre. Donc $P(X)=a$ et

$
"Ker"(phi)="Vect"(1),
quad dim("Ker"(phi))=1.
$

=== c) Rang

Comme
$
dim(RR_3[X])=4,
$
le théorème du rang donne
$
"rg"(phi)=4-1=3.
$

=== d) Injectivité, surjectivité, bijectivité

Comme $"Ker"(phi)$ n'est pas réduit à zéro, $phi$ n'est pas injective.

Comme
$
"rg"(phi)=3<4=dim(RR_3[X]),
$
$phi$ n'est pas surjective.

Donc $phi$ n'est pas bijective.

== Question 2

=== a) Matrice dans la base canonique

Soit
$
cal(C)=(1,X,X^2,X^3).
$

On calcule les images des vecteurs de la base canonique :

$
phi(1)=1-1=0,
quad phi(X)=X+1-X=1,
$

$
phi(X^2)=(X+1)^2-X^2=2X+1,
$

$
phi(X^3)=(X+1)^3-X^3=3X^2+3X+1.
$

Ainsi
$
"Mat"_(cal(C))(phi)
=
mat(
  0, 1, 1, 1;
  0, 0, 2, 3;
  0, 0, 0, 3;
  0, 0, 0, 0;
).
$

=== b) Base de l'image

On a
$
"Im"(phi)
=
"Vect"(1,2X+1,3X^2+3X+1).
$

La matrice est déjà échelonnée. Les colonnes pivots sont les colonnes 2, 3 et 4. Les polynômes correspondants forment donc une base de $"Im"(phi)$ :

$
B_("Im"(phi))=(1,1+2X,1+3X+3X^2).
$

=== c) Identification de l'image

D'après les générateurs trouvés en 2.b,

$
"Im"(phi) subset.eq "Vect"(1,X,X^2).
$

Or, d'après la question 1.c,

$
dim("Im"(phi))="rg"(phi)=3
=dim("Vect"(1,X,X^2)).
$

Par inclusion et égalité des dimensions,

$
"Im"(phi)="Vect"(1,X,X^2)=RR_2[X].
$

== Question 3

On pose
$
H_0=1,
quad
H_1=X,
quad
H_2=X(X-1),
quad
H_3=X(X-1)(X-2),
$
et
$
cal(D)=(H_0,H_1,H_2,H_3).
$

=== a) Matrices dans les bases demandées

On calcule

$
phi(H_0)=1-1=0,
quad phi(H_1)=X+1-X=1=H_0.
$

$
phi(H_2)=(X+1)X-X(X-1)
$

$
=X((X+1)-(X-1))=2X=2H_1.
$

$
phi(H_3)=(X+1)X(X-1)-X(X-1)(X-2)
$

$
=X(X-1)((X+1)-(X-2))
$

$
=3(X^2-X)=3X^2-3X=3H_2.
$

On place les coordonnées de ces images en colonnes, dans la base d'arrivée demandée.

Donc
$
"Mat"_(cal(D))(phi)
=
mat(
  0, 1, 0, 0;
  0, 0, 2, 0;
  0, 0, 0, 3;
  0, 0, 0, 0;
).
$

Dans la base $cal(C)$ à l'arrivée,
$
"Mat"_(cal(D),cal(C))(phi)
=
mat(
  0, 1, 0, 0;
  0, 0, 2, -3;
  0, 0, 0, 3;
  0, 0, 0, 0;
).
$

=== b) Matrice de $phi compose phi$

_Correction préexistante (question non traitée sur les dernières photos)._

On a
$
"Mat"_(cal(D))(phi compose phi)
=
"Mat"_(cal(D))(phi)^2
=
mat(
  0, 0, 2, 0;
  0, 0, 0, 6;
  0, 0, 0, 0;
  0, 0, 0, 0;
).
$
