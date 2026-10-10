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
