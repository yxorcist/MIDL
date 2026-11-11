#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= TD04 — Exercice 1 : valeurs et vecteurs propres

*Méthode :* déterminer les valeurs propres en résolvant $det(A-lambda I)=0$, puis, pour chaque valeur propre, résoudre $(A-lambda I)v=0$ avec $v != 0$.

== 1. Première matrice

$
A=mat(10,0,0; 1,-3,-7; 0,2,6)
$

=== a) Polynôme caractéristique

Développement suivant la première ligne (deux zéros) :

$
det(A-lambda I)
=(10-lambda)det(mat(-3-lambda,-7; 2,6-lambda))
$

$
=(10-lambda)[(-3-lambda)(6-lambda)+14]
$

$
=(10-lambda)(lambda^2-3lambda-4)
=(10-lambda)(lambda-4)(lambda+1)
$

*Valeurs propres :* $lambda in {10,4,-1}$.

=== b) Vecteurs propres

Pour chaque $lambda$, poser $v=mat(x;y;z)$ et résoudre $(A-lambda I)v=0$.

*Pour $lambda=10$ :*

$
A-10I=mat(0,0,0; 1,-13,-7; 0,2,-4)
$

$
cases(x-13y-7z=0, 2y-4z=0)
quad => quad y=2z, x=33z
$

$
E_10="Vect"(mat(33;2;1))
$

*Pour $lambda=4$ :*

$
A-4I=mat(6,0,0; 1,-7,-7; 0,2,2)
$

$
cases(x=0, y+z=0)
quad => quad
E_4="Vect"(mat(0;-1;1))
$

*Pour $lambda=-1$ :*

$
A+I=mat(11,0,0; 1,-2,-7; 0,2,7)
$

$
cases(x=0, 2y+7z=0)
quad => quad
E_(-1)="Vect"(mat(0;-7;2))
$

== 2. Deuxième matrice

$
B=mat(4,-1,6; 2,1,6; 2,-1,8)
$

=== a) Montrer que 2 est valeur propre

$
B-2I=mat(2,-1,6; 2,-1,6; 2,-1,6)
$

Les lignes sont identiques : $det(B-2I)=0$. Donc *2 est valeur propre*.

=== b) Autres valeurs propres

On part de $B-lambda I$, puis on effectue $L_1 <- L_1-L_2$ et $L_3 <- L_3-L_2$. Ces opérations ne changent pas le déterminant.

$
det(B-lambda I)
=det(mat(2-lambda,lambda-2,0; 2,1-lambda,6; 0,lambda-2,2-lambda))
$

Développement suivant la première colonne :

$
=(2-lambda)[(1-lambda)(2-lambda)-6(lambda-2)]
-2(lambda-2)(2-lambda)
$

$
=(2-lambda)(lambda-2)(lambda-7)+2(lambda-2)^2
$

Attention au signe : $2-lambda=-(lambda-2)$.

$
=(lambda-2)^2[-(lambda-7)+2]
=(lambda-2)^2(9-lambda)
$

*Valeurs propres :* $2$ (multiplicité algébrique 2) et $9$ (multiplicité 1).

=== c) Valeurs propres des puissances

Si $Bv=lambda v$, alors $B^n v=lambda^n v$ pour $n>=1$.

- $B^2$ : $4,4,81$.
- $B^3$ : $8,8,729$.
- $B^n$ : $2^n,2^n,9^n$.

=== d) Vecteurs propres

*Pour $lambda=2$ :*

$
(B-2I)v=0
quad <=> quad 2x-y+6z=0
quad <=> quad y=2x+6z
$

Deux variables libres, $x$ et $z$ :

$
v=x mat(1;2;0)+z mat(0;6;1)
$

$
E_2="Vect"(mat(1;2;0),mat(0;6;1))
$

*Pour $lambda=9$ :*

$
(B-9I)v=0
quad => quad x=y=z
$

$
E_9="Vect"(mat(1;1;1))
$

*Rappel :* les espaces propres $E_lambda=ker(A-lambda I)$ incluent le vecteur nul. Les *vecteurs propres* sont leurs éléments non nuls. Une valeur propre double ne donne pas automatiquement deux vecteurs propres indépendants : on détermine la dimension en résolvant le système.
