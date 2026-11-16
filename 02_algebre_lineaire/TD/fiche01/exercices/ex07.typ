// source-confidence: high
// source-note: numbering and statements are cross-checked against the official TD01 sheet; the clearer handwritten correction supplied later covers questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

On considère l'espace vectoriel $E$ des fonctions

$
f: CC -> CC.
$

On note

$
sigma:CC->CC,
quad
z->-z.
$

== Question 1 — Lois de $E$

Pour $f,g in E$, l'addition est définie par

$
(f+g):CC->CC,
quad
z->f(z)+g(z).
$

Pour $lambda in CC$ et $f in E$, le produit externe est défini par

$
(lambda f):CC->CC,
quad
z->lambda f(z).
$

== Question 2 — Sous-espaces vectoriels

On considère

$
E_1={f in E | f(1)=0},
$

$
E_2={f in E | f(0)=1},
$

$
E_3={f in E | f=f compose sigma},
$

et

$
E_4={f in E | sigma compose f=f compose sigma}.
$

=== Étude de $E_1$

La fonction nulle appartient à $E_1$ car

$
0_E(1)=0.
$

Soient $f,g in E_1$ et $lambda in CC$.

Alors

$
(lambda f+g)(1)
=
lambda f(1)+g(1)
=
0.
$

Donc

$
lambda f+g in E_1.
$

Ainsi,

$
E_1
$

est un sous-espace vectoriel de $E$.

=== Étude de $E_2$

La fonction nulle n'appartient pas à $E_2$, puisque

$
0_E(0)=0 != 1.
$

Donc

$
E_2
$

n'est pas un sous-espace vectoriel de $E$.

=== Étude de $E_3$

La condition

$
f=f compose sigma
$

s'écrit, pour tout $z in CC$,

$
f(z)=f(-z).
$

La fonction nulle vérifie cette propriété.

Soient $f,g in E_3$ et $lambda in CC$.

Pour tout $z in CC$,

$
(lambda f+g)(-z)
=
lambda f(-z)+g(-z)
=
lambda f(z)+g(z)
=
(lambda f+g)(z).
$

Donc

$
lambda f+g in E_3.
$

Ainsi,

$
E_3
$

est un sous-espace vectoriel de $E$.

=== Étude de $E_4$

La condition

$
sigma compose f=f compose sigma
$

équivaut à

$
-f(z)=f(-z),
$

c'est-à-dire

$
f(-z)=-f(z)
$

pour tout $z in CC$.

La fonction nulle vérifie cette propriété.

Soient $f,g in E_4$ et $lambda in CC$.

Pour tout $z in CC$,

$
(lambda f+g)(-z)
=
lambda f(-z)+g(-z)
=
-lambda f(z)-g(z)
=
-(lambda f+g)(z).
$

Donc

$
lambda f+g in E_4.
$

Ainsi,

$
E_4
$

est un sous-espace vectoriel de $E$.

== Question 3 — Somme directe

On cherche à montrer que $E=E_3 "⊕" E_4$, c'est-à-dire :

$
E=E_3+E_4
quad "et" quad
E_3 inter E_4={0_E}.
$

=== Montrons que $E=E_3+E_4$

Soit $f in E$. Cherchons $f_1 in E_3$ et $f_2 in E_4$ telles que :

$
f(z)=f_1(z)+f_2(z).
$

Comme $f_1$ est paire et $f_2$ impaire, on a :

$
cases(
f(z)=f_1(z)+f_2(z),
f(-z)=f_1(z)-f_2(z)
).
$

En additionnant les deux équations :

$
f(z)+f(-z)=2f_1(z),
$

d'où :

$
f_1(z)=(f(z)+f(-z))/2.
$

En les soustrayant :

$
f(z)-f(-z)=2f_2(z),
$

d'où :

$
f_2(z)=(f(z)-f(-z))/2.
$

Vérifions leur appartenance aux deux sous-espaces.

Pour $f_1$ :

$
f_1(-z)=(f(-z)+f(z))/2=f_1(z).
$

Donc $f_1 in E_3$.

Pour $f_2$ :

$
f_2(-z)=(f(-z)-f(z))/2=-f_2(z).
$

Donc $f_2 in E_4$.

De plus :

$
f_1(z)+f_2(z)
=(f(z)+f(-z))/2+(f(z)-f(-z))/2
=f(z).
$

Ainsi, pour tout $f in E$, on a $f=f_1+f_2$ avec $f_1 in E_3$ et $f_2 in E_4$. Donc :

$
E subset.eq E_3+E_4.
$

L'inclusion réciproque vient de $E_3 subset.eq E$ et $E_4 subset.eq E$.

Finalement :

$
E=E_3+E_4.
$

=== Montrons que $E_3 inter E_4={0_E}$

Soit $f in E_3 inter E_4$. Pour tout $z in CC$, puisque $f$ est à la fois paire et impaire :

$
cases(
f(-z)=f(z),
f(-z)=-f(z)
)
arrow
2f(z)=0
arrow
f(z)=0.
$

Donc $f=0_E$ et :

$
E_3 inter E_4={0_E}.
$

Ainsi :

$
E=E_3 "⊕" E_4.
$
