// source-confidence: high
// source-note: definition and proof are aligned with the handwritten correction and cross-checked against the official TD02 statement.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

Soit $M$ l'ensemble des mots écrits avec l'alphabet $\{0,1\}$ et

$
E
=
{m in M | m " contient un nombre pair de 1"}.
$

On propose la construction inductive suivante.

== Construction inductive

On note $E_C$ l'ensemble construit par les règles suivantes.

*Base.*

$
epsilon in E_C.
$

*Règles de construction.*

Pour tout $m in E_C$ :

- *R1.* $m 0 in E_C$ ;
- *R2.* $0 m in E_C$ ;
- *R3.* $1 m 1 in E_C$.

Montrons que cette définition est valide et complète.

== Validité : $E_C subset.eq E$

La base $epsilon$ contient zéro symbole $1$, donc un nombre pair de $1$.

Supposons $m in E_C$ et supposons que $m$ contienne un nombre pair de $1$.

- R1 et R2 ajoutent uniquement un symbole $0$ : le nombre de $1$ ne change pas.
- R3 ajoute exactement deux symboles $1$ : la parité du nombre de $1$ ne change pas.

Ainsi chaque mot construit appartient à $E$.

Donc

$
E_C subset.eq E.
$

== Complétude : $E subset.eq E_C$

On raisonne par induction forte sur la longueur du mot.

*Base.* Pour le mot vide,

$
epsilon in E_C.
$

*Hypothèse d'induction.* Supposons que tout mot de $E$ de longueur au plus $n$
appartienne à $E_C$.

Soit $m'$ un mot de $E$ de longueur $n+1$.

On distingue les trois formes utilisées dans la construction.

=== Cas R1

Si

$
m'=m 0,
$

alors supprimer le dernier $0$ ne change pas le nombre de $1$.

Ainsi

$
m in E.
$

Comme $abs(m)=n$, l'hypothèse d'induction donne

$
m in E_C.
$

Par R1,

$
m'=m 0 in E_C.
$

=== Cas R2

Si

$
m'=0 m,
$

on raisonne de la même manière : $m$ contient encore un nombre pair de $1$,
donc $m in E_C$ par hypothèse d'induction, puis

$
m'=0 m in E_C.
$

=== Cas R3

Si le mot ne commence ni ne se termine par $0$, il commence et se termine par
$1$. On peut donc écrire

$
m'=1 m 1.
$

Comme $m'$ contient un nombre pair de $1$, le mot $m$ obtenu en retirant les
deux $1$ extrêmes contient encore un nombre pair de $1$.

De plus,

$
0 <= abs(m) <= n-1.
$

Par hypothèse d'induction,

$
m in E_C.
$

Puis, par R3,

$
m'=1 m 1 in E_C.
$

Ainsi,

$
E subset.eq E_C.
$

Finalement,

$
E_C=E.
$
