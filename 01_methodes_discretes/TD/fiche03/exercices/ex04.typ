// source-confidence: high
// source-note: TD03_ensembles-fonctions.pdf (L. Nourine) et photographies manuscrites 11492 et 11493.
// source-reconstruction: les justifications manquantes sont explicitées et les erreurs mathématiques des notes sont corrigées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 4

== 1. Fonction et application

Selon la distinction adoptée dans le TD, une *fonction* (correspondance partielle) de $E$ vers $F$ associe à chaque élément de son domaine de définition *au plus une* image dans $F$. Une *application* est une fonction définie sur *tout* $E$ : chaque élément de $E$ a exactement une image.

Une correspondance multivaluée n'est donc même pas une fonction.

== 2. Hachage modulo 7

Pour $n>=1$, la formule

$ "Hash"(x)=x mod 7, quad x in \{1,dots,n\} $

associe à chaque entier de départ un unique reste dans $\{0,1,2,3,4,5,6\}$. *C'est une application*, donc aussi une fonction. La formule $"Hash"(n)=n mod 7$ du sujet emploie $n$ comme variable : ici on l'a renommée $x$ pour lever l'ambiguïté.

== 3. Correspondances de $\{0,1\}$ vers $\{0,1\}$

Une fonction partielle choisit, pour chacun des deux éléments du départ, soit aucune image, soit l'image $0$, soit l'image $1$. Il en existe donc $3^2=9$.

Elles comprennent :

- *Une fonction de domaine vide* : aucun couple.
- *Quatre fonctions de domaine singleton* : $\{(0,0)\}$, $\{(0,1)\}$, $\{(1,0)\}$ et $\{(1,1)\}$.
- *Quatre applications*, avec domaine total $\{0,1\}$ :
  $\{(0,0),(1,0)\}$, $\{(0,0),(1,1)\}$, $\{(0,1),(1,0)\}$ et $\{(0,1),(1,1)\}$.

Les deux applications bijectives sont l'identité et l'échange $0 ↔ 1$. Les deux applications constantes ne sont pas injectives.

*Critère graphique :* un élément du départ ne doit jamais avoir deux flèches sortantes ; pour une application, il doit en avoir exactement une.
