#import "../style.typ": *

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
