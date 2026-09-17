#import "../style.typ": *

= Méthodes directes : Cramer et matrices particulières

== Méthode de Cramer

Pour un système $A x = b$ avec $A$ inversible, la règle de Cramer donne chaque composante de la solution :

$
x_i = det(A_i) / det(A),
$

où $A_i$ est obtenue en remplaçant la colonne $i$ de $A$ par le vecteur $b$.

#example(title: "Exemple de la séance")[
Le système est donné par

$
A = mat(1, 2, 2; 1, 3, 3; 3, 7, 8),
quad
b = mat(2; 2; 3).
$

Le déterminant de $A$ vaut $1$, donc $A$ est inversible. L'application de la règle de Cramer conduit à

$
x = mat(2; 3; -3).
$
]

#remark[
La méthode de Cramer donne bien la solution, mais les notes signalent qu'elle devient coûteuse lorsque la taille du système augmente, car elle nécessite le calcul de plusieurs déterminants.
]

== Matrices particulières

Le cours introduit trois structures utiles pour les méthodes directes.

=== Matrice triangulaire supérieure

Une matrice $A=(a_(i,j))$ est triangulaire supérieure lorsque

$
a_(i,j) = 0 quad "si" quad i > j.
$

=== Matrice triangulaire inférieure

Elle est triangulaire inférieure lorsque

$
a_(i,j) = 0 quad "si" quad i < j.
$

=== Matrice diagonale

Elle est diagonale lorsque

$
a_(i,j) = 0 quad "si" quad i != j.
$

== Résolution facilitée

Si $A$ est diagonale, le système $A x = b$ se résout directement :

$
x_i = b_i / a_(i,i).
$

Si $A$ est triangulaire supérieure, on commence par la dernière équation :

$
x_n = b_n / a_(n,n),
$

puis on remonte par substitution. Pour une matrice triangulaire inférieure, le principe est analogue en partant de la première équation.
