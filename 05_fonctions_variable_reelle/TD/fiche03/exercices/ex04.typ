// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf, exercice 4 ; photos 11486 et 11487.
// source-verification: l'énoncé définit les trois premières fonctions sur R privé de 0, et la quatrième sur ]0,1[ union ]1,+infinity[ avec extension demandée à [0,+infinity[.
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

== 1(a). $f_1(x)=e^(-1/x^2)$ au voisinage de $0$

On considère $f_1$ définie pour $x !=0$.

Comme $x^2->0^+$ lorsque $x->0$,

$
-1/x^2->-infinity.
$

Donc

$
lim_(x->0) e^(-1/x^2)=0.
$

*Conclusion :* $f_1$ se prolonge continûment en $0$ en posant

$
f_1(0)=0.
$

== 1(b). $f_2(x)=e^(-1/x)$ au voisinage de $0$

On considère $f_2$ sur l’ensemble des réels $x$ tels que $x !=0$.

Quand $x->0^+$, on a $-1/x->-infinity$, donc

$
lim_(x->0^+) e^(-1/x)=0.
$

Quand $x->0^-$, on a $-1/x->+infinity$, donc

$
lim_(x->0^-) e^(-1/x)=+infinity.
$

Les deux limites unilatérales ne coïncident pas ; l'une est infinie.

*Conclusion :* $f_2$ n'admet *pas* de prolongement continu en $0$ sur un voisinage bilatéral de $0$.

*Attention :* si le domaine initial était seulement $(0,+infinity)$, le prolongement unilatéral à $[0,+infinity)$ par la valeur $0$ serait possible. C'est pourquoi le domaine doit être précisé.

== 1(c). $f_3(x)=ln(abs(x)) sin(x)$ au voisinage de $0$

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

== 2. Prolongement de $(x^n-1)/ln(x)$ en $0$ et en $1$

L'énoncé considère la fonction pour $x>0$ et $x !=1$, où $n>=1$ est un entier fixé, et demande un prolongement à tout $[0,+infinity[$.

La limite en $1$ est de la forme $0/0$.

On peut utiliser les équivalents usuels, lorsque $x->1$ :

$
(x^n-1)/(x-1) -> n,
$

$
ln(x)/(x-1) -> 1.
$

Ainsi,

$
(x^n-1)/ln(x) -> n.
$

On peut aussi poser $x=1+t$, $t->0$ :

$
((1+t)^n-1)/ln(1+t)
->
n t/t
=n.
$

*Conclusion en $1$ :* on pose $f_4(1)=n$.

*Il faut également traiter $0$*, car l'énoncé demande une extension à $[0,+infinity[$. Lorsque $x->0^+$, on a $x^n-1->-1$ et $ln(x)->-infinity$. Par conséquent,

$
lim_(x->0^+) (x^n-1)/ln(x)=0.
$

On pose donc $f_4(0)=0$. Le prolongement continu sur $[0,+infinity[$ est défini par les valeurs $0$ en $0$, $n$ en $1$ et par la formule initiale ailleurs.

== À retenir

1. Vérifier le *domaine* et le point de prolongement.
2. Calculer les limites à gauche et à droite lorsque les deux côtés appartiennent au domaine.
3. Si la limite est finie, définir la valeur au point manquant égale à cette limite.
4. Si la limite n'existe pas ou est infinie, un prolongement continu à valeurs réelles est impossible.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Les quatre fonctions et les conclusions de prolongement sont issues des notes photographiées. Pour la première fonction, la différence entre un domaine bilatéral et un domaine à droite est explicitée ; les domaines et les deux points de prolongement ont été vérifiés dans l'énoncé officiel.
]
