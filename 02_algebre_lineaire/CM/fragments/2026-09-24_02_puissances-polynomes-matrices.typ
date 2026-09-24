#import "../style.typ": *

= Puissances et polynômes de matrices

Soit $A in M_n(K)$.

Pour $k in NN$, on définit

$
A^k =
cases(
I_n & "si " k=0,
underbrace(A A dots A, k " facteurs") & "si " k>=1.
)
$

#remark([
  Il ne faut pas oublier que

  $
  A^0=I_n.
  $
])

== Polynôme d'une matrice

Soit

$
P=a_0+a_1 X+cdots+a_p X^p in K[X].
$

On définit

$
P(A)
=
a_0 I_n+a_1 A+cdots+a_p A^p
in M_n(K).
$

== Exemple

Pour

$
P=X^4-1
quad "et" quad
Q=X^2-2X,
$

les notes évaluent ces polynômes sur différentes matrices et montrent que deux matrices différentes peuvent annuler ou non un même polynôme.

Le calcul se fait toujours en remplaçant la constante $1$ du polynôme par la matrice identité $I_n$ de taille compatible.
