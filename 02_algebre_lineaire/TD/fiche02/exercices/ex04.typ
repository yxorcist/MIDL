// source-confidence: high
// source-note: numbering and statement cross-checked against the official TD02 sheet; the supplied handwritten pages contain the correction of questions 1 to 3.b.

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

Pour tous $P,Q in RR_3[X]$ et $lambda,mu in RR$,
$
phi(lambda P+mu Q)
=
lambda phi(P)+mu phi(Q).
$
Donc $phi$ est linéaire.

=== b) Noyau

On a
$
phi(P)=0
iff
P(X+1)=P(X).
$

Les seuls polynômes vérifiant cette identité sont les polynômes constants. Ainsi
$
"Ker"(phi)="Vect"(1)
$
et
$
dim("Ker"(phi))=1.
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

On calcule
$
phi(1)=0,
quad
phi(X)=1,
$
$
phi(X^2)=2X+1,
$
et
$
phi(X^3)=3X^2+3X+1.
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

Ces trois polynômes sont libres. Ils forment donc une base de $"Im"(phi)$.

=== c) Identification de l'image

On a déjà
$
"Im"(phi)
subset.eq
"Vect"(1,X,X^2).
$

Réciproquement,
$
1 in "Im"(phi),
$
$
X=frac(1,2)(2X+1)-frac(1,2),
$
et
$
X^2
=
frac(1,6)
(
2(3X^2+3X+1)-3(2X+1)+1
).
$

Ainsi
$
"Vect"(1,X,X^2)
subset.eq
"Im"(phi).
$

Donc
$
"Im"(phi)="Vect"(1,X,X^2).
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
phi(H_0)=0,
quad
phi(H_1)=1,
$
$
phi(H_2)=2X=2H_1,
$
et
$
phi(H_3)=3X^2-3X=3H_2.
$

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
