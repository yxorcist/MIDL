#import "../style.typ": *

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

