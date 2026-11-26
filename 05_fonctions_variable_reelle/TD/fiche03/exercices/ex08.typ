// source-confidence: high
// source-note: TD03_continuite.pdf (UCA 2026-2027), exercice 8.
// source-note: photo 12242 (TVI, rappel k-Lipschitz, unicité, exemple x+e^(-x)) ; photo 12244 (exemple x+1/(x+1)).
// source-verification: la question 2 suppose |f(x)-f(y)|<|x-y| pour x!=y, sans constante uniforme k<1.
// source-reconstruction: Q1 suit la copie manuscrite de l'étudiant (2026-11-24), avec continuité de g et conclusion f(c)=c explicitées.
// source-reconstruction: Q2 et premier exemple de Q3 suivent la copie manuscrite du 2026-11-26 ; rappel de Lipschitz et second exemple conservés.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 8 — Existence et unicité de points fixes

Un *point fixe* de $f$ est un réel $c$ tel que $f(c)=c$.

== 1. Une application continue de $[a,b]$ dans $[a,b]$ possède un point fixe

On a $f:[a,b] -> [a,b]$ continue. On pose
$
g(x)=f(x)-x.
$
On cherche un réel $c$ tel que $g(c)=0$.

Pour tout $x in [a,b]$, on sait que $f(x) in [a,b]$, donc
$
a<=f(x)<=b.
$

*Pour $x=a$ :* comme $f(a)>=a$,
$
f(a)-a>=0
quad => quad g(a)>=0.
$

*Pour $x=b$ :* comme $f(b)<=b$,
$
f(b)-b<=0
quad => quad g(b)<=0.
$

La fonction $g$ est continue sur $[a,b]$, car $f$ et la fonction $x mapsto x$ sont continues.

On a donc $g(b)<=0<=g(a)$. *Par le théorème des valeurs intermédiaires (TVI)*,
$
exists c in [a,b], quad g(c)=0.
$

Or
$
g(c)=0
quad <=> quad f(c)-c=0
quad <=> quad f(c)=c.
$

Donc $f$ admet au moins un point fixe sur $[a,b]$.

== 2. L'inégalité stricte garantit un unique point fixe

Soit $f:[a,b]->[a,b]$ telle que, pour tous $x,y in [a,b]$ avec $x!=y$,
$
abs(f(x)-f(y))<abs(x-y).
$

On a $f([a,b]) subset.eq [a,b]$.

Pour $x!=y$, on a
$
abs(f(x)-f(y))<abs(x-y)
quad => quad
abs(f(x)-f(y))<=abs(x-y).
$

L'inégalité large reste vraie pour $x=y$, car
$
abs(f(x)-f(x))=0<=0=abs(x-x).
$

Ainsi, pour tous $x,y in [a,b]$,
$
abs(f(x)-f(y))<=abs(x-y).
$

On constate que $f$ est $1$-Lipschitzienne, donc continue.

On a $f([a,b]) subset.eq [a,b]$ et $f$ est continue sur $[a,b]$. Par le théorème du point fixe sur un segment, démontré à la question 1,
$
exists c in [a,b], quad f(c)=c.
$

Par l'absurde, supposons qu'il existe deux points fixes distincts $x$ et $y$ de $f$. On a alors $x!=y$, $f(x)=x$ et $f(y)=y$.

D'après l'hypothèse,
$
abs(f(x)-f(y))<abs(x-y).
$

Or, puisque $x$ et $y$ sont des points fixes,
$
abs(f(x)-f(y))=abs(x-y).
$

Contradiction.

Donc il existe un unique point fixe de $f$ sur $[a,b]$.

== 3. Sur $RR_+$, l'inégalité stricte ne garantit pas l'existence

*Premier exemple de la copie.* On pose
$
f(x)=x+e^(-x), quad x>=0.
$

Comme $x>=0$ et $e^(-x)>0$, on a $f(x)>0$. Ainsi $f(RR_+) subset.eq RR_+$ et $f$ est continue sur $RR_+$.

On dérive :
$
f'(x)=(x+e^(-x))'=1-e^(-x).
$

Pour tout $x>=0$, on a
$
0<e^(-x)<=1
quad => quad
0<=1-e^(-x)<1.
$

Donc, pour tout $x>=0$,
$
0<=f'(x)<1.
$

Soient $x,y in RR_+$ tels que $0<=x<y$. La fonction $f$ est continue sur $[x,y]$ et dérivable sur $]x,y[$.

Par le théorème des accroissements finis (TAF), il existe $c in ]x,y[$ tel que
$
f(y)-f(x)=f'(c)(y-x).
$

Comme $0<=f'(c)<1$ et $y-x>0$, on obtient
$
abs(f(y)-f(x))
&=abs(f'(c)) abs(y-x) \
&<abs(y-x).
$

Le cas $y<x$ se déduit en échangeant $x$ et $y$. La propriété demandée est donc vraie pour tous $x,y in RR_+$ distincts.

Par l'absurde, supposons qu'il existe $c in RR_+$ tel que $f(c)=c$.

Alors
$
f(c)=c
quad <=> quad c+e^(-c)=c
quad <=> quad e^(-c)=0.
$

Contradiction, car $e^(-c)>0$.

Donc $f$ satisfait l'inégalité stricte de la question 2, mais n'admet aucun point fixe sur $RR_+$.

*Autre exemple figurant sur la photo 12244.* Soit
$
h(x)=x+1/(x+1),
quad x>=0.
$
Pour $0<=x<y$,
$
h(x)-h(y)
&=x-y+1/(x+1)-1/(y+1) \
&=(x-y)(1-1/((x+1)(y+1))).
$
Or
$
0<=1-1/((x+1)(y+1))<1.
$
Par suite,
$
abs(h(x)-h(y))<abs(x-y).
$
Pourtant $h(x)>x$ sur $RR_+$, donc $h$ n'a pas non plus de point fixe.

Les deux contre-exemples illustrent le rôle de l'intervalle *fermé et borné* dans la question 1 : la condition stricte seule, sur $RR_+$, n'assure pas l'existence d'un point fixe.

== Rappel de la copie : condition $k$-Lipschitz

Une fonction $f:I->RR$ est $k$-Lipschitzienne si, pour tous $x,y in I$,
$
abs(f(x)-f(y))<=k abs(x-y),
quad k>=0.
$
Cela implique la continuité : pour $epsilon>0$, prendre
$
delta=epsilon/(k+1)>0.
$
Alors $abs(x-x_0)<delta$ entraîne
$
abs(f(x)-f(x_0))<=k abs(x-x_0)<epsilon.
$

Si $k<1$, l'inégalité précédente donne en outre une contraction stricte pour $x!=y$. *Attention :* l'hypothèse officielle de la question 2 ne demande pas une même constante $k<1$ valable partout.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Questions et hypothèses vérifiées dans TD03_continuite.pdf. Question 1 : démarche de la copie manuscrite du 2026-11-24, avec les deux justifications manquantes ajoutées. Photo 12242 : preuve par TVI, unicité, rappel de Lipschitz et premier contre-exemple. Photo 12244 : second contre-exemple avec calcul algébrique. Les conditions du théorème des accroissements finis sont explicitées.
]
