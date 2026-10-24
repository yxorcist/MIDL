// source-confidence: high
// source-note: énoncé TD03_ensembles-fonctions.pdf + corrections photographiées 11495.
// source-reconstruction: étapes manquantes complétées ; distinction entre contenu des photos et preuves ajoutées signalée dans le texte.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 8

Deux ensembles sont *équipotents* lorsqu'il existe une bijection entre eux. On doit montrer que $NN$, $2NN$, $ZZ$ et $NN^2$ ont la même cardinalité.

== (i) $NN$ et les entiers pairs

L'application

$ f:NN->2NN, quad f(n)=2n $

est injective car $2a=2b$ entraîne $a=b$, et surjective par définition de $2NN$ : tout entier pair $2k$ a pour antécédent $k$.

Elle est donc bijective.

== (i) $NN$ et $ZZ$

On énumère les entiers relatifs suivant

$ 0,-1,1,-2,2,-3,3,dots $

et on définit $g:NN->ZZ$ par

$ g(2k)=k, quad g(2k+1)=-(k+1), quad k in NN. $

Chaque entier $z>=0$ s'écrit uniquement comme $g(2z)$. Chaque entier $z<0$ s'écrit uniquement comme $g(-2z-1)$. Donc $g$ est *bijective*.

== (ii) $NN$ et $NN^2$

La technique est l'énumération des couples $(a,b)$ par diagonales de somme constante $s=a+b$ :

$ (0,0); (1,0),(0,1); (2,0),(1,1),(0,2); dots $

La formule dite *d'appariement de Cantor* est

$ pi(a,b)=((a+b)(a+b+1))/2 + b. $

Pour une somme fixée $s=a+b$, les valeurs prises sont

$ s(s+1)/2, s(s+1)/2+1, dots, s(s+1)/2+s. $

Les intervalles d'entiers ainsi décrits sont consécutifs et sans chevauchement lorsque $s$ parcourt $NN$. Chaque entier naturel apparaît donc exactement une fois : $pi:NN^2 -> NN$ est *bijective*.

On en déduit

$ |NN|=|2NN|=|ZZ|=|NN^2|. $

*Provenance :* les photos donnent le doublement $n->2n$, une bijection par parité avec $ZZ$ et l'amorce d'un appariement des couples. La formule de Cantor et sa justification détaillée complètent la question (ii), non terminée dans le manuscrit.
