#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

$
E = RR^4, quad
F = {u in RR^4 | cases(
  x - 2y + a z^2 = 0,
  y - 3z + 4t = b
)}.
$

== 1. $F$ SEV ?

On a :

$
y - 3z + 4t = b.
$

Testons si $0_E in F$ :

$
0 - 3 dot 0 + 4 dot 0 = b
$

Alors $0_E in F$ pour $b = 0$.

Pour la première équation :

$
x - 2y + a z^2 = 0.
$

Testons $0_E in F$ :

$
0 - 2 dot 0 + a dot 0^2 = 0.
$

Testons la stabilité par addition.

Supposons que $F$ soit stable par addition. Pour $u,v in F$, on aurait $u+v in F$.

Les termes quadratiques de $u$ et $v$ sont respectivement $a z_u^2$ et $a z_v^2$.

Le terme quadratique de l'addition est :

$
a(z_u + z_v)^2
= a[z_u^2 + z_v^2 + 2z_u z_v]
= a z_u^2 + a z_v^2 + 2a z_u z_v.
$

La stabilité impose :

$
2a z_u z_v = 0.
$

Avec $u,v in F$ tels que $z_u != 0$ et $z_v != 0$, la seule solution est $a = 0$.

Donc pour $a=b=0$, $F$ est un SEV.

== 2. Base de $F$

$
F = {u in RR^4 | cases(
  x - 2y = 0,
  y - 3z + 4t = 0
)}.
$

Déterminons une base :

$
cases(
  x = 2y,
  y = 3z - 4t
)
arrow
cases(
  x = 6z - 8t,
  y = 3z - 4t
).
$

On obtient :

$
(x,y,z,t)
= z(6,3,1,0) + t(-8,-4,0,1).
$

$
B_F = ((6,3,1,0), (-8,-4,0,1)).
$

== 3. $w in F$ ?

$
w = (4,2,2,1).
$

$
4 - 2 dot 2 = 0 quad checkmark
$

$
2 - 3 dot 2 + 4 dot 1 = 0 quad checkmark
$

Donc $w in F$.

== 4. $F$ et $G$ supplémentaires ?

$
v_1=(4,0,0,1), quad v_2=(0,1,1,0)
$

$
G = "Vect"(v_1,v_2).
$

=== Méthode 1

On constate que :

$
w = v_1 + 2v_2.
$

Donc $w in F inter G$ et $w != 0$.

$F$ et $G$ ne sont pas supplémentaires.

=== Méthode 2

De la question 2 :

$
dim F = 2, quad dim G = 2,
$

$
dim F + dim G = 4 = dim E.
$

Testons si $F inter G = {0_E}$.

On pose $u in G$. Il existe $(alpha,beta) in RR^2$ tels que :

$
u = alpha v_1 + beta v_2
= (4alpha,beta,beta,alpha).
$

Testons si $u in F$ :

$
cases(
  4alpha - 2beta = 0,
  beta - 3beta + 4alpha = 0
)
arrow
cases(
  beta = 2alpha,
  2alpha - 6alpha + 4alpha = 0
).
$

Donc $alpha in RR$, $beta = 2alpha$ : une infinité de solutions existe.

$
F inter G != {0_E}.
$

$F$ et $G$ ne sont pas supplémentaires.

=== Méthode 3 — Matrice

On prend comme colonnes les vecteurs $f_1,f_2,v_1,v_2$ :

$
M = mat(
  6, -8, 4, 0;
  3, -4, 0, 1;
  1,  0, 0, 1;
  0,  1, 1, 0
).
$

$
L_2 arrow L_2 - 3L_3, quad L_1 arrow L_1 - 6L_3
$

$
arrow mat(
  0, -8, 4, -6;
  0, -4, 0, -2;
  1,  0, 0,  1;
  0,  1, 1,  0
).
$

$
L_1 arrow L_1 + 8L_4, quad L_2 arrow L_2 + 4L_4
$

$
arrow mat(
  0, 0, 12, -6;
  0, 0,  4, -2;
  1, 0,  0,  1;
  0, 1,  1,  0
).
$

$
L_1 arrow L_1 - 3L_2
$

$
arrow mat(
  0, 0, 0,  0;
  0, 0, 4, -2;
  1, 0, 0,  1;
  0, 1, 1,  0
).
$

Donc :

$
"rg"(M) = dim(F+G) = 3 < dim E = 4.
$

$F$ et $G$ ne sont pas supplémentaires.
