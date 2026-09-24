#import "../style.typ": *

= Déterminant — propriétés

#remark([
  Le déterminant n'est pas une application linéaire sur l'espace des matrices.
])

#proposition([
  Soit $A in M_n(K)$.

  1. $A$ est inversible si et seulement si

     $
     det(A) != 0.
     $

     Dans ce cas,

     $
     det(A^(-1)) = 1 / det(A).
     $

  2. On a

     $
     det(A^T)=det(A).
     $

  3. Si $B$ est obtenue à partir de $A$ en échangeant deux colonnes, alors

     $
     det(B)=-det(A).
     $
])

#remark([
  Le critère d'inversibilité peut aussi se lire en termes de colonnes : une matrice carrée est inversible si et seulement si ses colonnes forment une base de $K^n$.
])
