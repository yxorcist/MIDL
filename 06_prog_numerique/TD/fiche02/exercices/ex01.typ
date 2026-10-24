// source-confidence: high
// source-note: énoncé officiel TD02_systemes-lineaires-2.pdf (N2 Informatique 2026-2027), exercice 1 ; matrices vérifiées sur la page imprimée.
// source-verification: la dominance diagonale est vérifiée ligne par ligne et la positivité est démontrée séparément.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 1 — Dominance diagonale et définition positive

== Données du sujet officiel

$
A=mat(
  2,-1,0,0;
  -1,2,-1,0;
  0,-1,2,-1;
  0,0,-1,2
), quad
B=mat(
  4,1,1,0;
  1,4,0,1;
  1,0,4,1;
  0,1,1,4
).
$

== 1. Les matrices sont-elles à diagonale strictement dominante ?

Une matrice $M$ est *strictement à diagonale dominante par lignes* si
$
forall i, quad abs(m_(i,i))>sum_(j!=i) abs(m_(i,j)).
$

Pour $A$, les sommes des valeurs absolues hors diagonale, ligne par ligne, sont $1,2,2,1$. Les coefficients diagonaux valent tous $2$ : les lignes 2 et 3 vérifient l'égalité, et non l'inégalité stricte. Donc *$A$ est à diagonale dominante, mais pas strictement*.

Pour $B$, les sommes hors diagonale valent $2$ dans chacune des quatre lignes, tandis que les coefficients diagonaux valent $4$. On a $4>2$ sur toutes les lignes : *$B$ est strictement à diagonale dominante*.

== 2. Symétrie et définition positive

Les matrices *$A$ et $B$ sont symétriques*.

Pour $A$, en notant $x=(x_1,x_2,x_3,x_4)^T$, on obtient
$
x^T A x
= x_1^2+x_4^2
+(x_1-x_2)^2+(x_2-x_3)^2+(x_3-x_4)^2.
$
Cette somme de carrés est positive, et ne peut être nulle que si $x_1=x_4=0$ et $x_1=x_2=x_3=x_4$. Alors $x=0$. Donc *$A$ est définie positive*.

Pour $B$, chaque produit croisé $2x_i x_j$ est minoré par $-x_i^2-x_j^2$. Les quatre arêtes correspondantes sont $(1,2)$, $(1,3)$, $(2,4)$, $(3,4)$ : chaque variable apparaît exactement deux fois dans ces produits. Ainsi
$
x^T B x >= 4sum_(i=1)^4 x_i^2-2sum_(i=1)^4 x_i^2
=2sum_(i=1)^4 x_i^2.
$
Pour $x!=0$, cette borne est strictement positive. Donc *$B$ est définie positive*.

== Bilan

#table(columns: (1fr,1.7fr,1.6fr,1.4fr), inset: 5pt,
  [*Matrice*],[*Diagonale strictement dominante ?*],[*Symétrique ?*],[*Définie positive ?*],
  [$A$],[Non],[Oui],[Oui],
  [$B$],[Oui],[Oui],[Oui],
)

*Attention :* « diagonale dominante » n'implique pas automatiquement « définie positive » pour une matrice quelconque. La conclusion pour $A$ et $B$ ci-dessus a été prouvée à partir de leurs coefficients exacts.
