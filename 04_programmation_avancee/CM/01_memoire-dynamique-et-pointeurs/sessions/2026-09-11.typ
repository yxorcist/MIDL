#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 11/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Allocation dynamique de mémoire]
]
#line(length: 100%)
#v(0.7em)

#include "../fragments/2026-09-11_01_pile-tas-malloc.typ"
#include "../fragments/2026-09-11_02_tableaux-dynamiques.typ"
#include "../fragments/2026-09-11_03_alias-pointeurs.typ"

== Allocation dynamique de mémoire

=== Pile et tas

Les notes distinguent deux zones de mémoire :

- *Pile (stack)* : mémoire limitée ; la durée de vie des données qui y sont placées est liée à l'exécution de la fonction.
- *Tas (heap)* : zone de mémoire située dans la RAM ; sa gestion revient au programmeur.

La pile est notamment associée aux variables simples.

Pour la mémoire dynamique, les fonctions citées sont `malloc`, `realloc` et `calloc`. La libération de la mémoire se fait ensuite avec `free`.

=== Type `size_t`

`size_t` est noté comme un type entier non signé de grande taille (`long unsigned int`). Il sert notamment à exprimer une taille en octets.

=== `malloc`

`malloc` est déclaré dans `stdlib.h` et reçoit un nombre d'octets à allouer :

```c
malloc(size_t nombre_octets)
```

La zone obtenue est contiguë en mémoire et l'adresse renvoyée correspond au début de cette zone.

- si `malloc` échoue, elle renvoie `NULL` ;
- sinon, elle renvoie une adresse de type `void *`.

Exemple de réservation pour 100 entiers :

```c
int *p = NULL;
p = (int *) malloc(sizeof(int) * 100);
```

#remark[
  Dans les notes, le cast `(int *)` est indiqué comme fortement recommandé.
]

== Tableaux dynamiques et vérification des allocations

Après une allocation, il faut vérifier que le pointeur n'est pas nul :

```c
if (!p) {
    return -1;
}

/* forme équivalente */
if (p == NULL) {
    return -1;
}
```

Les notes donnent ensuite l'exemple suivant :

```c
for (int i = 0; i < 2000; i++) {
    p[i] = 2 * i;
}
```

alors que l'exemple précédent avait réservé de la place pour 100 entiers.

#warning[
  L'annotation manuscrite signale ici un mauvais fonctionnement lié au manque d'espace disponible dans la zone allouée.
]

=== Tableau dynamique à deux dimensions

Pour construire un tableau de `short int` à deux dimensions, les notes utilisent un pointeur de pointeurs :

```c
short int **T = NULL;

T = (short int **) malloc(100 * sizeof(short int *));

for (int i = 0; i < 100; i++) {
    T[i] = (short int *) malloc(100 * sizeof(short int));
}
```

On obtient ainsi un tableau de 100 lignes, chaque ligne étant elle-même une zone allouée dynamiquement.

Une écriture en arithmétique de pointeurs apparaît également dans les notes :

```c
(*(T + i))[j]
```

Le décalage effectué par l'arithmétique des pointeurs dépend du type pointé.

=== Libération

Il faut libérer le contenu du tableau avant de libérer le tableau de pointeurs lui-même :

```c
for (int i = 0; i < 100; i++) {
    free(T[i]);
}

free(T);
```

#warning[
  Les notes soulignent qu'un déréférencement d'un pointeur nul peut provoquer un *segmentation fault*.
]

== Alias de pointeurs

La dernière page commence un exemple d'affectation entre pointeurs :

```c
int *a = malloc(/* taille */);
*a = 25;

int *b = a;
```

Après l'affectation `b = a`, les deux pointeurs contiennent la même adresse : ils désignent donc la même zone mémoire allouée.

#remark[
  L'argument exact de `malloc` et la dernière ligne de l'exemple sont incomplets ou illisibles sur la page manuscrite ; ils ne sont pas reconstruits ici.
]
