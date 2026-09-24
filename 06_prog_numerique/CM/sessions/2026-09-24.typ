= 2026-09-24

Systems d'equations linaires $A x = b$

Methode de Gauss

x = $mat(x_1; dots.ver; x_n;)$ a determiner

$A x = b <=> A' x = b'$ avec A' triangulaire superieure

3 boucles imbriques dans l'algo -> K indeice des iteratios 
i -> lignes
j -> colonnes

algo -> se fait $O(n^3)$ -> exactement apres evaluuation des operations  (division, additiion, multiplication) -> $O(frac(2 n^3,3))$

la methode de gausse deonnee correspond a une matrice qui n'a pas de pivot triangulaire
1. si un element$a^'_i = 0$ alors dans la methode on doit proceder a des echanges de colonnes

Autrement les transformation spour passer de $A = A^'$ sont les suivantes et donnent $ZZ$ systems equivalents (pas de changement de solution)

a. ajout ou retrait d'une ligne a une autre
b. something ou multiplication par une valeur d'une ligne
c. Permuter 2 lignes

la methode transforme A en sa'ppuyant sur une forme $A  = M N$
$A x = b <=> M dot N x = b <=> N x = M^(-1) b$
la revolution se fait en 2 temps $cases(N x = y, y = M^(-1) b,)$ on resoud $y = M^(-1) b$ puis on remplace $y$ dans $N x = y$ 
=> On obtient $x$ $x = N^(-1) dot y $

D'autres methodes directes posent des formes particulieres de $M$ et $N$:

$M = L$: matrice triangulaire inferieure
$M = U$: matrice triangulaire superieure

$A = L dot U$ Quelque decomposition sont :
- Doslittle dans $L : l_i = 1 forall i$
- Ecrout dans    $U : U_i = 1 forall i$
- Cholensky dans $L = R^T U = R$

methode de Cholensky pour la resolution de $A x = b$

Pour obtenir la forme $R^T R$ de $A$ doit etre symetrique
et definie positive c'est a dire verifie: $x^T A x > 0 forall x in RR^n, x$ non nul.

Exemple
$ 
  mat(1,1,1; 1,2,2; 1,2,3;)
$

$
  x^T A x = (x_1, x_2, x_3) A mat(x_1; x_2; x_3;) = 
  ( x_1 + x_2 + x_3 )^2 +
  ( x_2 + x_3 )^2 + x^2_3 > 0
$

$
  A = R^T dot R => A x = b & <=> R^T R x = b
                           & <=> R x = (R^T) bb
                           & cases(
                             y = (R^T)^(text("something")) b,
                             R x = y,
                           ) 
$

$
  A mat(1,1,1; 1,2,2,; 1,2,3;) = 
  mat(r_(1,1), 0, 0; r_(2,1), r_(2,2), 0; r_(3,1), r_(3,2), r_(3,3,);) dot 
  mat(r_(1,1), r_(1,2), r_(1,1); 0, r_(2,2), r_(2,3); 0, 0, r_(3,3);) \

  text("etape 1") \

  r_(1 1)^2 = 1 != 0 \
  r_(1 1) r_(1 2) = 1 \
  r_(1 2) = frac(1, r_(1 1)) = 1 \
  r_(1 1) r_(1 3) = 1 = r_(1 3) = frac(1, r_(1 1)) = 1 \

  text("etape 2") \
  r^2_(1 2) + 



  text("etape 3") \


  // FINISH later pris en photo
$

Algorithme
Pour $i = 1$ a $n$ faire
$s = a_(i,i) - sum_(j=1)^(i-1) r^2_(j,i)$
si $s <= 0$ alors arret , A n'est pas definie positive et $A = R^T R$ n'exsite pas

sinon $r_(i,i) = sqrt(s)$
pour $j = i + 1$ a $n$ faire
$r_(i,j) = a_(i,j) - sum_(k=1)^(i-1) r_(k i) r_(k j) r_(i i)$ 

2. Methodes indirectes (iteratives)

$A x = b$, $A_(n n)$ inversibles
Methodes itratives ont pou r objectif de detmerine $x$ aussi exact que possible

S'appuiant sur $A = M = N$ $M$ facilement inversible (Triang, orthog, diag, ...)

$
  A = M = N => 
  A x = b <=> (M - N) x = b <=> M x - N x = b <=> M x = N x + b
  M^(-1) M x &= M^(-1) N + M^(-1) n \
  x = M^(-1) N x + M^(-1) n
  x = F(x) text("equation de point fixe")
$ 

=> on peut alors suppposer, qu'en partant d'un point quelconque $x$ on peut arriver a un point $x: x = F(x)$ par l'algo
Choisir $x^(a)$ initial
 
Pour $k >= 0$
$x^(k + 1) = F(x^k) = M^(-1) N x^k + M^(-1) b$ 

Convergence la solution doit etre obtenue au bout d'un nombre fini d'iterations -> Conditions ?

Dans le cas general, l'arret doit etre assurer par nombre d'itration maximum, NbIterMax = $10^5$

Autre critere d'arret important. A chaque iteration $k$ tester $||A x^(k) - b|| <= eps - 10^6$
Arret sur une bonne solution


