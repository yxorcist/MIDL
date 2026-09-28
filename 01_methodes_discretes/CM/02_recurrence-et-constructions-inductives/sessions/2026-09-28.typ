#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 28/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Cardinalité, équipotence et diagonalisation]
]
#line(length: 100%)
#v(0.7em)

// source-confidence: medium
// source-uncertainty: two parts of the board were recorded only as photos and are not yet available in the repo.
// source-uncertainty: the exact diagram relating sets/bitmaps/cubes and the professor's pairing-function table are missing; clearly labelled clarifications are supplied below.

= Cardinalité de l'ensemble des parties

Pour un ensemble fini $A$, les notes énoncent

$
|P(A)| = 2^(|A|).
$

Autrement dit, un ensemble à $n$ éléments possède exactement $2^n$
sous-ensembles.

== Preuve par induction sur $|A|$

*Base.* Si

$
|A|=0,
$

alors

$
A=emptyset.
$

On a

$
P(emptyset)={emptyset},
$

donc

$
|P(emptyset)|=1=2^0.
$

*Hérédité.* Supposons le résultat vrai pour les ensembles de cardinalité $n$.
Soit $A$ tel que

$
|A|=n+1.
$

Comme $A != emptyset$, choisissons $x in A$ et posons

$
A'=A\{x}.
$

Alors

$
|A'|=n.
$

Les sous-ensembles de $A$ se répartissent en deux familles disjointes :

- ceux qui ne contiennent pas $x$ ;
- ceux qui contiennent $x$.

La première famille est exactement $P(A')$.

Pour la seconde, chaque sous-ensemble s'écrit de manière unique sous la forme

$
B union {x},
quad B in P(A').
$

Les deux familles ont donc chacune $|P(A')|$ éléments. Ainsi,

$
|P(A)|
=
2 |P(A')|.
$

Par hypothèse d'induction,

$
|P(A')|=2^n,
$

donc

$
|P(A)|
=
2 dot 2^n
=
2^(n+1)
=
2^(|A|).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Lecture de la source.* Le tableau contenait la séparation des sous-ensembles
  suivant la présence ou non d'un élément $x$. Une photographie manque encore ;
  la rédaction ci-dessus reconstruit proprement cette preuve standard à partir
  des fragments notés.
]

= Représentation binaire des sous-ensembles

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Complément de clarification.* Cette partie explicite la remarque du cours sur
  les bitmaps et les cubes. Le dessin exact du professeur manque encore.
]

Si

$
A={a_1,a_2,dots,a_n},
$

tout sous-ensemble $B subset.eq A$ peut être représenté par un mot binaire de
longueur $n$ :

$
(b_1,b_2,dots,b_n),
$

où

$
b_i =
cases(
  1 & "si " a_i in B,
  0 & "sinon".
)
$

Par exemple, pour

$
A={a,b,c},
$

le sous-ensemble

$
{a,c}
$

correspond au bitmap

$
(1,0,1).
$

Il y a deux choix indépendants pour chaque coordonnée, d'où

$
2^n
$

bitmaps possibles.

Géométriquement, les mots binaires de longueur $n$ sont les sommets du cube
booléen de dimension $n$ :

- $n=1$ : deux sommets ;
- $n=2$ : les quatre sommets d'un carré ;
- $n=3$ : les huit sommets d'un cube.

Ainsi,

$
P(A)
$

peut être mis en bijection avec les sommets de

$
{0,1}^n.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *À vérifier avec la photographie.* Les notes mentionnent aussi une remarque du
  professeur reliant cette représentation à des « polynômes ». Le contenu exact
  de cette remarque n'est pas reconstructible avec certitude sans le tableau.
]

= Cardinalité d'un produit cartésien

Pour deux ensembles finis $A$ et $B$,

$
|A times B| = |A| |B|.
$

== Preuve par induction sur $|B|$

*Base.* Si

$
|B|=0,
$

alors

$
B=emptyset
$

et

$
A times B=emptyset.
$

Donc

$
|A times B|
=
0
=
|A| dot |B|.
$

*Hérédité.* Supposons la propriété vraie pour les ensembles de cardinalité $n$.
Soit $B$ tel que

$
|B|=n+1.
$

Choisissons $x in B$ et posons

$
B'=B\{x}.
$

Alors

$
|B'|=n
$

et

$
A times B
=
(A times B') union (A times {x}),
$

les deux ensembles de l'union étant disjoints.

Par conséquent,

$
|A times B|
=
|A times B'| + |A times {x}|.
$

Par hypothèse d'induction,

$
|A times B'|
=
|A| |B'|
$

et

$
|A times {x}|
=
|A|.
$

Ainsi,

$
|A times B|
=
|A| |B'| + |A|
=
|A| (|B'|+1)
=
|A| |B|.
$

= Fonctions et comparaison de cardinalités

Les notes introduisent ensuite les propriétés usuelles des fonctions :

- *injective* : deux éléments distincts du domaine ont des images distinctes ;
- *surjective* : tout élément du codomaine possède au moins un antécédent ;
- *bijective* : la fonction est à la fois injective et surjective.

Deux ensembles sont dits *équipotents* lorsqu'il existe une bijection entre eux.
Ils ont alors la même cardinalité.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Schéma manquant.* Le professeur a dessiné un petit graphe illustrant
  injection, surjection et bijection. La photographie correspondante doit encore
  être ajoutée.
]

== Exemples d'équipotence

Les notes donnent notamment les faits suivants :

- $ZZ$ est équipotent à $NN$ ;
- $NN$ est équipotent à l'ensemble des entiers naturels pairs ;
- $NN$ est équipotent à $NN^2$ ;
- $[0,1]$ est équipotent à $RR$ ;
- $P(NN)$ est équipotent à $RR$ ;
- $NN$ n'est pas équipotent à $P(NN)$ ;
- par conséquent, $NN$ n'est pas équipotent à $RR$.

Un ensemble équipotent à $NN$ est dit *dénombrable*.

== Exemple : $NN$ et les entiers pairs

L'application

$
f : NN -> NN,
quad
f(n)=2n
$

est une bijection de $NN$ sur l'ensemble des entiers naturels pairs.

Cela illustre qu'un ensemble infini peut être équipotent à une partie propre de
lui-même.

= Fonction de couplage — pairing function

Une *fonction de couplage* est une bijection permettant d'énumérer les couples
de $NN^2$ par un seul entier naturel.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Complément de clarification.* Le tableau exact du professeur manque. Le tableau
  suivant illustre le parcours diagonal standard utilisé pour montrer
  $NN^2$ équipotent à $NN$.
]

#table(
  columns: 4,
  inset: 6pt,
  stroke: 0.5pt,
  [], [$b=0$], [$b=1$], [$b=2$],
  [$a=0$], [$0$], [$2$], [$5$],
  [$a=1$], [$1$], [$4$], [$8$],
  [$a=2$], [$3$], [$7$], [$12$],
)

Ces valeurs sont données, par exemple, par la fonction de Cantor

$
pi(a,b)
=
((a+b)(a+b+1))/2+b.
$

Chaque diagonale

$
a+b=k
$

contient un nombre fini de couples, et les diagonales peuvent être parcourues
successivement. On obtient ainsi une énumération de tout $NN^2$.

= Diagonalisation de Cantor

Les notes utilisent ensuite la diagonalisation pour montrer qu'il n'existe pas
de bijection entre $NN$ et $P(NN)$.

Supposons par l'absurde qu'il existe une fonction surjective

$
f : NN -> P(NN).
$

Définissons l'ensemble diagonal

$
D
=
{n in NN | n in.not f(n)}.
$

Comme

$
D in P(NN)
$

et que $f$ est supposée surjective, il existe $k in NN$ tel que

$
f(k)=D.
$

On examine alors la question

$
k in D.
$

Par définition de $D$,

$
k in D
iff
k in.not f(k).
$

Or

$
f(k)=D.
$

Donc

$
k in D
iff
k in.not D,
$

ce qui est impossible.

Ainsi, aucune fonction

$
f : NN -> P(NN)
$

ne peut être surjective. En particulier,

$
NN
$

et

$
P(NN)
$

ne sont pas équipotents.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Idée de la table du professeur.* Si les ensembles $f(0),f(1),dots$ sont
  représentés ligne par ligne par des $0$ et des $1$, l'ensemble $D$ est obtenu
  en inversant les valeurs situées sur la diagonale. Il diffère donc de la ligne
  $n$ au moins à la position $n$, pour tout $n$.
]
