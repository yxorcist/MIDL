// source-confidence: high
// source-note: énoncé TD03_ensembles-fonctions.pdf + corrections photographiées 11494 et 11495.
// source-reconstruction: étapes manquantes complétées ; distinction entre contenu des photos et preuves ajoutées signalée dans le texte.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 7

Soient $f:E -> F$ et $g:F -> G$ deux *applications*.

== (i) Composition d'injections

Supposons $f$ et $g$ injectives. Si $(g compose f)(x_1)=(g compose f)(x_2)$, l'injectivité de $g$ entraîne $f(x_1)=f(x_2)$, puis celle de $f$ entraîne $x_1=x_2$.

Donc *$g compose f$ est injective*.

== (ii) Composition de surjections

Soit $z in G$. La surjectivité de $g$ donne $y in F$ tel que $g(y)=z$. Celle de $f$ donne $x in E$ tel que $f(x)=y$.

Donc $(g compose f)(x)=z$ : *$g compose f$ est surjective*.

== (iii) Composition de bijections

Une bijection est à la fois injective et surjective. En combinant (i) et (ii), la composition de deux bijections est *bijective*.

== (iv) Contre-exemple aux réciproques

Prenons

$ E=\{a\}, quad F=\{a,b\}, quad G=\{c\}. $

Définissons $f(a)=a$, $g(a)=c$ et $g(b)=c$.

Alors $g compose f:E->G$ est bijective (entre deux singletons), mais $f$ n'est pas surjective car $b$ n'a pas d'antécédent, et $g$ n'est pas injective puisque $g(a)=g(b)$ avec $a!=b$.

== (v) Une bijection entre ensembles finis conserve le cardinal

Si $f:E->F$ est bijective, chaque élément de $F$ possède exactement un antécédent dans $E$. La correspondance fournit une association un-pour-un entre leurs éléments.

Par conséquent, $|E|=|F|$.

== (vi) Deux ensembles finis de même cardinal

Supposons $|E|=|F|=n$.

- Si $f$ est injective, les $n$ images de ses $n$ éléments sont distinctes et remplissent les $n$ éléments de $F$ : $f$ est surjective.
- Si $f$ est surjective, ses $n$ éléments de départ couvrent tous les $n$ éléments de $F$ : aucune image ne peut apparaître deux fois, donc $f$ est injective.

Ainsi, sous l'hypothèse $|E|=|F|$,

$ f "bijective" <=> f "injective" <=> f "surjective". $

*Provenance :* les photos présentent les preuves de (i) à (iv) et le raisonnement cardinal pour (v)/(vi). Le contre-exemple est réécrit explicitement avec des ensembles finis.
