// source-confidence: high
// source-note: énoncé TD03_ensembles-fonctions.pdf + corrections photographiées 11493 et 11494.
// source-reconstruction: étapes manquantes complétées ; distinction entre contenu des photos et preuves ajoutées signalée dans le texte.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 6

== Classifier six correspondances

On prend $NN=\{0,1,2,dots\}$ et $NN^*=\{1,2,3,dots\}$. Un entier *impair* est de la forme $2k+1$.

Une correspondance est une *fonction* si chaque entrée possède au plus une image ; elle est une *application* si chacune possède exactement une image.

== 1. $NN -> NN$, $x=2 y z$, avec $z in NN$

Pour $x=0$, les choix $z=0$ et $y$ arbitraire vérifient $0=2 y z$ : l'entrée $0$ admet plusieurs images distinctes $y$.

*Ce n'est pas une fonction* (correspondance multivaluée).

== 2. $NN -> NN$, $x=2 y z$, avec $z$ impair

*Ce n'est pas une fonction.* En effet, $x=6$ possède deux images distinctes : $6=2 dot 3 dot 1=2 dot 1 dot 3$, où $1$ et $3$ sont impairs. On peut donc avoir $y=3$ ou $y=1$ pour la même entrée $x=6$.

Le fait que certains entiers impairs ne possèdent aucune image n'est pas le problème principal : la non-unicité pour $x=6$ suffit à exclure une fonction.

== 3. $NN^* -> NN$, $x=2^y z$, avec $z$ impair

Tout entier strictement positif s'écrit de manière *unique* $x=2^y z$, où $y in NN$ et $z$ impair. Donc la règle donne exactement un $y$ pour chaque $x$ : *c'est une application*.

Elle est *surjective* : $x=2^y$ a pour image $y$, pour tout $y in NN$.

Elle n'est *pas injective* : $1$ et $3$ sont tous deux envoyés sur $0$.

== 4. $NN^* -> NN times (2NN+1)$, $x -> (y,z)$ avec $x=2^y z$

Par l'unicité de la décomposition, tout $x$ possède une image unique $(y,z)$. Réciproquement, chaque couple $(y,z)$ avec $y in NN$ et $z$ impair positif correspond à l'entier $x=2^y z$.

*C'est une application bijective*, d'inverse $(y,z) -> 2^y z$.

== 5. $NN^* -> NN$, $2^y <= x <= 2^(y+1)$

Les intervalles sont fermés aux deux extrémités. Par exemple $x=2$ satisfait simultanément

$ 2^0<=2<=2^1 quad "et" quad 2^1<=2<=2^2. $

Une seule entrée peut donc avoir deux images $y=0$ et $y=1$ : *ce n'est pas une fonction*.

== 6. $NN^* -> NN$, $2^y <= x < 2^(y+1)$

Ces intervalles semi-ouverts sont deux à deux disjoints et couvrent tous les entiers positifs. Pour chaque $x>=1$, il existe exactement un $y$, égal à la partie entière de $log_2(x)$.

C'est une *application*. Elle est *surjective* car $f(2^y)=y$. Elle n'est *pas injective* car $f(2)=f(3)=1$.

== Bilan

#table(columns: (1fr, 2fr), inset: 6pt,
  [*Cas*], [*Statut*],
  [1], [Pas une fonction],
  [2], [Pas une fonction],
  [3], [Application surjective, non injective],
  [4], [Application bijective],
  [5], [Pas une fonction],
  [6], [Application surjective, non injective],
)

*Note de lecture :* le sujet utilise le *produit* $2 y z$ dans les cas 1 et 2, mais la *puissance* $2^y z$ dans les cas 3 et 4. La confusion entre les deux notations modifie la classification du cas 2.
