// source-confidence: medium
// source-note: fin d'une correction de Cholesky, sur la page qui précède le TD2 ; l'énoncé complet n'est pas visible.
// source-uncertainty: les valeurs manuscrites y_3=11/48, x_3=11/144, x_2=1/18 et x_1=-55/1152 comportent une erreur initiale de calcul ; résultats vérifiés ci-dessous.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Cholesky — Fin d'un exemple de résolution

La photographie commence à la fin du calcul de la factorisation. La matrice triangulaire supérieure obtenue est

$
R=mat(8,5,3;0,2,1;0,0,3).
$

On résout le système $A x=b$ à partir de la factorisation $A=R^T R$, avec

$
b=mat(1;1;1).
$

== Descente : $R^T y=b$

$
mat(8,0,0;5,2,0;3,1,3)
mat(y_1;y_2;y_3)
=
mat(1;1;1).
$

D'abord,

$
8y_1=1
=> y_1=1/8.
$

Ensuite,

$
5y_1+2y_2=1
=> y_2=3/16.
$

Enfin,

$
3y_1+y_2+3y_3=1.
$

D'où

$
y_3
=
(1-3/8-3/16)/3
=
7/48.
$

Donc

$
y=mat(1/8;3/16;7/48).
$

== Remontée : $R x=y$

$
mat(8,5,3;0,2,1;0,0,3)
mat(x_1;x_2;x_3)
=
mat(1/8;3/16;7/48).
$

En remontant,

$
x_3=(7/48)/3=7/144,
$

$
x_2=(3/16-7/144)/2=5/72,
$

et

$
x_1=(1/8-5(5/72)-3(7/144))/8
=-53/1152.
$

Ainsi,

$
x=mat(-53/1152;5/72;7/144).
$

== Écart avec les notes manuscrites

La photographie écrit $y_3=11/48$ et en déduit $x_3=11/144$, $x_2=1/18$, $x_1=-55/1152$. L'erreur survient au calcul de $y_3$ ; les valeurs ci-dessus sont les valeurs corrigées pour le système effectivement écrit.

La mention manuscrite $R R^T=A$ semble également inverser les facteurs : le schéma de résolution $R^T y=b$, puis $R x=y$, correspond à $A=R^T R$.
