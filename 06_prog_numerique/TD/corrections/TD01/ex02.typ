#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= TD 1 — Exercice 2

On considère

$
A=mat(-6,-7;5,6),
quad
B=mat(-2,-3;2,3),
quad
C=mat(2,1;-4,-2).
$

== Matrice $A$

On calcule

$
A^2=I_2.
$

Ainsi, pour tout $n>=1$,

$
A^n =
cases(
I_2 & "si " n " est pair",
A & "si " n " est impair".
)
$

== Matrice $B$

On calcule

$
B^2=B.
$

Donc, pour tout $n>=1$,

$
B^n=B.
$

== Matrice $C$

On calcule

$
C^2=0.
$

Ainsi,

$
C^n =
cases(
C & "si " n=1,
0 & "si " n>=2.
)
$
