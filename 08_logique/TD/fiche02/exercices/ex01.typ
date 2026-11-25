// source-confidence: high
// source-note: photo 9.06.00 PM (4).jpeg, TD2 exercice 1, quatre formules et formes normales.
// source-verification: simplifications vérifiées indépendamment par équivalences logiques.
// source-reconstruction: les formes simplifiées minimales ont été mises en évidence ; les calculs longs de la copie ne sont pas recopiés à l'identique.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 1 — Formes normales conjonctives et disjonctives

== Définitions

Une *forme normale conjonctive (FNC)* est une conjonction de clauses (des disjonctions de littéraux).

Une *forme normale disjonctive (FND)* est une disjonction de termes (des conjonctions de littéraux).

Une seule clause est déjà une FNC ; une disjonction de littéraux isolés est aussi une FND.

== 1. Première formule

$
F_1 = (p => q).
$

En supprimant l'implication :

$
F_1 equiv not p or q.
$

La formule est simultanément sous FNC (une clause) et FND (deux termes à un littéral).

*FNC :* $not p or q$.

*FND :* $not p or q$.

== 2. Deuxième formule

$
F_2 = ((p and q) => r).
$

D'après la transformation de l'implication et les lois de De Morgan :

$
F_2 equiv not (p and q) or r
equiv not p or not q or r.
$

*FNC :* $not p or not q or r$.

*FND :* $not p or not q or r$.

== 3. Troisième formule

La formule notée sur la copie est

$
F_3 = ((p => q) => (p => (p or r))).
$

Puisque $p => (p or r)$ est vraie pour toute interprétation, toute implication ayant cette formule pour conséquent est vraie.

Donc

$
F_3 equiv top.
$

*FNC et FND simplifiées :* $top$.

La copie passe par une transformation plus longue puis des clauses contenant $p$ et $not p$, donc vraies. La conclusion est identique : il s'agit d'une tautologie.

== 4. Quatrième formule

La formule manuscrite est

$
F_4 = not (p => (q => r)) or (r => q).
$

En éliminant les implications :

$
F_4
&equiv not (not p or not q or r) or (not r or q) \
&equiv (p and q and not r) or not r or q.
$

Le premier terme est absorbé par $q$ (et également par $not r$). On obtient

$
F_4 equiv not r or q.
$

*FNC :* $not r or q$.

*FND :* $not r or q$.

== Contrôle

Les transformations utilisent uniquement les équivalences $A => B equiv not A or B$, les lois de De Morgan et l'absorption $A or (A and B) equiv A$.

Il faut distinguer une *forme normale correcte mais non simplifiée* d'une forme minimale : on peut conserver les termes distribués intermédiaires ou réduire à la forme équivalente la plus simple.
