// source-confidence: high
// source-note: TD02, exercice 5 ; rédaction alignée sur la dernière copie manuscrite du 10/11/2026.
// study-validation: Q1, double application du supremum sans epsilon ; Q2, inclusion et contre-exemple au même indice.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5

== Question 1

Soient $A,B subset.eq RR$ non vides et majorés. On pose
$
A+B={a+b | a in A, b in B}.
$

Montrons que $sup(A+B)=sup(A)+sup(B)$.

Comme $A$ et $B$ sont non vides et majorés, $sup(A)$ et $sup(B)$ existent.

Soit $x in A+B$. Il existe $a in A$ et $b in B$ tels que $x=a+b$. Alors
$
x=a+b<=sup(A)+sup(B).
$

Ainsi, $A+B$ est majoré (et non vide), donc $sup(A+B)$ existe et
$
sup(A+B)<=sup(A)+sup(B).
$

Réciproquement, pour tous $a in A$ et $b in B$, on a
$
a+b<=sup(A+B)
<=> a<=sup(A+B)-b.
$

Pour $b$ fixé, cette inégalité est vraie pour tout $a in A$. Par définition du supremum,
$
sup(A)<=sup(A+B)-b
<=> b<=sup(A+B)-sup(A).
$

Cette dernière inégalité est vraie pour tout $b in B$. D'où
$
sup(B)<=sup(A+B)-sup(A)
<=> sup(A)+sup(B)<=sup(A+B).
$

En réunissant les deux inégalités :
$
sup(A+B)=sup(A)+sup(B).
$

== Question 2

Soient $(x_n)_n$ et $(y_n)_n$ deux suites réelles majorées et
$
A={x_n | n in NN}, quad
B={y_n | n in NN}, quad
C={x_n+y_n | n in NN}.
$

Puisque $C subset.eq A+B$, la question 1 donne
$
sup(C)<=sup(A+B)=sup(A)+sup(B).
$

L'égalité n'est pas toujours vraie : considérons
$
x_n=(-1)^n, quad y_n=-x_n.
$

Alors $A=B={-1,1}$ et $C={0}$. Ainsi,
$
sup(C)=0<2=sup(A)+sup(B).
$

La différence vient des indices : dans $A+B$, on peut choisir $x_n+y_m$ avec $n,m$ indépendants ; dans $C$, les deux termes ont le même indice.
