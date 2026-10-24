// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf, exercice 6 ; photo 11487 : Raymond parcourt 80 km entre 8h et 9h.
// source-verification: l'énoncé officiel propose explicitement g(t)=f(t+30)-f(t) ; l'encadrement et le TVI sont développés.
// source-verification: g(0)-40 et g(30)-40 sont opposés, garantissant une solution t in [0,30].

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 6 — Parcourir 40 km en 30 minutes

== Situation du problème

Raymond part à *8 h* et arrive à *9 h*, après un trajet de *80 km en 60 minutes*.

On note $f(t)$ la distance parcourue depuis le départ, en kilomètres, au temps $t$, mesuré en minutes.

On suppose que $f:[0,60]->RR$ est *continue*. D'après les données,

$
f(0)=0
quad "et" quad
f(60)=80.
$

On veut montrer qu'il existe un intervalle de temps de *30 minutes consécutives* pendant lequel Raymond parcourt *exactement 40 km*.

== 1. Construire la distance sur une période de 30 minutes

Pour un instant de départ $t in [0,30]$, la distance parcourue pendant les 30 minutes suivantes vaut

$
g(t)=f(t+30)-f(t).
$

On a ainsi défini

$
g:[0,30]->RR.
$

La fonction $g$ est continue sur $[0,30]$, car elle est la différence de deux fonctions continues.

== 2. Calculer les valeurs aux extrémités

Au début de l'heure,

$
g(0)=f(30)-f(0)=f(30).
$

Sur la seconde demi-heure,

$
g(30)=f(60)-f(30)=80-f(30).
$

Ainsi,

$
g(0)+g(30)=80.
$

Par conséquent, *40 est situé entre les deux nombres $g(0)$ et $g(30)$* :

- Si $g(0)<=40$, alors $g(30)>=40$.
- Si $g(0)>=40$, alors $g(30)<=40$.

Si l'une de ces valeurs vaut déjà $40$, la conclusion est immédiate.

== 3. Appliquer le théorème des valeurs intermédiaires

Sinon, $g$ est continue sur l'intervalle $[0,30]$ et ses valeurs aux extrémités sont de part et d'autre de $40$.

Par le *théorème des valeurs intermédiaires*, il existe $c in [0,30]$ tel que

$
g(c)=40.
$

Autrement dit,

$
f(c+30)-f(c)=40.
$

Raymond a donc nécessairement parcouru *exactement 40 km pendant les 30 minutes allant de $c$ à $c+30$*.

== Méthode à retenir

Pour ce type d'exercice :

1. Introduire une fonction continue de distance cumulée $f$.
2. Écrire la distance sur un intervalle mobile de durée fixe $T$ :

   $
   g(t)=f(t+T)-f(t).
   $

3. Calculer $g$ aux deux extrémités de son domaine.
4. Montrer que la valeur recherchée est entre ces deux résultats.
5. Utiliser le théorème des valeurs intermédiaires.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* La définition de $g$, les valeurs $g(0)=f(30)$ et $g(30)=80-f(30)$ ainsi que le TVI apparaissent dans la copie. La justification de l'encadrement de $40$ est développée explicitement.
]
