// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 7.
// source-note: photo 13270 : valeurs propres uniques et multiplicité géométrique insuffisante.
// source-verification: matrices triangulaires, valeurs propres et preuve sans vecteurs propres.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 7 — Valeur propre unique sans diagonalisation

Considérons
$
A=mat(5,12;0,5),
quad
B=mat(sqrt(2),-4pi,1;0,sqrt(2),2;0,0,sqrt(2)).
$

== Valeurs propres

Ces matrices sont triangulaires supérieures : les racines du polynôme caractéristique sont leurs termes diagonaux.

- Pour $A$, la seule valeur propre est $5$, de multiplicité algébrique $2$.
- Pour $B$, la seule valeur propre est $sqrt(2)$, de multiplicité algébrique $3$.

== Non-diagonalisabilité, sans calculer de vecteurs propres

*Propriété.* Si une matrice $M$ possède une seule valeur propre $lambda$ et est diagonalisable, alors il existe une matrice inversible $P$ telle que
$
M=P (lambda I_n) P^(-1)=lambda I_n.
$

Or $A != 5 I_2$ et $B != sqrt(2) I_3$, car elles ont des coefficients non nuls hors diagonale.

*Donc $A$ et $B$ ne sont pas diagonalisables.*

== Vérification facultative par le théorème du rang

On peut retrouver le constat de la photo avec
$
dim E_M(lambda)=n-"rg"(M-lambda I_n).
$

Pour $A$, le rang de $A-5I_2$ est $1$, donc $dim E_A(5)=1<2$.

Pour $B$, le rang de $B-sqrt(2)I_3$ est $2$, donc $dim E_B(sqrt(2))=1<3$.

== Méthode d'examen

Quand une matrice n'a qu'une seule valeur propre, *vérifier si elle est scalaire* avant tout calcul de vecteurs propres : c'est la façon la plus rapide de trancher sa diagonalisabilité.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source.* Photo 13270 et énoncé officiel TD04, exercice 7. La preuve directe a été ajoutée pour satisfaire « sans calcul de vecteurs propres ».
]
