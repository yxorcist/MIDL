// source-confidence: high
// source-note: énoncé et numérotation vérifiés dans la fiche TD02 existante ; les photos manuscrites fournissent les questions 1 et 3 (s, f et h).
// source-note: les démonstrations des questions 2 et 4 sont des compléments mathématiques rédigés indépendamment, pas des transcriptions de la correction manuscrite.


#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 12 — Arbres binaires étiquetés

On considère la construction inductive des arbres binaires étiquetés sur

$
Sigma=\{a,b\}.
$

*Base.*

$
emptyset in "AB".
$

*Règle d'induction.*

Si

$
T_1,T_2 in "AB"
$

et

$
x in Sigma,
$

alors

$
(T_1,x,T_2) in "AB".
$

Ainsi,

$
(emptyset,x,emptyset)
$

est un arbre réduit à un seul noeud étiqueté $x$.

Plus généralement,

$
(T_1,x,T_2)
$

désigne l'arbre de racine étiquetée $x$, de sous-arbre gauche $T_1$ et de sous-arbre droit $T_2$.

== Question 1 — Arbres à un, deux et trois noeuds

La correction représente d'abord l'arbre vide

$
emptyset.
$

Un arbre à un noeud est de la forme

$
(emptyset,x,emptyset).
$

Un arbre à deux noeuds s'obtient en plaçant un arbre à un noeud à gauche ou à droite de la racine.

Pour trois noeuds, les notes dessinent les différentes formes obtenues en ajoutant un noeud à un arbre à deux noeuds, ainsi que le cas où les deux sous-arbres de la racine sont non vides.

Les étiquettes appartiennent à

$
Sigma=\{a,b\}.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Schémas.* Les dessins manuscrits sont décrits ici textuellement afin de ne pas reconstruire approximativement leur géométrie.
]

== Question 2

Pour un arbre non vide $T$, montrer que le nombre de noeuds de la forme

$
(T_1,x,T_2)
$

avec

$
T_1 != emptyset
quad "et" quad
T_2 != emptyset
$

est égal au nombre de feuilles de la forme

$
(emptyset,x,emptyset)
$

moins $1$.

=== Complément — Démonstration par induction structurelle

*Cette démonstration est reconstruite à partir de l'énoncé, et non transcrite des photographies.*

Pour un arbre $T$, notons :

- $f(T)$ le nombre de feuilles ;
- $b(T)$ le nombre de noeuds ayant deux sous-arbres non vides.

On veut montrer que pour tout *arbre non vide* $T$,

$
b(T) = f(T)-1.
$

*Base.* Si $T=(emptyset,x,emptyset)$, alors la racine est une feuille :

$
f(T)=1,
quad b(T)=0=f(T)-1.
$

*Hérédité.* Soit $T=(T_1,x,T_2)$, non réduit à une feuille. On suppose la propriété vraie pour les sous-arbres non vides.

- Si exactement un sous-arbre est non vide, disons $T_1$, la racine n'a pas deux enfants. Donc

  $
  b(T)=b(T_1)
  =f(T_1)-1
  =f(T)-1.
  $

- Si les deux sous-arbres sont non vides, la racine est un noeud compté dans $b(T)$ :

  $
  b(T)=b(T_1)+b(T_2)+1
  $

  $
  =(f(T_1)-1)+(f(T_2)-1)+1
  =f(T_1)+f(T_2)-1
  =f(T)-1.
  $

Les deux cas épuisent les arbres non réduits à une feuille. La propriété est donc vérifiée par induction structurelle.

== Question 3 — Fonctions définies inductivement

=== Nombre de noeuds $s(T)$

On définit

$
s(T)
$

comme le nombre de noeuds de $T$.

*Base.*

Si

$
T=emptyset,
$

alors

$
s(T)=0.
$

*Règle d'induction.*

Si

$
T=(T_1,x,T_2),
$

alors

$
s(T)
=
s(T_1)+s(T_2)+1.
$

=== Nombre de feuilles $f(T)$

La photographie fournit explicitement la définition inductive du nombre de feuilles.

*Base (arbre vide).*

$
f(emptyset)=0.
$

*Base (arbre à un noeud).*

Pour $x in Sigma$,

$
f((emptyset,x,emptyset))=1.
$

*Règle d'induction.*

Si $T=(T_1,x,T_2)$ et *au moins un des deux sous-arbres est non vide*, alors

$
f(T)=f(T_1)+f(T_2).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Précision importante visible dans les notes.* La condition « au moins un sous-arbre non vide » est nécessaire. Sans elle, une feuille vérifierait à tort $f(T)=0+0=0$, au lieu de $f(T)=1$.
]

=== Hauteur $h(T)$

On mesure la hauteur en *nombre de noeuds* du plus long chemin allant de la racine à une feuille.

*Base.*

$
h(emptyset)=0.
$

*Règle d'induction.*

Pour $T=(T_1,x,T_2)$,

$
h(T)=1+max(h(T_1),h(T_2)).
$

Cette relation donne en particulier la hauteur $1$ à un arbre composé d'un seul noeud.

== Question 4

Montrer que

$
s(T) <= 2^(h(T))-1.
$

=== Complément — Preuve par induction structurelle

*La démonstration suivante est un complément mathématique indépendant : elle n'est pas visible sur les photographies.*

*Base.* Pour l'arbre vide,

$
s(emptyset)=0
=
2^(h(emptyset))-1.
$

*Hérédité.* Soit $T=(T_1,x,T_2)$. Supposons pour $T_1$ et $T_2$ que

$
s(T_i) <= 2^(h(T_i))-1
quad "pour " i=1,2.
$

Alors

$
s(T)
=
s(T_1)+s(T_2)+1
<=
2^(h(T_1))+2^(h(T_2))-1.
$

Or, avec $H=h(T)=1+max(h(T_1),h(T_2))$, on a

$
h(T_1) <= H-1
quad "et" quad
h(T_2) <= H-1.
$

Donc

$
s(T) <= 2^(H-1)+2^(H-1)-1=2^H-1.
$

C'est bien

$
s(T) <= 2^(h(T))-1.
$

La propriété est vraie pour tout arbre construit inductivement.
