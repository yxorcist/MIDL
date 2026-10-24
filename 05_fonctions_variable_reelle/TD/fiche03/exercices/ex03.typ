// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf exercice 3 ; photo 11486 et bonus manuscrit.
// source-verification: la question principale figure dans le PDF officiel ; le bonus sur les fonctions additives provient uniquement des notes manuscrites.
// source-reconstruction: justification des arguments de densité, de continuité et d'additivité.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3 — Continuité et densité des rationnels

== Rappels utilisés

=== Définition epsilon–delta de la continuité

Pour une fonction $f:RR -> RR$, la continuité en un point $x_0$ signifie :

$
forall epsilon>0,
exists eta>0,
forall x in RR,
abs(x-x_0)<eta
quad "implique" quad
abs(f(x)-f(x_0))<epsilon.
$

=== Densité de $QQ$ dans $RR$

Pour tout réel $x$, il existe une suite $(q_n)$ de rationnels telle que $q_n->x$.

=== Caractérisation séquentielle de la continuité

Une fonction $f:E->RR$ est continue en $x in E$ si et seulement si, pour toute suite $(x_n)$ d'éléments de $E$ telle que $x_n->x$, on a

$
f(x_n)->f(x).
$

== 1. Une fonction continue déterminée sur $QQ$

*Propriété reconstruite depuis la copie.* Soit $f:RR->RR$ continue. Supposons qu'il existe $A in RR$ tel que

$
forall q in QQ,
quad f(q)=A q.
$

Montrons que la même égalité est vraie pour tout réel.

Soit $x in RR$. Par densité de $QQ$, choisissons une suite $(q_n)$ d'éléments de $QQ$ telle que

$
q_n->x.
$

Pour chaque $n$, l'hypothèse donne

$
f(q_n)=A q_n.
$

La continuité de $f$ en $x$ entraîne

$
f(q_n)->f(x),
$

et, par les opérations sur les limites,

$
A q_n->A x.
$

Par unicité de la limite,

$
f(x)=A x.
$

Donc

$
forall x in RR,
quad f(x)=A x.
$

*Idée centrale :* une fonction continue est entièrement déterminée par ses valeurs sur une partie dense de son domaine.

== Bonus. Une fonction additive continue est linéaire

La copie propose aussi le résultat suivant :

Si $f:RR->RR$ est continue et vérifie

$
forall x,y in RR,
quad f(x+y)=f(x)+f(y),
$

alors il existe $A in RR$ tel que

$
forall x in RR,
quad f(x)=A x.
$

=== Démonstration

Posons $A=f(1)$.

La relation additive implique d'abord $f(0)=0$, puis

$
f(-x)=-f(x).
$

Par récurrence, pour tout entier $n>=1$,

$
f(n)=n f(1)=n A.
$

On obtient aussi, pour chaque entier relatif $m$,

$
f(m)=m A.
$

Pour un rationnel $q=m/n$, où $m in ZZ$ et $n>=1$, l'additivité donne

$
n f(m/n)=f(m)=m A,
$

donc

$
f(q)=q A.
$

L'égalité est ainsi établie sur $QQ$. On applique maintenant la première question et la continuité de $f$ pour conclure

$
forall x in RR,
quad f(x)=A x.
$

== Méthode à retenir

Pour prolonger une égalité connue sur les rationnels à tous les réels, utiliser :

1. Une suite de rationnels convergeant vers le réel considéré.
2. La continuité pour faire passer l'égalité à la limite.
3. L'unicité de la limite pour identifier la valeur de la fonction.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* La preuve par densité de $QQ$ et le bonus sur les fonctions additives figurent dans la photographie. Les calculs sur les rationnels dans le bonus ont été complétés pour rendre la preuve autonome.
]
