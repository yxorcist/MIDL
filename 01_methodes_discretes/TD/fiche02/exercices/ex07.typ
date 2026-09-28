// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

Soit $M$ l'ensemble des mots écrits sur l'alphabet $\{0,1\}$, et

$
E
=
{m in M | m " contient un nombre pair de 1"}.
$

On propose une définition inductive de $E$.

== Construction inductive

On note $E_C$ l'ensemble construit par les règles suivantes.

*Base.*

$
epsilon in E_C,
$

où $epsilon$ désigne le mot vide.

*Règles de construction.*

Pour tout $m in E_C$ :

- *R1.* $m 0 in E_C$ ;
- *R2.* $0 m in E_C$ ;
- *R3.* $1 1 m in E_C$ ;
- *R4.* $m 1 1 in E_C$ ;
- *R5.* $1 m 1 in E_C$.

Montrons que cette construction est valide et complète, c'est-à-dire

$
E_C=E.
$

== Validité : $E_C subset.eq E$

Chaque règle conserve la parité du nombre de symboles $1$.

La base $epsilon$ contient zéro symbole $1$, donc un nombre pair de $1$.

Supposons qu'un mot $m in E_C$ contienne un nombre pair de $1$.

- R1 et R2 ajoutent seulement un symbole $0$ : le nombre de $1$ ne change pas.
- R3, R4 et R5 ajoutent exactement deux symboles $1$ : la parité du nombre de $1$ ne change pas.

Ainsi, tout mot construit dans $E_C$ contient un nombre pair de $1$.

Donc

$
E_C subset.eq E.
$

== Complétude : $E subset.eq E_C$

Montrons par induction forte sur la longueur $abs(m)$ que tout mot $m in E$
appartient à $E_C$.

*Base.* Si

$
abs(m)=0,
$

alors

$
m=epsilon.
$

Par la règle de base,

$
m in E_C.
$

*Hypothèse d'induction.* Supposons que, pour un entier $n>=0$, tout mot
$w in E$ tel que

$
abs(w)<=n
$

appartienne à $E_C$.

*Hérédité.* Soit $m in E$ tel que

$
abs(m)=n+1.
$

On distingue les cas suivants.

=== Cas 1 — Le mot se termine par $0$

On peut écrire

$
m=w0.
$

Le mot $w$ contient exactement le même nombre de $1$ que $m$, donc

$
w in E.
$

De plus,

$
abs(w)=n.
$

Par hypothèse d'induction,

$
w in E_C.
$

Puis, par R1,

$
m=w0 in E_C.
$

=== Cas 2 — Le mot commence par $0$

On peut écrire

$
m=0w.
$

Comme précédemment,

$
w in E
quad "et" quad
abs(w)=n.
$

Par hypothèse d'induction,

$
w in E_C.
$

Puis, par R2,

$
m=0w in E_C.
$

=== Cas 3 — Le mot commence et se termine par $1$

On peut écrire

$
m=1w1.
$

Comme $m$ contient un nombre pair de $1$, retirer les deux $1$ extrêmes laisse
encore un nombre pair de $1$. Ainsi,

$
w in E.
$

De plus,

$
abs(w)=n-1<=n.
$

Par hypothèse d'induction,

$
w in E_C.
$

Puis, par R5,

$
m=1w1 in E_C.
$

Ces cas couvrent tous les mots non vides : si le mot ne commence ni ne se
termine par $0$, alors il commence et se termine nécessairement par $1$.

Donc

$
E subset.eq E_C.
$

Avec la validité,

$
E_C=E.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Remarque.* Les règles R3 et R4 sont valides mais redondantes : les règles
  R1, R2 et R5, avec la base $epsilon$, suffisent déjà pour construire tout
  mot contenant un nombre pair de $1$.
]
