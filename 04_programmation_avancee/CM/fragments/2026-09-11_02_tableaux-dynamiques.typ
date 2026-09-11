#import "../style.typ": *

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
