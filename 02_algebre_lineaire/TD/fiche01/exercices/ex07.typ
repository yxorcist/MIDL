// source-confidence: medium
// source-uncertainty: the photographs are faint; the official TD01 sheet is used as the canonical source for the statement and numbering.
// source-uncertainty: the handwritten correction supplied here clearly supports questions 1 and 2; no correction of question 3 is visible in the supplied pages.

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

L'énoncé demande de démontrer

$
E=E_3 "⊕" E_4.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Correction manquante.* La question 3 figure sur la fiche TD officielle,
  mais sa correction n'apparaît pas dans les photographies fournies.
]
