#set page(
  paper: "a4",
  margin: 2cm,
)

#set text(
  lang: "fr",
  size: 11pt,
)

#set heading(numbering: "1.")

#let definition(body) = block(
  width: 100%,
  inset: 10pt,
  stroke: 0.6pt,
  radius: 4pt,
  body,
)

#let theorem(body) = block(
  width: 100%,
  inset: 10pt,
  stroke: 0.6pt,
  radius: 4pt,
  body,
)

== Panorama du cours

Le cours porte notamment sur :

- la logique propositionnelle ;
- les preuves mathématiques ;
- les constructions inductives et les ensembles infinis ;
- les ensembles ;
- les relations, notamment les relations d'équivalence et d'ordre ;
- les fonctions ;
- les ensembles dénombrables.

== Ensembles et constructions inductives

Un ensemble peut être décrit de deux manières principales :

- *implicitement*, par une propriété ;
- *explicitement*, en énumérant ses éléments.

Par exemple :

$ A = {x in ZZ | x " est pair"} $

ou :

$ A = {2, 4, 8} $

#definition[
  *Définition — Construction inductive.*

  Une définition inductive comporte généralement :

  - une *base* ;
  - une *règle de construction* permettant d'obtenir de nouveaux éléments
    à partir d'éléments déjà construits.
]

Exemple : pour construire les entiers naturels, on peut partir de $0$ puis
imposer la règle :

$ n in NN => n + 1 in NN $

== Logique propositionnelle

#definition[
  *Définition — Proposition.*

  Une proposition est un énoncé auquel on peut attribuer une valeur de vérité :
  *vrai* ou *faux*.
]

=== Connecteurs logiques

Pour deux propositions $P$ et $Q$ :

- négation : $not P$ ;
- conjonction : $P and Q$ ;
- disjonction : $P or Q$ ;
- implication : $P => Q$ ;
- équivalence : $P <=> Q$.

L'implication $P => Q$ est fausse uniquement lorsque $P$ est vraie et $Q$ est
fausse.

=== Table de vérité

#table(
  columns: 6,
  align: center,
  inset: 6pt,

  [*$P$*],
  [*$Q$*],
  [*$not P$*],
  [*$P and Q$*],
  [*$P or Q$*],
  [*$P => Q$*],

  [F], [F], [V], [F], [F], [V],
  [F], [V], [V], [F], [V], [V],
  [V], [F], [F], [F], [V], [F],
  [V], [V], [F], [V], [V], [V],
)

=== Tautologie, contradiction et équivalence logique

#definition[
  *Tautologie.*

  Une formule est une tautologie si elle est vraie pour toute attribution
  possible des valeurs de vérité.
]

#definition[
  *Contradiction.*

  Une formule est une contradiction si elle est fausse pour toute attribution
  possible des valeurs de vérité.
]

Deux formules $F$ et $G$ sont *logiquement équivalentes* lorsque

$ F <=> G $

est une tautologie.

== Implication et raisonnement

#theorem[
  *Théorème — Modus ponens.*

  Si $P$ est vraie et $P => Q$ est vraie, alors $Q$ est vraie.
]

À partir de l'implication

$ P => Q $

on distingue :

- sa *réciproque* : $Q => P$ ;
- sa *contraposée* : $not Q => not P$.

Une implication est logiquement équivalente à sa contraposée :

$ (P => Q) <=> (not Q => not P) $

En revanche, elle n'est pas en général équivalente à sa réciproque.

== Prédicats et quantificateurs

#definition[
  *Définition — Prédicat.*

  Un prédicat $P(x)$ est une propriété dépendant d'une variable $x$.

  Une fois une valeur de $x$ fixée, $P(x)$ devient une proposition vraie
  ou fausse.
]

=== Quantificateur universel

Le symbole $forall$ signifie « pour tout ».

$ forall x in D, P(x) $

Cela signifie que $P(x)$ est vraie pour tout $x$ appartenant à $D$.

=== Quantificateur existentiel

Le symbole $exists$ signifie « il existe ».

$ exists x in D, P(x) $

Cela signifie qu'il existe au moins un $x$ appartenant à $D$ tel que $P(x)$
est vraie.

=== Négation des quantificateurs

$
not (forall x in D, P(x))
<=> exists x in D, not P(x)
$

et

$
not (exists x in D, P(x))
<=> forall x in D, not P(x)
$

Donc, pour nier une proposition quantifiée :

- on échange $forall$ et $exists$ ;
- on nie le prédicat.

== Vocabulaire des résultats mathématiques

- *Théorème* : résultat mathématique important démontré.
- *Lemme* : résultat intermédiaire utilisé pour démontrer un autre résultat.
- *Corollaire* : conséquence relativement directe d'un théorème.
- *Conjecture* : proposition supposée vraie mais non encore démontrée.

== Exemple : chip-firing étiqueté

On considère le graphe linéaire infini dont les sommets sont les entiers :

$ dots, -3, -2, -1, 0, 1, 2, 3, dots $

Deux sommets consécutifs $i$ et $i+1$ sont reliés par une arête.

On prend un nombre pair de jetons, soit $2m$ jetons distincts, et on place
initialement tous les jetons sur le même sommet, conventionnellement le sommet
$0$.

Chaque jeton possède une *étiquette*. Les étiquettes servent uniquement à
ordonner les jetons.

=== Règle de firing

Supposons qu'au moins deux jetons se trouvent sur le même sommet $i$.

On choisit *n'importe quelle paire* de jetons présente sur ce sommet.

Si leurs étiquettes sont $a$ et $b$, on les nomme de façon à avoir :

$ a < b $

Puis on effectue le firing :

- le jeton de plus petite étiquette $a$ se déplace d'un sommet vers la gauche,
  donc de $i$ vers $i - 1$ ;
- le jeton de plus grande étiquette $b$ se déplace d'un sommet vers la droite,
  donc de $i$ vers $i + 1$.

Ainsi :

$
(a, b) " sur le sommet " i
arrow.r
a " sur " i - 1
quad "et"
quad
b " sur " i + 1
$

Les lettres $a$ et $b$ ne désignent pas des jetons particuliers.

À chaque firing :

- $a$ désigne simplement le plus petit des deux jetons choisis ;
- $b$ désigne le plus grand des deux.

Le choix de la paire à faire tirer est arbitraire : si plusieurs paires sont
possibles, on peut en choisir n'importe laquelle.

On continue jusqu'à ce qu'aucun sommet ne contienne deux jetons ou plus.

Cette configuration est appelée *configuration stable*.

=== Exemple 1 : jetons 1, 2, 3, 4

On prend quatre jetons :

$ 1, 2, 3, 4 $

et on les place tous sur le sommet $0$ :

$
0 : {1, 2, 3, 4}
$

Choisissons d'abord les jetons $1$ et $4$.

Comme $1 < 4$ :

- $1$ va vers $-1$ ;
- $4$ va vers $1$.

On obtient :

$
-1 : {1}
quad
0 : {2, 3}
quad
1 : {4}
$

Les jetons $2$ et $3$ sont encore ensemble sur le sommet $0$.

On les fait tirer :

$
2 < 3
$

donc :

- $2$ va vers $-1$ ;
- $3$ va vers $1$.

On obtient :

$
-1 : {1, 2}
quad
1 : {3, 4}
$

Il y a maintenant deux jetons sur $-1$ et deux jetons sur $1$.

Sur le sommet $-1$, on fait tirer $1$ et $2$ :

- $1$ va vers $-2$ ;
- $2$ va vers $0$.

On obtient :

$
-2 : {1}
quad
0 : {2}
quad
1 : {3, 4}
$

Puis on fait tirer $3$ et $4$ depuis le sommet $1$ :

- $3$ va vers $0$ ;
- $4$ va vers $2$.

On obtient :

$
-2 : {1}
quad
0 : {2, 3}
quad
2 : {4}
$

Les jetons $2$ et $3$ sont maintenant ensemble sur $0$.

On les fait tirer une dernière fois :

- $2$ va vers $-1$ ;
- $3$ va vers $1$.

La configuration finale est :

$
-2 : {1}
quad
-1 : {2}
quad
1 : {3}
quad
2 : {4}
$

Aucun sommet ne contient maintenant deux jetons.

La configuration est donc stable.

Les jetons sont également triés de gauche à droite :

$
1 < 2 < 3 < 4
$

=== Exemple 2 : étiquettes 4, 9, 17, 23

Les étiquettes n'ont pas besoin d'être des entiers consécutifs.

Prenons :

$ 4, 9, 17, 23 $

tous initialement sur le sommet $0$ :

$
0 : {4, 9, 17, 23}
$

Choisissons arbitrairement la paire $9, 23$.

Comme $9 < 23$ :

- $9$ va vers $-1$ ;
- $23$ va vers $1$.

On obtient :

$
-1 : {9}
quad
0 : {4, 17}
quad
1 : {23}
$

On fait ensuite tirer $4$ et $17$ depuis $0$ :

$
-1 : {4, 9}
quad
1 : {17, 23}
$

Sur $-1$, on fait tirer $4$ et $9$ :

$
-2 : {4}
quad
0 : {9}
quad
1 : {17, 23}
$

Sur $1$, on fait tirer $17$ et $23$ :

$
-2 : {4}
quad
0 : {9, 17}
quad
2 : {23}
$

Enfin, on fait tirer $9$ et $17$ depuis $0$ :

$
-2 : {4}
quad
-1 : {9}
quad
1 : {17}
quad
2 : {23}
$

La configuration est stable et les étiquettes sont triées de gauche à droite :

$
4 < 9 < 17 < 23
$

=== Résultat général

Si on part de $2m$ jetons distinctement étiquetés, tous placés initialement
sur le sommet $0$, et qu'on applique la règle de firing jusqu'à stabilisation,
les positions finales sont :

$
-m, -m + 1, dots, -1, 1, dots, m - 1, m
$

Il y a exactement un jeton sur chacune de ces positions.

De plus, dans le chip-firing étiqueté étudié ici, les jetons finissent ordonnés
par étiquette de gauche à droite.

Le point remarquable est que le choix des paires pendant le processus peut être
arbitraire : différentes suites de firings peuvent être effectuées, mais la
configuration stable finale est la même.

== Points à retenir

- Une proposition possède une valeur de vérité.
- Les connecteurs logiques permettent de construire de nouvelles propositions.
- $P => Q$ est équivalente à sa contraposée.
- $P => Q$ n'est pas nécessairement équivalente à sa réciproque.
- Les prédicats deviennent des propositions lorsque leurs variables sont fixées.
- La négation échange les quantificateurs $forall$ et $exists$.
- Une définition inductive repose sur une base et une règle de construction.


= Méthodes discrètes logiques
Séance du 09/09/2026 — Preuves et méthodes de démonstration

== Rappels sur les ensembles de nombres

- $NN$ : ensemble des entiers naturels. Il est fermé pour l'addition et la multiplication.
- $ZZ$ : ensemble des entiers relatifs. Il est fermé pour l'addition, la multiplication et la soustraction.
- $QQ$ : ensemble des nombres rationnels. Un rationnel s'écrit sous la forme $a / b$ avec $a in ZZ$, $b in ZZ$ et $b != 0$.
- $RR$ : ensemble des nombres réels.

== Notion de preuve

Une *preuve* ou *démonstration* est une suite de propositions valides qui permet de passer d'hypothèses à une conclusion.

On peut la représenter schématiquement par :

$
P_1, P_2, dots, P_m
$

où :

- $P_1$ correspond à une hypothèse ou à un axiome ;
- chaque proposition suivante est obtenue à partir des propositions précédentes, de définitions ou de théorèmes déjà démontrés ;
- $P_m$ est la conclusion à établir.

== Premier exemple de preuve

=== Théorème

Si $n$ et $m$ sont deux entiers pairs, alors $n + m$ est pair.

=== Preuve

Supposons que $n$ et $m$ soient pairs.

Par définition d'un entier pair, il existe $k in ZZ$ et $k' in ZZ$ tels que

$
n = 2k
quad "et"
quad
m = 2k'.
$

Alors

$
n + m
= 2k + 2k'
= 2(k + k').
$

Posons

$
k'' = k + k'.
$

Comme $k, k' in ZZ$, on a $k'' in ZZ$. Donc

$
n + m = 2k'',
$

et ainsi $n + m$ est pair.

== Formes courantes de propositions

Une proposition universelle conditionnelle s'écrit typiquement :

$
forall x in D, P(x) => Q(x).
$

Ici :

- $D$ est le domaine ;
- $P(x)$ et $Q(x)$ sont des prédicats.

Exemple :

$
forall n in ZZ, forall m in ZZ,
(P(n) and P(m)) => P(n + m),
$

où $P(t)$ signifie « $t$ est pair ».

On rencontre aussi :

$
forall x in D, P(x)
$

et

$
exists x in D, P(x).
$

== Propositions existentielles

Pour démontrer une proposition de la forme

$
exists x in D, P(x),
$

il suffit de fournir un élément précis du domaine $D$ pour lequel $P(x)$ est vraie.

=== Exemple 1

Il existe des entiers naturels $a$, $b$ et $x$ tels que

$
x^2 = a^2 + b^2.
$

En effet,

$
3^2 + 4^2
= 9 + 16
= 25
= 5^2.
$

On peut donc prendre

$
a = 3,
quad
b = 4,
quad
x = 5.
$

=== Exemple 2

Montrons qu'il existe $x in NN$ tel que

$
x^2 = 15129.
$

Il suffit de constater que

$
123^2 = 15129.
$

Donc $x = 123$ convient.

=== Exemple 3 — Deux irrationnels dont une puissance est rationnelle

On veut montrer qu'il existe deux nombres irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

Considérons

$
alpha = sqrt(2)^sqrt(2).
$

On distingue deux cas.

*Cas 1 :* $alpha$ est rationnel.

Alors on choisit

$
x = sqrt(2)
quad "et"
quad
y = sqrt(2).
$

Les deux nombres sont irrationnels et

$
x^y = sqrt(2)^sqrt(2) = alpha,
$

qui est rationnel dans ce cas.

*Cas 2 :* $alpha$ est irrationnel.

On choisit alors

$
x = sqrt(2)^sqrt(2)
quad "et"
quad
y = sqrt(2).
$

Les deux nombres sont irrationnels et

$
x^y
= (sqrt(2)^sqrt(2))^sqrt(2)
= sqrt(2)^2
= 2,
$

qui est rationnel.

Dans tous les cas, il existe donc deux irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

== Preuve directe

Pour démontrer

$
forall x in D, P(x) => Q(x),
$

par preuve directe :

1. on prend un élément quelconque $x in D$ ;
2. on suppose $P(x)$ vraie ;
3. on déduit $Q(x)$.

=== Exemple 1 — Vérification sur un domaine fini

Montrons que pour tout entier naturel $n$ tel que

$
1 <= n <= 10,
$

le nombre

$
n^2 - n + 11
$

est premier.

Le domaine étant fini, on vérifie les dix valeurs :

#table(
  columns: 2,
  align: center,
  inset: 5pt,
  [*$n$*], [*$n^2 - n + 11$*],
  [$1$], [$11$],
  [$2$], [$13$],
  [$3$], [$17$],
  [$4$], [$23$],
  [$5$], [$31$],
  [$6$], [$41$],
  [$7$], [$53$],
  [$8$], [$67$],
  [$9$], [$83$],
  [$10$], [$101$],
)

Toutes ces valeurs sont premières.

=== Exemple 2 — Tout entier est rationnel

Montrons que tout entier relatif est rationnel.

Soit $z in ZZ$. On peut écrire

$
z = z / 1.
$

Comme $z in ZZ$ et $1 in ZZ$ avec $1 != 0$, on a donc $z in QQ$.

=== Exemple 3 — Somme de deux rationnels

Montrons que si $a$ et $b$ sont rationnels, alors $a + b$ est rationnel.

Comme $a, b in QQ$, il existe

$
a_1, b_1 in ZZ
$

et

$
a_2, b_2 in ZZ
$

avec $a_2 != 0$ et $b_2 != 0$, tels que

$
a = a_1 / a_2
quad "et"
quad
b = b_1 / b_2.
$

Alors

$
a + b
= a_1 / a_2 + b_1 / b_2
= (a_1 b_2 + b_1 a_2) / (a_2 b_2).
$

Le numérateur $a_1 b_2 + b_1 a_2$ est un entier et le dénominateur $a_2 b_2$ est un entier non nul.

Donc

$
a + b in QQ.
$

== Contre-exemple

Pour montrer qu'une proposition universelle

$
forall x in D, P(x) => Q(x)
$

est fausse, il suffit de trouver un seul élément $x in D$ tel que

$
P(x)
$

soit vraie et

$
Q(x)
$

soit fausse.

Un tel élément est appelé un *contre-exemple*.

== Preuve par cas

Pour démontrer une proposition sur un domaine $D$, on peut découper $D$ en plusieurs cas

$
D_1, D_2, dots, D_r
$

qui couvrent tout le domaine, puis démontrer le résultat séparément dans chaque cas.

Autrement dit, si tout élément de $D$ appartient à au moins un des cas et si

$
forall x in D_i, P(x) => Q(x)
$

est vraie pour chaque cas $D_i$, alors le résultat est vrai sur tout $D$.

=== Exemple — $m^3 + m$ est toujours pair

Montrons que

$
forall m in NN, m^3 + m " est pair".
$

Soit $m in NN$. On distingue deux cas.

*Cas 1 : $m$ est pair.*

Il existe $k in ZZ$ tel que

$
m = 2k.
$

Alors

$
m^3 + m
= (2k)^3 + 2k
= 8k^3 + 2k
= 2(4k^3 + k).
$

Donc $m^3 + m$ est pair.

*Cas 2 : $m$ est impair.*

Il existe $k in ZZ$ tel que

$
m = 2k + 1.
$

Alors

$
m^3 + m
= (2k + 1)^3 + (2k + 1)
$

$
= 8k^3 + 12k^2 + 6k + 1 + 2k + 1
$

$
= 8k^3 + 12k^2 + 8k + 2
$

$
= 2(4k^3 + 6k^2 + 4k + 1).
$

Donc $m^3 + m$ est également pair.

Les deux cas couvrent tous les entiers naturels. Ainsi,

$
forall m in NN, m^3 + m " est pair".
$

== Preuve indirecte par l'absurde

Pour démontrer

$
P => Q,
$

par l'absurde, on suppose simultanément

$
P
quad "et"
quad
not Q,
$

puis on montre que ces deux hypothèses conduisent à une contradiction.

Ainsi, la situation

$
P and not Q
$

est impossible, ce qui prouve $P => Q$.

=== Exemple — Si $n^2$ est pair, alors $n$ est pair

Supposons, pour obtenir une contradiction, que

$
n^2 " est pair"
$

mais que

$
n " est impair".
$

Comme $n$ est impair, il existe $k in ZZ$ tel que

$
n = 2k + 1.
$

Alors

$
n^2
= (2k + 1)^2
= 4k^2 + 4k + 1
= 2(2k^2 + 2k) + 1.
$

Donc $n^2$ est impair.

Cela contredit l'hypothèse selon laquelle $n^2$ est pair.

Par conséquent,

$
n^2 " pair" => n " pair".
$

== Théorème — Irrationalité de $sqrt(2)$

Le nombre $sqrt(2)$ est irrationnel.

=== Preuve par l'absurde

Supposons au contraire que

$
sqrt(2) in QQ.
$

On peut alors écrire

$
sqrt(2) = a / b,
$

avec $a in ZZ$, $b in ZZ$, $b != 0$, et en choisissant la fraction $a/b$ sous forme irréductible.

En élevant au carré :

$
2 = a^2 / b^2,
$

donc

$
a^2 = 2b^2.
$

Ainsi, $a^2$ est pair.

D'après le résultat précédent, si le carré d'un entier est pair, alors l'entier lui-même est pair. Donc $a$ est pair.

Il existe alors $k in ZZ$ tel que

$
a = 2k.
$

En remplaçant dans $a^2 = 2b^2$ :

$
(2k)^2 = 2b^2,
$

donc

$
4k^2 = 2b^2
$

et donc

$
b^2 = 2k^2.
$

Ainsi, $b^2$ est pair, donc $b$ est également pair.

Par conséquent, $a$ et $b$ sont tous les deux divisibles par $2$.

Cela contredit le fait que la fraction $a/b$ a été choisie irréductible.

Donc l'hypothèse

$
sqrt(2) in QQ
$

est fausse, et ainsi

$
sqrt(2) " est irrationnel".
$

== Synthèse des méthodes de preuve

Pour démontrer une implication

$
P => Q,
$

on peut notamment utiliser les méthodes suivantes.

=== Preuve directe

On suppose $P$, puis on démontre $Q$ :

$
P => Q.
$

=== Preuve par contraposée

On utilise l'équivalence logique

$
P => Q
quad <=> quad
not Q => not P.
$

On suppose donc $not Q$ et on démontre $not P$.

=== Preuve par l'absurde

On suppose

$
P and not Q
$

et on montre que cette hypothèse est impossible.

=== Preuve par cas

On découpe le domaine en plusieurs cas couvrant toutes les possibilités, puis on démontre le résultat dans chacun des cas.
