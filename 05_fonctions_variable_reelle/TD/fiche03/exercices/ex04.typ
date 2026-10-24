// source-confidence: medium
// source-note: photos 11486 (page droite, bas) et 11487 (page gauche, haut) : exercice 4, prolongement par continuité.
// source-uncertainty: énoncé imprimé FVR TD03 non disponible ; fonctions et points étudiés sont identifiés d'après les expressions manuscrites. Les domaines sont explicités pour lever les ambiguïtés.
// source-verification: les limites unilatérales sont distinguées et le signe dans l'exponentielle est vérifié ; la fonction (x^n-1)/ln(x) admet une limite n au voisinage de 1 pour n>0 entier.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 4 — Prolongement par continuité

== Rappel de méthode

Si une fonction $f$ est définie au voisinage de $a$, sauf éventuellement en $a$, alors elle est *prolongeable par continuité en $a$* si la limite finie

$
ell=lim_(x->a) f(x)
$

existe (en tenant compte des côtés par lesquels on peut approcher $a$ dans le domaine).

On définit alors la nouvelle fonction en posant $f(a)=ell$.

== 1. $f_1(x)=e^(-1/x)$ au voisinage de $0$

On considère $f_1$ sur $RR \\ \{0\}$.

Quand $x->0^+$, on a $-1/x->-infinity$, donc

$
lim_(x->0^+) e^(-1/x)=0.
$

Quand $x->0^-$, on a $-1/x->+infinity$, donc

$
lim_(x->0^-) e^(-1/x)=+infinity.
$

Les deux limites unilatérales ne coïncident pas ; l'une est infinie.

*Conclusion :* $f_1$ n'admet *pas* de prolongement continu en $0$ sur un voisinage bilatéral de $0$.

*Attention :* si le domaine initial était seulement $(0,+infinity)$, le prolongement unilatéral à $[0,+infinity)$ par la valeur $0$ serait possible. C'est pourquoi le domaine doit être précisé.

== 2. $f_2(x)=e^(-1/x^2)$ au voisinage de $0$

On considère $f_2$ définie pour $x !=0$.

Comme $x^2->0^+$ lorsque $x->0$,

$
-1/x^2->-infinity.
$

Donc

$
lim_(x->0) e^(-1/x^2)=0.
$

*Conclusion :* $f_2$ se prolonge continûment en $0$ en posant

$
f_2(0)=0.
$

== 3. $f_3(x)=ln(abs(x)) sin(x)$ au voisinage de $0$

Pour $x !=0$, on écrit

$
ln(abs(x)) sin(x)
=
(x ln(abs(x))) (sin(x)/x).
$

On connaît les limites

$
lim_(x->0) x ln(abs(x))=0,
$

et

$
lim_(x->0) sin(x)/x=1.
$

Par produit,

$
lim_(x->0) ln(abs(x)) sin(x)=0.
$

*Conclusion :* $f_3$ se prolonge continûment en $0$ en posant

$
f_3(0)=0.
$

== 4. $f_4(x)=(x^n-1)/ln(x)$ au voisinage de $1$

La copie considère la fonction pour $x>0$ et $x !=1$, où $n>=1$ est un entier fixé.

La limite en $1$ est de la forme $0/0$.

On peut utiliser les équivalents usuels, lorsque $x->1$ :

$
x^n-1 sim n(x-1),
$

$
ln(x) sim x-1.
$

Ainsi,

$
(x^n-1)/ln(x) -> n.
$

On peut aussi poser $x=1+t$, $t->0$ :

$
((1+t)^n-1)/ln(1+t)
sim
(n t)/t
=n.
$

*Conclusion :* la fonction est prolongeable par continuité en $1$ en posant

$
f_4(1)=n.
$

== À retenir

1. Vérifier le *domaine* et le point de prolongement.
2. Calculer les limites à gauche et à droite lorsque les deux côtés appartiennent au domaine.
3. Si la limite est finie, définir la valeur au point manquant égale à cette limite.
4. Si la limite n'existe pas ou est infinie, un prolongement continu à valeurs réelles est impossible.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les quatre fonctions et les conclusions de prolongement sont issues des notes photographiées. Pour la première fonction, la différence entre un domaine bilatéral et un domaine à droite est explicitée ; les domaines exacts de l'énoncé imprimé restent à confirmer.
]
