#set page(
  paper: "a4",
  margin: (x: 2.0cm, y: 1.8cm),
  numbering: "1",
)

#set text(size: 10.5pt)
#set par(justify: true, leading: 0.72em)
#set heading(numbering: "1.")
#set table(
  stroke: 0.45pt,
  inset: 5pt,
)

#let codeblock(body) = block(
  fill: luma(245),
  stroke: 0.5pt + luma(210),
  radius: 4pt,
  inset: 8pt,
  width: 100%,
)[#body]

#align(center)[
  #image("uca_logo.jpg", width: 64mm)

  #v(1.8cm)

  #text(size: 14pt, weight: "bold")[
    Application en ingénierie et programmation numérique
  ]

  #v(1.1cm)

  #text(size: 25pt, weight: "bold")[
    TP1 — Résolution de systèmes d'équations linéaires
  ]

  #v(1.5cm)

  #text(size: 13pt)[
    Youssef Ben Hassine
  ]

  #v(0.5cm)

  Université Clermont Auvergne

  #v(1.6cm)

  18 octobre 2026
]

#pagebreak()

= Introduction

Le but du TP est de résoudre des systèmes linéaires $A x = b$ avec trois méthodes différentes : Gauss, Jacobi et Gauss-Seidel.

Gauss est une méthode directe. Jacobi et Gauss-Seidel sont des méthodes itératives, donc on peut aussi comparer leur vitesse de convergence.

Pour tous les tests, on choisit $b$ de façon à connaître la solution exacte à l'avance :

$ x = (1, 1, dots, 1)^T. $

Concrètement, chaque composante de $b$ est simplement la somme d'une ligne de $A$ :

$ b_i = sum_j a_(i j). $

Cela permet ensuite de vérifier facilement si la méthode donne le bon résultat et de calculer l'erreur.

On teste les matrices $A_1$ à $A_6$ données dans l'énoncé. Pour $A_5$ et $A_6$, on utilise les tailles $n = 3, 6, 8, 10$.

= Rappel des méthodes

== Méthode de Gauss

L'idée de Gauss est assez simple : on transforme la matrice pour obtenir un système triangulaire supérieur.

À chaque étape, on choisit un pivot $a_(c c)$ et on annule les coefficients situés dessous. Le coefficient utilisé est

$ k = a_(i c) / a_(c c). $

puis on fait

$ L_i ← L_i - k L_c. $

Une fois la matrice triangulaire, il ne reste plus qu'à remonter depuis la dernière ligne avec une substitution arrière.

Dans notre version, il n'y a pas de choix de pivot. Si un pivot est nul ou très petit, la méthode peut donc poser problème.

== Méthode de Jacobi

Jacobi part d'un vecteur nul et améliore la solution à chaque itération.

Le point important est que toutes les nouvelles valeurs sont calculées avec l'ancienne solution :

$ x_i^(k+1) = (b_i - sum_(j != i) a_(i j) x_j^k) / a_(i i). $

C'est pour ça qu'on garde deux vecteurs dans le programme : $x$ pour l'ancienne itération et $x_2$ pour la nouvelle.

== Méthode de Gauss-Seidel

Gauss-Seidel ressemble beaucoup à Jacobi. La différence est qu'une nouvelle valeur est utilisée tout de suite pour calculer les suivantes.

On n'a donc pas besoin d'un deuxième vecteur. Cette mise à jour immédiate peut rendre la convergence plus rapide, mais les résultats montrent que ce n'est pas toujours le cas.

== Critère d'arrêt

Comme on connaît la solution exacte, l'erreur est facile à calculer :

$ p_k = max_i |1 - x_i^k|. $

On arrête dès que

$ p_k < epsilon $

avec $epsilon = 10^(-6)$.

Si la méthode ne converge pas assez vite, on arrête quand même après $1000$ itérations pour éviter une boucle sans fin.

= Présentation de l'implémentation

Le programme est séparé en plusieurs petits fichiers C. Le projet reste simple, mais cela évite de mettre toutes les méthodes dans le même fichier :

#table(
  columns: (1.5fr, 3fr),
  [*Fichier*], [*Rôle*],
  [`gauss.c`], [Implémentation de l'élimination de Gauss et de la substitution arrière.],
  [`jacobi.c`], [Implémentation de Jacobi, calcul de l'erreur et du nombre d'itérations.],
  [`gauss-seidel.c`], [Implémentation de Gauss-Seidel, calcul de l'erreur et du nombre d'itérations.],
  [`matrices.c`], [Construction dynamique des matrices $A_5$ et $A_6$.],
  [`utils.c`], [Copie/libération des matrices et affichage des vecteurs.],
  [`main.c`], [Construction des essais, appel des méthodes et affichage des résultats.],
)

== Construction du second membre

Dans les trois méthodes, on construit $b$ directement à partir de $A$. Pour chaque ligne, on additionne tous les coefficients :

#codeblock[
```c
for (i = 0; i < n; i++) {
  double sum = 0;

  for (j = 0; j < n; j++)
    sum += A[i][j];

  b[i] = sum;
}
```
]

Avec ce choix,

$ b = A (1, dots, 1)^T, $

donc on sait dès le départ que la solution exacte doit être $(1, dots, 1)^T$.

== Cœur de l'élimination de Gauss

#codeblock[
```c
for (c = 0; c < n - 1; c++) {
  for (i = c + 1; i < n; i++) {
    k = A[i][c] / A[c][c];

    for (j = c; j < n; j++)
      A[i][j] -= k * A[c][j];

    b[i] -= k * b[c];
  }
}
```
]

La fonction `gauss` modifie directement la matrice pendant l'élimination. On fait donc une copie avant de l'appeler, sinon la matrice ne pourrait plus être réutilisée ensuite pour Jacobi ou Gauss-Seidel.

== Différence entre Jacobi et Gauss-Seidel

Dans Jacobi, les nouvelles valeurs sont d'abord stockées dans un second vecteur :

#codeblock[
```c
x2[i] = (b[i] - sum) / A[i][i];
```
]

puis le vecteur est recopié à la fin de l'itération.

Dans Gauss-Seidel, la nouvelle valeur remplace immédiatement l'ancienne :

#codeblock[
```c
x[i] = (b[i] - sum) / A[i][i];
```
]

C'est vraiment la différence principale entre les deux méthodes dans le code : Jacobi attend la fin de l'itération, alors que Gauss-Seidel réutilise les nouvelles valeurs immédiatement.

= Résultats

== Méthode de Gauss

Pour toutes les matrices testées, Gauss retrouve bien la solution attendue. Pour $A_1$ à $A_4$, on obtient :

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    align: center,
    [*Matrice*], [*$x_1$*], [*$x_2$*], [*$x_3$*],
    [$A_1$], [1.000000], [1.000000], [1.000000],
    [$A_2$], [1.000000], [1.000000], [1.000000],
    [$A_3$], [1.000000], [1.000000], [1.000000],
    [$A_4$], [1.000000], [1.000000], [1.000000],
  ),
  caption: [Résultats de la méthode de Gauss pour $A_1$ à $A_4$.],
)

Même résultat pour $A_5$ et $A_6$ : pour toutes les tailles testées, les composantes calculées valent $1.000000$ à la précision affichée.

== Jacobi et Gauss-Seidel sur $A_1$ à $A_4$

#figure(
  table(
    columns: (0.8fr, 1.25fr, 1.4fr, 1.25fr, 1.4fr),
    align: center,
    [*Matrice*],
    [*It. Jacobi*],
    [*Erreur Jacobi*],
    [*It. GS*],
    [*Erreur GS*],

    [$A_1$], [1000], [$9.66 times 10^50$], [1000], [$4.33 times 10^199$],
    [$A_2$], [1000], [$1.85 times 10^151$], [1000], [$1.00 times 10^301$],
    [$A_3$], [19], [$3.30 times 10^(-7)$], [8], [$3.08 times 10^(-7)$],
    [$A_4$], [35], [$6.85 times 10^(-7)$], [58], [$5.47 times 10^(-7)$],
  ),
  caption: [Comparaison de Jacobi et Gauss-Seidel pour $A_1$ à $A_4$.],
)

Pour $A_1$ et $A_2$, il n'y a pas convergence. On atteint les $1000$ itérations et l'erreur continue d'augmenter.

Pour $A_3$, les deux méthodes convergent, mais Gauss-Seidel va beaucoup plus vite : $8$ itérations contre $19$ pour Jacobi.

$A_4$ est intéressant parce que le résultat est inversé : Jacobi termine en $35$ itérations alors que Gauss-Seidel en demande $58$. On ne peut donc pas dire simplement que Gauss-Seidel est toujours plus rapide.

== Résultats pour $A_5$

#figure(
  table(
    columns: (0.8fr, 1.3fr, 1.4fr, 1.3fr, 1.4fr),
    align: center,
    [*$n$*],
    [*It. Jacobi*],
    [*Erreur Jacobi*],
    [*It. GS*],
    [*Erreur GS*],

    [3], [25], [$6.51 times 10^(-7)$], [13], [$6.51 times 10^(-7)$],
    [6], [26], [$9.01 times 10^(-7)$], [14], [$6.00 times 10^(-7)$],
    [8], [26], [$9.33 times 10^(-7)$], [14], [$6.22 times 10^(-7)$],
    [10], [26], [$9.39 times 10^(-7)$], [14], [$6.26 times 10^(-7)$],
  ),
  caption: [Résultats des méthodes itératives pour $A_5$.],
)

Pour $A_5$, les deux méthodes convergent pour toutes les tailles. Ce qui ressort surtout, c'est que le nombre d'itérations change presque pas quand $n$ augmente. Gauss-Seidel reste autour de deux fois plus rapide que Jacobi sur ces tests.

== Résultats pour $A_6$

#figure(
  table(
    columns: (0.8fr, 1.3fr, 1.4fr, 1.3fr, 1.4fr),
    align: center,
    [*$n$*],
    [*It. Jacobi*],
    [*Erreur Jacobi*],
    [*It. GS*],
    [*Erreur GS*],

    [3], [36], [$6.87 times 10^(-7)$], [18], [$5.72 times 10^(-7)$],
    [6], [89], [$8.68 times 10^(-7)$], [43], [$9.68 times 10^(-7)$],
    [8], [122], [$9.66 times 10^(-7)$], [59], [$8.66 times 10^(-7)$],
    [10], [150], [$9.79 times 10^(-7)$], [72], [$9.05 times 10^(-7)$],
  ),
  caption: [Résultats des méthodes itératives pour $A_6$.],
)

Pour $A_6$, les deux méthodes convergent aussi, mais cette fois le nombre d'itérations augmente clairement avec $n$. Gauss-Seidel reste plus rapide pour toutes les tailles testées.

= Graphiques et interprétation

== Évolution de l'erreur pour $A_3$

#figure(
  image("a3_convergence.svg", width: 90%),
  caption: [Évolution de l'erreur $p_k$ en fonction de l'itération pour $A_3$.],
)

L'échelle de l'erreur est logarithmique pour mieux voir la convergence. Sur $A_3$, les deux courbes descendent vers $10^(-6)$, mais celle de Gauss-Seidel baisse beaucoup plus vite. On retrouve donc directement le résultat du tableau : $8$ itérations pour Gauss-Seidel contre $19$ pour Jacobi.

== Influence de la taille pour $A_6$

#figure(
  image("a6_iterations.svg", width: 90%),
  caption: [Nombre d'itérations en fonction de la taille $n$ pour $A_6$.],
)

Sur $A_6$, plus la taille augmente, plus les deux méthodes demandent d'itérations. L'écart reste assez régulier : Gauss-Seidel demande environ deux fois moins d'itérations que Jacobi.

= Conclusion

Les tests montrent assez clairement la différence entre les trois méthodes.

Gauss donne directement la solution attendue sur tous les cas testés. Par contre, notre version ne fait pas de pivotage, donc un pivot nul ou très petit pourrait poser problème.

Pour Jacobi et Gauss-Seidel, tout dépend de la matrice. Sur $A_1$ et $A_2$, les deux méthodes divergent. Sur $A_3$, $A_4$, $A_5$ et $A_6$, elles convergent correctement avec la précision demandée.

Dans la plupart de nos tests, Gauss-Seidel est plus rapide. C'est le cas pour $A_3$, $A_5$ et $A_6$. Mais $A_4$ montre qu'il ne faut pas généraliser : Jacobi y demande moins d'itérations.

Les matrices $A_5$ et $A_6$ montrent aussi que la taille seule ne suffit pas à prévoir le nombre d'itérations. Pour $A_5$, il reste presque constant quand $n$ augmente. Pour $A_6$, il augmente beaucoup.

Au final, il n'y a pas une méthode qui est meilleure dans tous les cas. Gauss est direct, alors que Jacobi et Gauss-Seidel dépendent de la convergence de la matrice. Le comportement observé dépend donc surtout du système qu'on cherche à résoudre.
