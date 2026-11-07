// source-confidence: high
// source-note: TD03_continuite.pdf (UCA 2026-2027), exercice 8.
// source-note: photo 12242 (TVI, rappel k-Lipschitz, unicité, exemple x+e^(-x)) ; photo 12244 (exemple x+1/(x+1)).
// source-verification: la question 2 suppose |f(x)-f(y)|<|x-y| pour x!=y, sans constante uniforme k<1.
// source-reconstruction: continuité issue de l'inégalité stricte et arguments du TAF précisés ; les deux exemples sont sans point fixe.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 8 — Existence et unicité de points fixes

Un *point fixe* de $f$ est un réel $c$ tel que $f(c)=c$.

== 1. Une application continue de $[a,b]$ dans $[a,b]$ possède un point fixe

Soit $f:[a,b]->[a,b]$ continue. On pose
$
g(x)=f(x)-x.
$
La fonction $g$ est continue sur $[a,b]$.

Puisque $f(a) in [a,b]$ et $f(b) in [a,b]$,
$
g(a)=f(a)-a>=0,
quad
g(b)=f(b)-b<=0.
$

Ainsi $0$ est compris entre $g(a)$ et $g(b)$. Par le *théorème des valeurs intermédiaires*, il existe $c in [a,b]$ tel que
$
g(c)=0
quad <=> quad
f(c)=c.
$
La fonction $f$ admet donc au moins un point fixe.

== 2. L'inégalité stricte garantit un unique point fixe

Supposons désormais que $f:[a,b]->[a,b]$ vérifie, pour $x!=y$,
$
abs(f(x)-f(y))<abs(x-y).
$

*Existence.* Pour $x!=y$, l'inégalité implique
$
abs(f(x)-f(y))<=abs(x-y).
$
Elle reste vraie pour $x=y$ ; ainsi $f$ est $1$-Lipschitzienne, donc continue. La question 1 fournit au moins un point fixe.

*Unicité.* Raisonnons par l'absurde : supposons qu'il existe deux points fixes distincts $x_0$ et $y_0$. Alors
$
abs(x_0-y_0)
=abs(f(x_0)-f(y_0))
<abs(x_0-y_0),
$
ce qui est impossible. *Le point fixe est donc unique.*

=== Rappel de la copie : condition $k$-Lipschitz

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

== 3. Sur $RR_+$, l'inégalité stricte ne garantit pas l'existence

*Premier exemple de la copie.* Pour $x>=0$, posons
$
f(x)=x+e^(-x).
$
Alors $f:RR_+->RR_+$ et
$
f'(x)=1-e^(-x).
$
Pour tout $x>=0$, $0<=f'(x)<1$. Si $0<=x<y$, le théorème des accroissements finis donne un $c in ]x,y[$ tel que
$
f(y)-f(x)=f'(c)(y-x).
$
Donc
$
abs(f(y)-f(x))<abs(y-x).
$
Mais $e^(-x)>0$ pour tout $x$, donc $f(x)>x$ : *aucun point fixe*.

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

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Questions et hypothèses vérifiées dans TD03_continuite.pdf. Photo 12242 : preuve par TVI, unicité, rappel de Lipschitz et premier contre-exemple. Photo 12244 : second contre-exemple avec calcul algébrique. Les conditions du théorème des accroissements finis sont explicitées.
]
