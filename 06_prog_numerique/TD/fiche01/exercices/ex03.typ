// source-confidence: high
// source-note: TD01_systemes-lineaires.pdf (2026–2027), exercice 3. Les quatre matrices de la question 2 sont reprises sans substitution depuis l'énoncé officiel.
// source-correction: l'ancienne correction attribuait à la question 2 une matrice Q étrangère au sujet, puis corrigeait à tort 36 en 15. Le sujet donne bien det(M2)=36 ; les quatre traces et déterminants ont été recalculés.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 1 — Exercice 3 — Puissances, inverse, traces et déterminants

== 1. Calculer $A^2$ et $A^(-1)$

La matrice du sujet est
$
A=mat(1,-1,-1;-1,1,-1;-1,-1,1).
$

=== (a) Calcul direct

$
A^2=mat(3,-1,-1;-1,3,-1;-1,-1,3).
$

=== (b) Identité remarquable

En comparant les coefficients, on constate que
$
A^2=A+2I_3.
$

=== (c) Inverse

En réarrangeant l'égalité précédente,
$
A(A-I_3)=2I_3.
$
On en déduit
$
A^(-1)=1/2(A-I_3)=mat(0,-1/2,-1/2;-1/2,0,-1/2;-1/2,-1/2,0).
$

== 2. Trace et déterminant des quatre matrices du sujet

=== Matrice 1 — Triangulaire supérieure

$
M_1=mat(-3,1,1;0,2,0;0,0,1).
$
Elle est triangulaire, donc
$
"tr"(M_1)=-3+2+1=0,
quad det(M_1)=(-3) dot 2 dot 1=-6.
$

=== Matrice 2

$
M_2=mat(-2,2,-3;-1,1,3;4,0,-1).
$
La trace est
$
"tr"(M_2)=-2+1-1=-2.
$
En développant son déterminant selon la première ligne,
$
det(M_2)=(-2)(-1)-2(-11)+(-3)(-4)
=2+22+12=36.
$

*Attention :* $36$ est bien la valeur correcte *pour la matrice donnée par le sujet*. L'ancienne transcription utilisait une matrice différente, ce qui produisait un résultat sans rapport avec la question.

=== Matrice 3

$
M_3=mat(0,3,1,-2;4,1,-1,2;3,1,2,-1;-4,2,1,2).
$
On a
$
"tr"(M_3)=0+1+2+2=5.
$
Un calcul de déterminant (par élimination de Gauss ou développement par cofacteurs) donne
$
det(M_3)=-164.
$

=== Matrice 4 — Avec un paramètre

$
M_4(x)=mat(1,x,x^2,x^3;1,1,1,1;1,2,3,4;1,4,9,16).
$
Sa trace vaut
$
"tr"(M_4(x))=1+1+3+16=21.
$
Le déterminant se factorise en
$
det(M_4(x))=-2(x-1)^3.
$
Ainsi $M_4(x)$ est inversible si et seulement si $x!=1$.

== Bilan vérifié avec les matrices officielles

#table(columns: (1fr,1fr,1.6fr), inset: 6pt,
  [*Matrice*],[*Trace*],[*Déterminant*],
  [$M_1$],[$0$],[$-6$],
  [$M_2$],[$-2$],[$36$],
  [$M_3$],[$5$],[$-164$],
  [$M_4(x)$],[$21$],[$-2(x-1)^3$],
)

*Provenance.* Les matrices sont celles de l'énoncé officiel, pas celles d'un calcul manuscrit ambigu. Les déterminants sont des calculs vérifiés à partir de ces coefficients.
