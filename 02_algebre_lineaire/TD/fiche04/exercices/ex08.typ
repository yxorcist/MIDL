// source-confidence: high for official matrices and verified computations; partial handwritten coverage.
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 8 (six matrices A1,...,A6).
// source-note: photos 13270, 13273, 13276, 13278, 13282 : calculs de A1 à A5, arrêt pendant l'étude de A5.
// source-reconstruction: les compléments de A3 et A5, toutes les formules de puissances et A6 ont été résolus à partir de l'énoncé officiel (pas visibles intégralement dans les photos).
// source-correction: les espaces propres ont été recalculés; distinction entre multiplicité algébrique et géométrique, et entre K=R et K=C.
// source-verification: polynômes caractéristiques, espaces propres, P^-1, similarité et puissances contrôlés symboliquement.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 8 — Étude de six matrices et de leurs puissances

Dans chaque cas, on cherche les valeurs propres et les espaces propres, puis une diagonalisation éventuelle sur $RR$ et sur $CC$. Si $A=P D P^(-1)$, on utilise
$
D^n="diag"(lambda_1^n,dots,lambda_p^n),
quad
A^n=P D^n P^(-1)
$
pour tout $n in NN$, avec $A^0=I_p$.

== 1. Matrice $A_1$

$
A_1=mat(3,-4;1,-2).
$

Le polynôme caractéristique est
$
chi_1(lambda)=lambda^2-lambda-2=(lambda+1)(lambda-2).
$
Les valeurs propres sont $-1$ et $2$, simples.

En résolvant les deux systèmes :
$
E_(-1)="Vect"(mat(1;1)),
quad
E_2="Vect"(mat(4;1)).
$

Les valeurs propres étant distinctes, *$A_1$ est diagonalisable sur $RR$ et sur $CC$*. On peut prendre
$
P_1=mat(1,4;1,1),
quad
D_1=mat(-1,0;0,2),
$
$
P_1^(-1)=1/3 mat(-1,4;1,-1).
$

Pour tout $n in NN$,
$
D_1^n=mat((-1)^n,0;0,2^n),
$
et, en notant $a=(-1)^n$ et $b=2^n$,
$
A_1^n=1/3 mat(-a+4b,4a-4b;-a+b,4a-b).
$

== 2. Matrice $A_2$

$
A_2=mat(-4,-4;9,8).
$
On trouve
$
chi_2(lambda)=(lambda-2)^2.
$
L'unique valeur propre est $2$, de multiplicité algébrique $2$.

Le système $(A_2-2I_2)v=0$ donne $3x+2y=0$ ; d'où
$
E_2="Vect"(mat(-2;3)).
$

Puisque $dim(E_2)=1<2$, *$A_2$ n'est diagonalisable ni sur $RR$ ni sur $CC$*. Il n'y a pas de matrice diagonale $D_2$ semblable à $A_2$ ; les questions sur $D_2^n$ et le calcul de $A_2^n$ par diagonalisation ne s'appliquent pas.

== 3. Matrice $A_3$

$
A_3=mat(-3,0,-1;2,1,2;2,0,0).
$

Le polynôme caractéristique s'écrit
$
chi_3(lambda)=(lambda+2)(lambda+1)(lambda-1).
$
Les trois valeurs propres, simples, sont $-2$, $-1$, $1$. On obtient
$
E_(-2)="Vect"(mat(-1;0;1)),
$
$
E_(-1)="Vect"(mat(-1;-1;2)),
quad
E_1="Vect"(mat(0;1;0)).
$

Ainsi *$A_3$ est diagonalisable sur $RR$ et sur $CC$*. Un choix de matrices est
$
P_3=mat(-1,-1,0;0,-1,1;1,2,0),
$
$
D_3=mat(-2,0,0;0,-1,0;0,0,1),
$
$
P_3^(-1)=mat(-2,0,-1;1,0,1;1,1,1).
$

Pour tout $n>=0$,
$
D_3^n="diag"((-2)^n,(-1)^n,1).
$
En posant $a=(-2)^n$ et $b=(-1)^n$, le produit $P_3 D_3^n P_3^(-1)$ donne
$
A_3^n=mat(
  2a-b,0,a-b;
  1-b,1,1-b;
  -2a+2b,0,-a+2b
).
$

== 4. Matrice $A_4$

$
A_4=mat(0,2,-1;2,1,-2;1,2,-2).
$
On calcule
$
chi_4(lambda)=(lambda-1)(lambda+1)^2.
$
Les espaces propres sont
$
E_1="Vect"(mat(1;1;1)),
quad
E_(-1)="Vect"(mat(1;0;1)).
$

La valeur propre $-1$ a multiplicité algébrique $2$ mais son espace propre est de dimension $1$.

Donc *$A_4$ n'est diagonalisable ni sur $RR$ ni sur $CC$*. Le calcul des puissances demandé par la méthode de diagonalisation n'est pas applicable.

== 5. Matrice $A_5$

$
A_5=mat(5,-1,-3;-2,1,2;6,-2,-4).
$

Le polynôme caractéristique est
$
chi_5(lambda)=(lambda-2)(lambda^2+1).
$
Le spectre complexe est formé de trois racines distinctes : $2$, $i$ et $-i$.

Une base de chaque espace propre sur $CC$ est :
$
E_2="Vect"(mat(1;0;1)),
$
$
E_i="Vect"(mat(1;-1-i;2)),
quad
E_(-i)="Vect"(mat(1;-1+i;2)).
$

*Sur $RR$*, le polynôme caractéristique n'est pas scindé ; $A_5$ n'est *pas diagonalisable sur $RR$*.

*Sur $CC$*, les trois valeurs propres sont distinctes, donc $A_5$ est diagonalisable. En ordonnant les valeurs propres $(2,-i,i)$, on peut prendre
$
P_5=mat(1,1,1;0,-1+i,-1-i;1,2,2),
$
$
D_5=mat(2,0,0;0,-i,0;0,0,i).
$

La matrice de passage inverse, vérifiée par multiplication, est
$
P_5^(-1)=mat(
  2,0,-1;
  (-1+i)/2,-i/2,(1-i)/2;
  (-1-i)/2,i/2,(1+i)/2
).
$

Ainsi, pour tout $n in NN$,
$
D_5^n=mat(2^n,0,0;0,(-i)^n,0;0,0,i^n),
$
et *le calcul exact des puissances* est
$
A_5^n=P_5 mat(2^n,0,0;0,(-i)^n,0;0,0,i^n) P_5^(-1).
$

Cette expression donne bien une matrice réelle pour chaque entier $n$, car les deux termes non réels sont conjugués.

== 6. Matrice $A_6$

$
A_6=mat(
  0,-1,0,1;
  1,0,0,0;
  0,0,0,-1;
  0,0,1,0
).
$

Le polynôme caractéristique est
$
chi_6(lambda)=(lambda^2+1)^2.
$

Sur $RR$, il n'existe aucune valeur propre réelle. *$A_6$ n'est donc pas diagonalisable sur $RR$.*

Sur $CC$, les valeurs propres $i$ et $-i$ ont chacune une multiplicité algébrique de $2$. Cependant
$
E_i="Vect"(mat(i;1;0;0)),
quad
E_(-i)="Vect"(mat(-i;1;0;0)).
$

Chacun des deux espaces propres a dimension $1$ : la somme des dimensions n'est que $2$, strictement inférieure à $4$.

Donc *$A_6$ n'est pas diagonalisable non plus sur $CC$*.

== Bilan des six matrices

#table(
  columns: (auto,1.3fr,auto,auto),
  inset: 5pt,
  [*Matrice*],[*Valeurs propres sur $CC$*],[*Diag. sur $RR$ ?*],[*Diag. sur $CC$ ?*],
  [$A_1$],[$-1,\ 2$],[Oui],[Oui],
  [$A_2$],[$2$ (double)],[Non],[Non],
  [$A_3$],[$-2,\ -1,\ 1$],[Oui],[Oui],
  [$A_4$],[$-1$ (double), $1$],[Non],[Non],
  [$A_5$],[$2,\ i,\ -i$],[Non],[Oui],
  [$A_6$],[$i,\ -i$ (doubles)],[Non],[Non],
)

== Rappels méthodologiques pour l'examen

- Une valeur propre *simple* fournit un espace propre de dimension $1$.
- Plusieurs valeurs propres distinctes fournissent des espaces propres en somme directe.
- Une valeur propre de multiplicité algébrique $2$ n'assure *pas* deux vecteurs propres indépendants : il faut calculer $dim ker(A-lambda I)$.
- La diagonalisation sur $RR$ exige des valeurs propres réelles ; l'extension à $CC$ peut rendre une matrice diagonalisable (ici $A_5$), mais pas toujours (ici $A_6$).
- Pour une matrice diagonalisable, les puissances se calculent par $A^n=P D^n P^(-1)$, y compris au rang $n=0$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les photos 13270, 13273, 13276, 13278 et 13282 couvrent les calculs de $A_1$ à $A_5$, avec la fin de $A_5$ incomplète. Les compléments des calculs de $A_3$, $A_5$ et *toute* l'étude de $A_6$, non photographiée, ont été reconstruits et vérifiés à partir du TD04 officiel. Toutes les formules de puissances ont été contrôlées par calcul symbolique.
]
