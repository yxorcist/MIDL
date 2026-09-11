#import "../style.typ": *

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
