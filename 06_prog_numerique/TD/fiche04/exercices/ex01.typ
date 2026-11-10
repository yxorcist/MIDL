// source-confidence: high for official matrices and first calculations; high for independently verified complements.
// source-note: official TD04_valeurs-propres-vecteurs-propres.pdf, p. 1, exercice 1, parties 1 et 2.
// source-note: photos 12398 and 12399: first matrix, characteristic polynomial, eigenvalues 10/4/-1 and eigenvector calculations.
// source-note: photo 12400: second matrix, characteristic polynomial, double eigenvalue 2, eigenvalues of powers.
// source-reconstruction: complete eigenspaces of the second matrix (question 2d) deduced from official data, not visible on photos.
// source-verification: both characteristic polynomials, eigenspaces and powers checked algebraically.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 1 — Valeurs propres, vecteurs propres et puissances

== Rappels du tableau

Pour une matrice carrée $A$ de taille $m$, une *valeur propre* $lambda$ est un scalaire tel qu'il existe un vecteur non nul $v$ vérifiant

$
A v = lambda v, quad v != 0.
$

Le vecteur $v$ est alors un *vecteur propre*. Les valeurs propres sont les racines de

$
chi_A(lambda)=det(A-lambda I_m).
$

Pour trouver les vecteurs propres associés à $lambda$, on résout

$
(A-lambda I_m)v=0.
$

*Attention :* le vecteur nul est solution de ce système, mais n'est pas un vecteur propre. L'espace propre est le noyau $ker(A-lambda I_m)$.

== 1. Première matrice

La matrice officielle est

$
A=mat(10,0,0; 1,-3,-7; 0,2,6).
$

=== a) Déterminant caractéristique

La première ligne comporte deux zéros. On développe le déterminant selon cette ligne :

$
det(A-lambda I_3)
=(10-lambda)det(mat(-3-lambda,-7; 2,6-lambda)).
$

On trouve

$
chi_A(lambda)
=(10-lambda)((-3-lambda)(6-lambda)+14).
$

Après développement du facteur de degré $2$ :

$
chi_A(lambda)=(10-lambda)(lambda^2-3lambda-4).
$

Comme $lambda^2-3lambda-4=(lambda-4)(lambda+1)$,

$
chi_A(lambda)=(10-lambda)(lambda-4)(lambda+1).
$

Les trois valeurs propres sont *$10$, $4$ et $-1$*, toutes simples.

=== b) Vecteurs propres associés à $lambda=10$

Écrivons $v=mat(v_1;v_2;v_3)$ et résolvons $A v=10v$ :

$
cases(
  10v_1=10v_1,
  v_1-3v_2-7v_3=10v_2,
  2v_2+6v_3=10v_3.
)
$

La dernière ligne donne $v_2=2v_3$, puis la deuxième $v_1=13v_2+7v_3=33v_3$.

D'où l'espace propre

$
E_10=ker(A-10I_3)
="Vect"(mat(33;2;1)).
$

=== Vecteurs propres associés à $lambda=4$

Le système $A v=4v$ donne $v_1=0$ et $v_2=-v_3$.

Donc

$
E_4="Vect"(mat(0;-1;1)).
$

=== Vecteurs propres associés à $lambda=-1$

Le système $A v=-v$ donne $v_1=0$ et $2v_2+7v_3=0$.

Ainsi

$
E_(-1)="Vect"(mat(0;-7;2)).
$

Les photos utilisent aussi le vecteur proportionnel $(0,-7/2,1)$, ce qui décrit exactement le même espace propre.

*Vérification.* Les trois valeurs propres sont distinctes : les trois vecteurs propres ainsi construits sont linéairement indépendants. En particulier, $A$ est diagonalisable sur $RR$.

== 2. Deuxième matrice

La matrice officielle est

$
B=mat(4,-1,6; 2,1,6; 2,-1,8).
$

=== a) Vérifier que $2$ est valeur propre

Le déterminant de $B-2I_3$ est nul :

$
B-2I_3=mat(2,-1,6; 2,-1,6; 2,-1,6),
$

dont les trois lignes sont identiques. Ainsi $det(B-2I_3)=0$ ; *$2$ est une valeur propre*.

=== b) Déterminer les autres valeurs propres

Le calcul du déterminant, visible sur la copie, donne

$
chi_B(lambda)=det(B-lambda I_3)
=-lambda^3+13lambda^2-40lambda+36.
$

Sachant que $2$ est une racine, on factorise :

$
chi_B(lambda)=-(lambda-2)(lambda^2-11lambda+18)
=-(lambda-2)^2(lambda-9).
$

Les valeurs propres distinctes sont donc $2$ et $9$. La valeur propre $2$ a une *multiplicité algébrique de 2*.

=== c) Valeurs propres de $B^2$, $B^3$ et $B^n$

Si $B v=lambda v$ avec $v!=0$, alors

$
B^2v=B(B v)=B(lambda v)=lambda^2 v.
$

Par récurrence sur $n>=1$ :

$
B^n v=lambda^n v.
$

Donc les valeurs propres de $B^2$ sont $4$ (multiplicité algébrique $2$) et $81$ ; celles de $B^3$ sont $8$ (multiplicité $2$) et $729$.

Pour tout $n>=1$, le spectre de $B^n$ est

$
"Sp"(B^n)={2^n,9^n}.
$

Leur multiplicité respective est $2$ et $1$, car $B$ est diagonalisable comme vérifié ci-dessous. Pour $n=0$, $B^0=I_3$ et l'unique valeur propre est $1$.

=== d) Tous les vecteurs propres de $B$

*Ce calcul complète les notes photographiées à partir de la question officielle.*

Pour $lambda=2$,

$
B-2I_3=mat(2,-1,6;2,-1,6;2,-1,6).
$

L'unique équation indépendante est $2v_1-v_2+6v_3=0$, soit

$
v_2=2v_1+6v_3.
$

On peut choisir librement $v_1$ et $v_3$. Une base de l'espace propre est par exemple

$
E_2="Vect"(mat(1;2;0), mat(-3;0;1)).
$

Pour $lambda=9$, on vérifie directement

$
B mat(1;1;1)=9 mat(1;1;1).
$

La valeur propre $9$ étant simple, son espace propre est

$
E_9="Vect"(mat(1;1;1)).
$

Les *vecteurs propres* sont tous les vecteurs *non nuls* appartenant à l'un ou l'autre de ces espaces.

On obtient $dim(E_2)=2$ et $dim(E_9)=1$ ; la somme des dimensions étant $3$, $B$ est diagonalisable.

== Méthode d'examen

1. Calculer $det(A-lambda I)$ et factoriser (les racines sont les valeurs propres).
2. Pour chaque racine, résoudre $(A-lambda I)v=0$ ; ne pas confondre multiplicité d'une racine et dimension de l'espace propre.
3. Pour une puissance, utiliser $A^n v=lambda^n v$ ; les valeurs propres sont élevées à la puissance $n$.
4. Donner une base de chaque espace propre, puis préciser que les vecteurs propres sont les vecteurs non nuls de ces espaces.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Exercices et matrices issus du sujet officiel TD04. Photos 12398–12400 : calcul des déterminants, factorisation, espaces propres de la première matrice et méthode pour les puissances. Les espaces propres de la deuxième matrice (2d), la vérification de la diagonalisation et la remarque sur les multiplicités ont été calculés indépendamment pour compléter l'énoncé. Les deux matrices du sujet sont différentes et ont été conservées séparément.
]
