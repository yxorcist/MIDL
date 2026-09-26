// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

On considère dans $RR^4$

$
v_1=(0,-1,1,1),
quad
v_2=(2,1,-1,1),
quad
v_3=(1,1,-1,0),
$

et

$
F="Vect"(v_1,v_2,v_3).
$

== Question 1.a — Extraire une base de $F$

Les notes donnent directement

$
B=(v_1,v_2).
$

Ainsi,

$
F="Vect"(v_1,v_2)
$

et

$
dim(F)=2.
$

== Question 1.b — Équations cartésiennes de $F$

Soit $(x,y,z,t) in F$.

Il existe $alpha,beta in RR$ tels que

$
(x,y,z,t)
=
alpha v_1+beta v_2.
$

Donc

$
(x,y,z,t)
=
alpha(0,-1,1,1)
+
beta(2,1,-1,1),
$

d'où

$
cases(
x=2 beta,
y=-alpha+beta,
z=alpha-beta,
t=alpha+beta.
)
$

On obtient alors

$
y+z=0
$

et

$
x-y-t=0.
$

Ainsi,

$
F
=
{(x,y,z,t) in RR^4 |
y+z=0 " et " x-y-t=0}.
$

== Question 2.a — Comparaison avec $F'$

On considère

$
w_1=(1,0,0,1),
quad
w_2=(2,-1,1,3)
$

et

$
F'="Vect"(w_1,w_2).
$

Montrons d'abord que

$
F' subset.eq F.
$

À partir des équations cartésiennes de $F$,

$
y+z=0
quad "et" quad
x-y-t=0,
$

on vérifie que

$
w_1 in F
quad "et" quad
w_2 in F.
$

Ainsi,

$
"Vect"(w_1,w_2) subset.eq F,
$

donc

$
F' subset.eq F.
$

Montrons maintenant l'inclusion réciproque. Les notes utilisent la base

$
(v_1,v_3)
$

de $F$.

Pour $v_1$, cherchons $a,b in RR$ tels que

$
v_1=a w_1+b w_2.
$

Avec

$
v_1=(0,-1,1,1),
$

on obtient

$
cases(
a+2b=0,
-b=-1,
b=1,
a+3b=1.
)
$

D'où

$
b=1
quad "et" quad
a=-2,
$

donc

$
v_1=-2w_1+w_2.
$

De même, pour

$
v_3=(1,1,-1,0),
$

on cherche $alpha,beta in RR$ tels que

$
v_3=alpha w_1+beta w_2.
$

Le système donne

$
beta=-1
quad "et" quad
alpha=3.
$

Ainsi,

$
v_3=3w_1-w_2.
$

Donc

$
v_1,v_3 in F',
$

et comme $(v_1,v_3)$ est une base de $F$,

$
F subset.eq F'.
$

Finalement,

$
F=F'.
$

== Question 2.b — Construction d'un supplémentaire

D'après le théorème de la base incomplète, on peut compléter une famille libre de
$F$ en une base de $RR^4$.

Les notes partent de la base canonique

$
(e_1,e_2,e_3,e_4)
$

et considèrent la famille

$
(e_1,e_2,v_1,v_3).
$

Cette famille est une base de $RR^4$.

En posant

$
G="Vect"(e_1,e_2),
$

on obtient alors

$
F+G=RR^4.
$

Comme les dimensions se complètent, $G$ est un supplémentaire de $F$ dans
$RR^4$.

== Question 3.a — Inclusion dans un hyperplan

Soit

$
H
=
{(x,y,z,t) in RR^4 | x-2y-z=t}.
$

On vérifie que les vecteurs d'une base de $F$ appartiennent à $H$.

Pour

$
v_1=(0,-1,1,1),
$

on a

$
0-2(-1)-1=1.
$

Donc

$
v_1 in H.
$

Pour

$
v_3=(1,1,-1,0),
$

on a

$
1-2+1=0.
$

Donc

$
v_3 in H.
$

Ainsi,

$
F subset.eq H.
$

== Question 3.b — Détermination de $I$

Les notes introduisent

$
C
=
{(x,y,z,t) in RR^4 |
x=0 " et " z+t=0}
$

et déterminent

$
I=H inter C.
$

Un vecteur $(x,y,z,t)$ appartient à $I$ si et seulement si

$
cases(
x=0,
z+t=0,
x-2y-z-t=0.
)
$

De $z+t=0$, on obtient

$
z=-t.
$

En utilisant $x=0$ dans l'équation de $H$,

$
-2y-z-t=0.
$

Comme $z=-t$,

$
-2y=0,
$

donc

$
y=0.
$

Ainsi,

$
I
=
{(0,0,-t,t) : t in RR}.
$

Donc

$
I="Vect"((0,0,-1,1)).
$

Une base de $I$ est

$
B_I=((0,0,-1,1)).
$

== Question 3.c — Montrer que $H=F ⊕ I$

L'équation de $H$ s'écrit

$
x=2y+z+t.
$

Ainsi,

$
(x,y,z,t)
=
y(2,1,0,0)
+
z(1,0,1,0)
+
t(1,0,0,1).
$

La famille

$
((2,1,0,0),(1,0,1,0),(1,0,0,1))
$

est libre, donc

$
dim(H)=3.
$

Or

$
dim(F)+dim(I)=2+1=3.
$

Il reste à vérifier que

$
F inter I={0}.
$

Soit $(x,y,z,t) in F inter I$.

Comme le vecteur appartient à $F$,

$
cases(
y+z=0,
x-y-t=0.
)
$

Et comme il appartient à $I$,

$
cases(
x=0,
y=0,
z=-t.
)
$

On obtient alors successivement

$
x=0,
quad
y=0,
quad
z=0,
quad
t=0.
$

Donc

$
F inter I={0}.
$

Par conséquent,

$
H=F ⊕ I.
$

== Question 3.d — Décomposition d'un vecteur

On considère

$
u=(1,0,1,0).
$

On vérifie

$
1-2 dot 0-1=0,
$

donc

$
u in H.
$

Les notes donnent la décomposition

$
u
=
-(0,0,-1,1)
+
(1,0,0,1).
$

Le premier terme appartient à $I$ et le second appartient à $F$.

Ainsi $u$ est bien décomposé suivant

$
H=F ⊕ I.
$
