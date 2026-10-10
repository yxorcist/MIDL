// source-confidence: high
// source-note: numbering and statement cross-checked against official TD02; handwritten correction covers questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 1

== Question 1 — Linéarité

### $phi_1$

Pour
$
phi_1(x,y)=(x+2y,-2x-3y),
$
la correction vérifie directement que, pour $u,v in RR^2$ et $lambda in RR$,

$
phi_1(lambda u+v)=lambda phi_1(u)+phi_1(v).
$

Donc $phi_1$ est $RR$-linéaire.

### $phi_2$

Pour
$
phi_2(f)=f(0)+2f(1),
$
on a, pour $f_1,f_2 in cal(C)(RR)$ et $lambda in RR$,

$
phi_2(lambda f_1+f_2)
=
lambda phi_2(f_1)+phi_2(f_2).
$

Donc $phi_2$ est $RR$-linéaire.

### $phi_3$

On considère
$
phi_3(P)=(P(0))^2.
$

La correction choisit un polynôme constant non nul et constate que la compatibilité avec la multiplication scalaire échoue.

Par exemple, avec $P=1$,

$
phi_3(2P)=4
$

alors que

$
2phi_3(P)=2.
$

Donc $phi_3$ n'est pas linéaire.

### $phi_4$

Pour
$
phi_4(P)=P',
$
la linéarité de la dérivation donne

$
phi_4(lambda P+mu Q)
=
lambda phi_4(P)+mu phi_4(Q).
$

Donc $phi_4$ est $RR$-linéaire.

== Question 2 — Isomorphisme $phi_1$

La matrice de $phi_1$ dans les bases canoniques est

$
A=
mat(
  1, 2;
  -2, -3;
).
$

Son déterminant vaut $1$, donc $A$ est inversible et $phi_1$ est un isomorphisme.

Pour déterminer la réciproque, on pose

$
(X,Y)=phi_1(x,y).
$

On résout

$
cases(
X=x+2y,
Y=-2x-3y.
)
$

et on obtient

$
x=-3X-2Y,
quad
y=2X+Y.
$

Ainsi,

$
phi_1^(-1)(X,Y)
=
(-3X-2Y,2X+Y).
$

== Question 3 — Linéarité sur $CC$ et sur $RR$

### $psi_1$

La première application est la conjugaison complexe.

Elle n'est pas $CC$-linéaire : la correction utilise le scalaire $i$ pour montrer que la compatibilité avec la multiplication scalaire complexe échoue.

En revanche, la conjugaison respecte l'addition et la multiplication par un scalaire réel.

Donc $psi_1$ est $RR$-linéaire mais pas $CC$-linéaire.

### $psi_2$

On a
$
psi_2(z)="Re"(z).
$

Elle n'est pas $CC$-linéaire. Par exemple,

$
psi_2(3i)=0
$

alors que

$
i psi_2(3)=3i.
$

Pour un scalaire réel $lambda$,

$
"Re"(lambda z+z')
=
lambda "Re"(z)+"Re"(z').
$

Donc $psi_2$ est $RR$-linéaire.

### $psi_3$

On considère
$
psi_3(z_1,z_2)
=
i z_1-(3+2i)z_2.
$

Cette expression est une combinaison linéaire complexe des coordonnées.

Ainsi $psi_3$ est $CC$-linéaire, donc aussi $RR$-linéaire.
