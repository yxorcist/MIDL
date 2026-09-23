#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 6

On considère un ensemble $E subset.eq ZZ^2$ construit à partir de la base

$
(3,5) in E
$

et des règles suivantes :

- *R1.* Si $(x,y) in E$, alors $(x+2,y) in E$.
- *R2.* Si $(x,y) in E$, alors $(-x,y) in E$.
- *R3.* Si $(x,y) in E$, alors $(y,x) in E$.

Montrons que

$
E
=
{(n,m) in ZZ^2 | n " et " m " sont impairs"}.
$

== Première inclusion

Montrons que

$
E subset.eq {(n,m) in ZZ^2 | n " et " m " sont impairs"}.
$

La base $(3,5)$ possède deux composantes impaires.

Les règles préservent cette propriété :

- R1 ajoute $2$ à la première composante, donc conserve sa parité ;
- R2 change uniquement le signe de la première composante ;
- R3 échange les deux composantes.

Ainsi tout élément construit dans $E$ possède deux composantes impaires.

Donc

$
E subset.eq {(n,m) in ZZ^2 | n " et " m " sont impairs"}.
$

== Construction de $(1,1)$

À partir de $(3,5)$,

$
(3,5)
arrow.r(R2)
(-3,5)
arrow.r(R1^2)
(1,5)
arrow.r(R3)
(5,1)
arrow.r(R2)
(-5,1)
arrow.r(R1^3)
(1,1).
$

Ainsi,

$
(1,1) in E.
$

== Inclusion réciproque

Soit $(n,m) in ZZ^2$ tel que $n$ et $m$ soient impairs.

Nous montrons que $(n,m) in E$.

=== Cas 1 : $n >= 1$ et $m >= 1$

Il existe $k_1,k_2 in NN$ tels que

$
n=2k_1+1,
quad
m=2k_2+1.
$

À partir de $(1,1) in E$, on applique R1 $k_1$ fois :

$
(1,1)
arrow.r(R1^k_1)
(n,1).
$

Puis R3 :

$
(n,1)
arrow.r(R3)
(1,n).
$

On applique alors R1 $k_2$ fois :

$
(1,n)
arrow.r(R1^k_2)
(m,n),
$

puis R3 :

$
(m,n)
arrow.r(R3)
(n,m).
$

Donc $(n,m) in E$.

=== Cas 2 : $n < 1$ et $m < 1$

Comme $n$ et $m$ sont impairs négatifs, $-n$ et $-m$ sont impairs positifs.

Par le cas 1,

$
(-n,-m) in E.
$

On applique R2, puis R3, puis R2, puis R3, ce qui permet de changer successivement les signes des deux composantes. On obtient finalement

$
(n,m) in E.
$

=== Cas 3 : signes opposés

Si $n >= 1$ et $m < 1$, alors $-m >= 1$. Par le cas 1,

$
(n,-m) in E.
$

En utilisant R3, puis R2, puis R3, on change le signe de la seconde composante et on obtient

$
(n,m) in E.
$

Le cas $n < 1$ et $m >= 1$ se ramène au précédent par R3.

Ainsi,

$
{(n,m) in ZZ^2 | n " et " m " sont impairs"}
subset.eq E.
$

Avec la première inclusion,

$
E
=
{(n,m) in ZZ^2 | n " et " m " sont impairs"}.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Lecture de la source.* Les règles R1, R2 et R3 ont été transcrites à partir de la photo. R1 est interprétée comme $(x,y) arrow (x+2,y)$, ce qui est cohérent avec les exemples et les constructions manuscrites.
]
