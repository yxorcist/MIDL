#import "../../style.typ": *

// source-confidence: high
// source-note: photographies 10916–10921 : suite du CM, chapitre 3, fonctions continues.
// source-note: aucune date de séance n'est visible ; la session est classée après 2026-10-07 sans date inventée.
// source-note: l'ordre des définitions, preuves, exemples, remarques et théorèmes suit celui des pages.
// source-note: la première définition de limite infinie figure déjà dans 2026-10-07.typ et n'est pas dupliquée.
// source-uncertainty: quelques notations de domaine et quelques symboles sont peu lisibles, mais les raisonnements principaux sont lisibles.
// source-verification: précisions signalées lorsque les hypothèses du théorème de composition doivent être explicitées.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — suite non datée]
  #v(0.2em)
  #text(size: 11pt)[Caractérisations séquentielles, continuité et théorèmes fondamentaux]
]
#line(length: 100%)
#v(0.7em)

= Caractérisation séquentielle de la limite

#theorem(title: "Théorème — Caractérisation séquentielle de la limite")[
  Soit $f:D_f -> RR$, et soit $a$ un point adhérent à $D_f$.

  La fonction $f$ admet pour limite $ell in RR$ en $a$ si et seulement si, pour toute suite $(x_n)$ d'éléments de $D_f$ qui converge vers $a$, la suite $(f(x_n))$ converge vers $ell$ :

  $
  lim_(x -> a) f(x)=ell
  quad <=> quad
  forall (x_n) subset.eq D_f,
  quad x_n -> a => f(x_n) -> ell.
  $

  Dans les notes, le résultat est également annoncé pour les limites en $+oo$ ou $-oo$, les limites infinies et les limites unilatérales, en adaptant les suites à leur domaine d'approche.
]

#proof[
  *Sens direct.* Supposons que $lim_(x -> a) f(x)=ell$ et soit une suite $(x_n)$ du domaine telle que $x_n -> a$.

  Soit $epsilon>0$. Par définition de la limite, il existe $eta>0$ tel que

  $
  x in D_f,
  quad abs(x-a)<eta
  quad => quad
  abs(f(x)-ell)<epsilon.
  $

  Puisque $x_n -> a$, il existe $N in NN$ tel que, pour tout $n>=N$,

  $
  abs(x_n-a)<eta.
  $

  Donc, pour tout $n>=N$, $abs(f(x_n)-ell)<epsilon$. Ainsi $f(x_n)->ell$.

  *Sens réciproque.* On raisonne par contraposée. Supposons que $f$ n'admette pas $ell$ pour limite en $a$.

  Il existe alors $epsilon_0>0$ tel que, pour tout $eta>0$, on puisse trouver un point $x in D_f$ vérifiant

  $
  abs(x-a)<eta
  quad "et" quad
  abs(f(x)-ell)>=epsilon_0.
  $

  Pour tout $n>=1$, on applique cette propriété avec $eta=1/n$ et on choisit $x_n in D_f$ tel que

  $
  abs(x_n-a)<1/n
  quad "et" quad
  abs(f(x_n)-ell)>=epsilon_0.
  $

  La suite $(x_n)$ converge vers $a$, mais $(f(x_n))$ ne converge pas vers $ell$. C'est la contraposée de l'implication souhaitée.
]

= Caractérisation séquentielle de la continuité

#theorem(title: "Corollaire — Continuité séquentielle")[
  Soit $a in D_f$.

  La fonction $f$ est continue en $a$ si et seulement si, pour toute suite $(x_n)$ d'éléments de $D_f$ qui converge vers $a$,

  $
  f(x_n) -> f(a).
  $
]

#remark[
  La caractérisation séquentielle permet de démontrer des résultats sur les fonctions en utilisant les résultats déjà établis pour les suites, notamment la composition.
]

= Composition des limites

On considère deux fonctions $f:D_f->RR$ et $g:D_g->RR$ telles que la composition $g compose f$ soit définie au voisinage considéré.

Les notes étudient la situation

$
lim_(x -> a) f(x)=ell_1
quad "et" quad
lim_(y -> ell_1) g(y)=ell_2.
$

#theorem(title: "Composition")[
  Si $g$ est continue en $ell_1$ et si $f(x)->ell_1$ lorsque $x->a$, alors

  $
  lim_(x -> a) g(f(x))=g(ell_1).
  $

  Plus généralement, pour une limite prise sur un voisinage *poncturé*, on peut remplacer la continuité de $g$ par $lim_(y->ell_1)g(y)=ell_2$ si $f(x)!=ell_1$ suffisamment près de $a$.

  Dans ce cas, la limite de la composée est $ell_2$.
]

#proof[
  Soit $(x_n)$ une suite du domaine de la composée telle que $x_n->a$.

  Par la limite de $f$,

  $
  f(x_n)->ell_1.
  $

  Par continuité de $g$ en $ell_1$,

  $
  g(f(x_n))->g(ell_1).
  $

  La caractérisation séquentielle donne la limite annoncée de la composée.
]

#remark[
  *Précision sur les hypothèses.* La copie utilise la caractérisation séquentielle de la composition avec deux limites successives. Pour les limites usuelles sur un voisinage poncturé, une hypothèse supplémentaire est nécessaire si $g$ n'est pas continue au point $ell_1$ : sinon, une suite peut rester constamment égale à $ell_1$ et la conclusion n'est pas garantie. Cette précision n'est pas une nouvelle hypothèse visible dans le manuscrit.
]

= Prolongement par continuité

#definition(title: "Prolongement par continuité")[
  Soit $f:D_f->RR$ et soit $a$ un point adhérent à $D_f$ tel que $a notin D_f$.

  Si

  $
  lim_(x -> a) f(x)=ell in RR,
  $

  on appelle *prolongement par continuité de $f$ en $a$* la fonction définie sur $D_f union {a}$ qui coïncide avec $f$ sur $D_f$ et prend la valeur $ell$ en $a$.

  Dans le cours, le prolongement est souvent noté encore $f$.
]

== Exemple — Quotient sinus

On considère, pour $x!=0$,

$
f(x)=sin(x)/x.
$

On sait que

$
lim_(x -> 0) sin(x)/x=1.
$

On pose donc la valeur $1$ en $0$ pour obtenir une fonction continue en $0$ (et sur $RR$).

== Exemple — Quotient logarithmique

Pour $x> -1/2$ et $x!=0$, on considère

$
f(x)=ln(1+2x)/x.
$

Puisque

$
lim_(x -> 0) ln(1+2x)/x=2,
$

on peut définir la valeur $f(0)=2$ pour prolonger la fonction par continuité.

== Exemple — $x ln(x)$

La fonction

$
f(x)=x ln(x),
quad x>0,
$

satisfait

$
lim_(x -> 0^+) x ln(x)=0.
$

Elle admet donc un prolongement continu sur $[0,+oo[$, en posant $f(0)=0$.

#remark[
  Le prolongement peut aussi être effectué au bord d'un intervalle. Les photographies utilisent parfois la même lettre pour la fonction initiale et sa fonction prolongée.
]

= Limites d'une fonction monotone

#proposition(title: "Proposition — Limite d'une fonction monotone")[
  Soient $a,b in RR$ avec $a<b$.

  - Si $f$ est monotone sur $[a,b[$, alors $f$ admet une limite en $b$ à gauche, éventuellement infinie.
  - Si $f$ est monotone sur $]a,b]$, alors $f$ admet une limite en $a$ à droite, éventuellement infinie.
]

#proof[
  La copie étudie une fonction $f$ croissante sur $[a,b[$.

  *Premier cas : $f$ est majorée.* L'ensemble

  $
  {f(x) | x in [a,b[}
  $

  est une partie non vide et majorée de $RR$. Il admet donc une borne supérieure

  $
  M=sup {f(x) | x in [a,b[}.
  $

  Pour tout $epsilon>0$, la caractérisation de la borne supérieure fournit $x_epsilon in [a,b[$ tel que

  $
  M-epsilon<f(x_epsilon)<=M.
  $

  Puisque $f$ est croissante, si $x in [x_epsilon,b[$,

  $
  M-epsilon<f(x)<=M.
  $

  Ainsi

  $
  lim_(x -> b^-) f(x)=M.
  $

  *Second cas : $f$ n'est pas majorée.* Pour tout $A>0$, on choisit $x_A in [a,b[$ tel que $f(x_A)>A$. Par croissance, tout $x in [x_A,b[$ vérifie

  $
  f(x)>=f(x_A)>A.
  $

  Donc

  $
  lim_(x -> b^-) f(x)=+oo.
  $

  Les cas où $f$ est décroissante, ou lorsque l'on approche $a$ à droite, s'obtiennent par des raisonnements analogues sur les bornes supérieure ou inférieure.
]

= Théorème des valeurs intermédiaires

#theorem(title: "Théorème des valeurs intermédiaires")[
  Soient $a,b in RR$ avec $a<b$ et $f:[a,b]->RR$ une fonction continue.

  Pour tout $y$ compris entre $f(a)$ et $f(b)$, il existe $c in [a,b]$ tel que

  $
  f(c)=y.
  $
]

== Preuve constructive — Dichotomie

#proof[
  Si $y=f(a)$ ou $y=f(b)$, le résultat est immédiat.

  On se place dans le cas où $f(a)<y<f(b)$. (Dans l'autre ordre, on échange le rôle des bornes ou on applique le même raisonnement à $-f$.)

  On construit deux suites $(a_n)$ et $(b_n)$, initialisées par

  $
  a_0=a,
  quad b_0=b.
  $

  Supposons $a_n,b_n$ définis avec

  $
  f(a_n)<=y<=f(b_n).
  $

  On pose le milieu

  $
  m_n=(a_n+b_n)/2.
  $

  - Si $f(m_n)=y$, la preuve s'achève avec $c=m_n$.
  - Si $f(m_n)<y$, on pose $a_(n+1)=m_n$ et $b_(n+1)=b_n$.
  - Si $f(m_n)>y$, on pose $a_(n+1)=a_n$ et $b_(n+1)=m_n$.

  Tant que l'on n'a pas trouvé de solution, les suites sont adjacentes :

  $
  a_n <= a_(n+1) <= b_(n+1) <= b_n,
  $

  et

  $
  b_n-a_n=(b-a)/2^n ->0.
  $

  Elles convergent donc vers une même limite $c in [a,b]$.

  Par continuité, $f(a_n)->f(c)$ et $f(b_n)->f(c)$. Or, pour tout $n$,

  $
  f(a_n)<=y<=f(b_n).
  $

  En passant à la limite,

  $
  f(c)<=y<=f(c).
  $

  Ainsi $f(c)=y$.
]

#remark[
  La preuve du tableau est constructive et peut être implémentée sur ordinateur : elle permet de trouver une valeur approchée d'une solution de $f(x)=y$. L'unicité nécessite des hypothèses supplémentaires, par exemple la stricte monotonie.
]

== Corollaire — Image d'un intervalle par une fonction continue

#proposition(title: "Image d'un intervalle")[
  Si $I$ est un intervalle de $RR$ et $f:I->RR$ est continue, alors $f(I)$ est un intervalle de $RR$.
]

#proof[
  Soient $y_1,y_2 in f(I)$ avec $y_1<y_2$ et $y in [y_1,y_2]$.

  Il existe $x_1,x_2 in I$ tels que

  $
  f(x_1)=y_1,
  quad f(x_2)=y_2.
  $

  Le segment d'extrémités $x_1$ et $x_2$ est contenu dans $I$.

  Le théorème des valeurs intermédiaires, appliqué à la restriction de $f$ sur ce segment, donne un point $c in I$ tel que

  $
  f(c)=y.
  $

  Donc $y in f(I)$. Toute valeur comprise entre deux points de $f(I)$ appartient à $f(I)$ ; cet ensemble est donc un intervalle.
]

= Théorème des bornes atteintes

#theorem(title: "Théorème des bornes atteintes")[
  Soit $f:[a,b]->RR$ continue, avec $a<b$.

  Alors $f$ est bornée et atteint ses bornes : il existe $u,v in [a,b]$ tels que

  $
  f(u)=min_(x in [a,b]) f(x),
  quad
  f(v)=max_(x in [a,b]) f(x).
  $
]

== Démonstration

#proof[
  *Étape 1 — $f$ est bornée.*

  Supposons, par l'absurde, que $f$ ne soit pas majorée.

  Pour chaque entier $n>=1$, il existe $x_n in [a,b]$ tel que

  $
  f(x_n)>n.
  $

  La suite $(x_n)$ est bornée dans $[a,b]$. Par le théorème de Bolzano–Weierstrass, elle admet une sous-suite $(x_(phi(n)))$ qui converge vers un point $c in [a,b]$.

  Par continuité de $f$ en $c$,

  $
  f(x_(phi(n)))->f(c) in RR.
  $

  Pourtant,

  $
  f(x_(phi(n)))>phi(n)>=n,
  $

  donc cette suite tend vers $+oo$. Contradiction.

  Ainsi $f$ est majorée. On obtient qu'elle est minorée en appliquant le même raisonnement à $-f$.

  *Étape 2 — $f$ atteint sa borne supérieure.*

  Puisque $f([a,b])$ est non vide et majorée, posons

  $
  M=sup f([a,b]).
  $

  Pour chaque $n>=1$, la caractérisation de la borne supérieure fournit $x_n in [a,b]$ tel que

  $
  M-1/n < f(x_n) <= M.
  $

  Une sous-suite $(x_(phi(n)))$ converge vers un point $v in [a,b]$.

  La continuité entraîne

  $
  f(x_(phi(n)))->f(v).
  $

  Par l'encadrement précédent,

  $
  f(x_(phi(n)))->M.
  $

  Donc $f(v)=M$.

  Le minimum est atteint en appliquant ce résultat à $-f$.
]

== Corollaire — Image d'un segment

#proposition[
  Si $f$ est continue sur $[a,b]$, alors

  $
  f([a,b])=[m,M],
  $

  où $m$ et $M$ désignent respectivement le minimum et le maximum de $f$ sur $[a,b]$.
]

#remark[
  Le résultat ne se généralise pas sans hypothèse supplémentaire aux intervalles ouverts. Par exemple, $x mapsto e^(-x^2)$ est continue sur $RR$ et son image est $]0,1]$ : elle n'atteint pas la borne inférieure $0$.
]

= Injectivité et stricte monotonie

#theorem(title: "Théorème — Continuité, injectivité et stricte monotonie")[
  Soit $I$ un intervalle de $RR$ et $f:I->RR$ une fonction continue.

  Alors $f$ est injective si et seulement si $f$ est strictement monotone.
]

== Démonstration

#proof[
  *Sens direct facile :* si $f$ est strictement croissante (ou strictement décroissante), deux arguments distincts ont des images distinctes. Donc $f$ est injective.

  *Sens réciproque :* supposons $f$ continue et injective, mais pas strictement monotone.

  On peut alors trouver trois points $x_1<x_2<x_3$ pour lesquels les valeurs présentent un changement de sens :

  $
  f(x_1)<f(x_2)>f(x_3)
  $

  ou

  $
  f(x_1)>f(x_2)<f(x_3).
  $

  Considérons le premier cas. Choisissons une valeur $y$ strictement comprise entre $f(x_2)$ et $max(f(x_1),f(x_3))$.

  Par le théorème des valeurs intermédiaires, il existe

  $
  u in ]x_1,x_2[
  quad "et" quad
  v in ]x_2,x_3[
  $

  tels que $f(u)=y=f(v)$.

  Mais $u!=v$ : contradiction avec l'injectivité.

  Le second cas se traite de la même manière en échangeant les inégalités.

  Donc $f$ est strictement monotone.
]

= Image et réciproque d'une fonction continue strictement monotone

#proposition[
  Soit $f:[a,b]->RR$ continue et strictement monotone.

  Alors $f([a,b])$ est le segment d'extrémités $f(a)$ et $f(b)$, et

  $
  f:[a,b]->f([a,b])
  $

  est une bijection.
]

#proof[
  Le théorème des bornes atteintes et le théorème des valeurs intermédiaires montrent que l'image est un segment.

  Si $f$ est strictement croissante, ce segment est $[f(a),f(b)]$. Si $f$ est strictement décroissante, il est $[f(b),f(a)]$.

  La fonction est injective par stricte monotonie et surjective sur son image par définition. Elle est donc bijective.
]

#proposition(title: "Proposition — Monotonie de la fonction réciproque")[
  Soit $I$ un intervalle et $f:I->RR$ continue et strictement monotone.

  La réciproque

  $
  f^(-1):f(I)->I
  $

  est strictement monotone, *dans le même sens que $f$*.
]

#proof[
  Supposons $f$ strictement croissante. Soient $y_1<y_2$ deux points de $f(I)$ et posons

  $
  x_1=f^(-1)(y_1),
  quad x_2=f^(-1)(y_2).
  $

  Si $x_1>=x_2$, la croissance de $f$ entraînerait

  $
  y_1=f(x_1)>=f(x_2)=y_2,
  $

  contradiction. On a donc $x_1<x_2$.

  Le cas strictement décroissant se traite de même avec les inégalités inversées.
]

#theorem(title: "Théorème — Continuité de la fonction réciproque")[
  Soit $I$ un intervalle de $RR$ et soit $f:I->RR$ une fonction continue et strictement monotone.

  Alors $f$ définit une bijection de $I$ vers $f(I)$ et la fonction réciproque

  $
  f^(-1):f(I)->I
  $

  est continue et strictement monotone.
]

== Démonstration de la continuité

#proof[
  Soit $y in f(I)$ et posons $x=f^(-1)(y)$.

  On veut montrer que, pour toute suite $(y_n)$ de $f(I)$ convergeant vers $y$,

  $
  f^(-1)(y_n)->x.
  $

  Posons $x_n=f^(-1)(y_n)$.

  Supposons, par l'absurde, que $(x_n)$ ne converge pas vers $x$. Il existe alors $epsilon>0$ et une sous-suite $(x_(phi(n)))$ telle que, pour tout $n$,

  $
  abs(x_(phi(n))-x)>=epsilon.
  $

  Quitte à extraire une sous-suite supplémentaire, on peut supposer que tous ces termes vérifient soit

  $
  x_(phi(n))>=x+epsilon,
  $

  soit

  $
  x_(phi(n))<=x-epsilon.
  $

  Supposons $f$ strictement croissante (le cas décroissant est analogue).

  Dans le premier cas, le point $x+epsilon$ appartient à $I$ dès lors que de tels termes existent et, par croissance,

  $
  y_(phi(n))=f(x_(phi(n)))>=f(x+epsilon)>f(x)=y.
  $

  Ce minorant strict contredit $y_(phi(n))->y$.

  Dans le second cas, $x-epsilon in I$ et

  $
  y_(phi(n))=f(x_(phi(n)))<=f(x-epsilon)<f(x)=y,
  $

  ce qui contredit aussi la convergence de $y_(phi(n))$ vers $y$.

  Ainsi $x_n->x$. La caractérisation séquentielle de la continuité montre que $f^(-1)$ est continue en $y$, donc sur $f(I)$.
]

#remark[
  La démonstration manuscrite de la continuité de la réciproque s'arrête après la construction de la sous-suite d'indices $phi(n)$ ; les deux contradictions par monotonie ci-dessus complètent explicitement le raisonnement. Elles sont ajoutées comme prolongement mathématique, et non attribuées à la source photographique.
]
