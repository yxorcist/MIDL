// source-confidence: high
// source-note: TD03_continuite.pdf (UCA 2026-2027), exercice 10.
// source-note: photos 12248 (variation), 12250 (itération et estimation), 12253 (autre preuve de convergence), 12257 (récurrence explicite).
// source-verification: f(x)=x/2+1/x, minimum sqrt(2), et 0<=f(y)-f(x)<=1/2(y-x) pour sqrt(2)<=x<=y.
// source-reconstruction: justification détaillée du passage à la limite et indices de la récurrence.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 10 — Itération vers $sqrt(2)$

On considère
$
f:RR_+^* -> RR_+^*,
quad
f(x)=x/2+1/x,
$
et une suite définie par $x_0>0$ et
$
x_(n+1)=f(x_n)
quad (n>=0).
$

== 1. Variations de $f$ et signe de $f(x)-x$

La fonction $f$ est dérivable sur $]0,+infinity[$ et
$
f'(x)
&=1/2-1/x^2 \
&=(x+sqrt(2))(x-sqrt(2))/(2x^2).
$

Le dénominateur est strictement positif et $x+sqrt(2)>0$. Ainsi :

- $f'(x)<0$ pour $0<x<sqrt(2)$ ;
- $f'(sqrt(2))=0$ ;
- $f'(x)>0$ pour $x>sqrt(2)$.

La fonction $f$ décroît sur $]0,sqrt(2)]$ puis croît sur $[sqrt(2),+infinity[$. De plus,
$
lim_(x->0^+)f(x)=+infinity,
quad
lim_(x->+infinity)f(x)=+infinity
$
et
$
f(sqrt(2))=sqrt(2).
$

Elle admet donc le minimum global $sqrt(2)$ :
$
forall x>0, quad f(x)>=sqrt(2).
$

Étudions maintenant le signe de $f(x)-x$ :
$
f(x)-x
&=1/x-x/2 \
&=(2-x^2)/(2x) \
&=(sqrt(2)-x)(sqrt(2)+x)/(2x).
$

On en déduit
$
cases(
  f(x)-x>0 & "si" 0<x<sqrt(2),
  f(x)-x=0 & "si" x=sqrt(2),
  f(x)-x<0 & "si" x>sqrt(2).
)
$

== 2. Montrer que $(x_n)_(n>=1)$ décroît et converge vers $sqrt(2)$

Comme $x_0>0$, le minimum établi à la question 1 donne
$
x_1=f(x_0)>=sqrt(2).
$

Plus généralement, $f$ prend ses valeurs dans $[sqrt(2),+infinity[$ ; par récurrence,
$
forall n>=1,quad x_n>=sqrt(2).
$

Sur cet intervalle, $f(x)-x<=0$. Pour tout $n>=1$,
$
x_(n+1)-x_n=f(x_n)-x_n<=0.
$
Ainsi $(x_n)_(n>=1)$ est *décroissante* et *minorée par $sqrt(2)$*. Le théorème de convergence monotone donne une limite
$
ell=lim_(n->infinity)x_n>=sqrt(2).
$

La fonction $f$ est continue en $ell>0$. En passant à la limite dans $x_(n+1)=f(x_n)$,
$
ell=f(ell)=ell/2+1/ell.
$
On résout :
$
ell/2=1/ell
quad => quad
ell^2=2.
$
Comme $ell>0$, on obtient
$
lim_(n->infinity) x_n=sqrt(2)
$

*Autre méthode indiquée dans la copie.* Après avoir montré $x_n>=sqrt(2)$, on utilise directement le signe de $f(x)-x$ pour obtenir la décroissance, puis la continuité de $f$ pour identifier sa limite. Elle conduit à la même équation de point fixe.

== 3. Majorer $x_n-sqrt(2)$

=== Encadrement de $f(y)-f(x)$

Soient $sqrt(2)<=x<=y$. Un calcul direct donne
$
f(y)-f(x)
&=y/2+1/y-x/2-1/x \
&=(y-x)/2+(x-y)/(x y) \
&=(y-x)(1/2-1/(x y)).
$

Puisque $x y>=2$,
$
0<=1/2-1/(x y)<=1/2.
$
Comme $y-x>=0$, on a
$
0<=f(y)-f(x)<=1/2(y-x)
$

En particulier, puisque $f(sqrt(2))=sqrt(2)$ et $x_n>=sqrt(2)$, on peut prendre $x=sqrt(2)$ et $y=x_n$ :
$
0<=x_(n+1)-sqrt(2)<=1/2 (x_n-sqrt(2))
quad (n>=1).
$

=== Récurrence sur le nombre d'itérations

Montrons que, pour tout $n>=1$,
$
abs(x_n-sqrt(2)) <= (1/2)^(n-1) abs(x_1-sqrt(2)).
$

*Initialisation.* Pour $n=1$, l'inégalité devient
$
abs(x_1-sqrt(2))<=abs(x_1-sqrt(2)),
$
ce qui est vrai.

*Hérédité.* Supposons l'inégalité vraie au rang $n>=1$. Alors
$
abs(x_(n+1)-sqrt(2))
&=abs(f(x_n)-f(sqrt(2))) \
&<=1/2 abs(x_n-sqrt(2)) \
&<=1/2 (1/2)^(n-1) abs(x_1-sqrt(2)) \
&=(1/2)^n abs(x_1-sqrt(2)).
$

L'inégalité est donc vraie au rang $n+1$.

*Conclusion.* Pour tout $n>=1$,
$
0<=x_n-sqrt(2)<=(1/2)^(n-1)(x_1-sqrt(2))
$

Cette majoration donne aussi une convergence géométrique vers $sqrt(2)$, indépendamment de l'argument de convergence monotone.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Photo 12248 : dérivée, tableaux de signe et de variation. Photos 12250 et 12253 : monotonie, minoration, point fixe et calcul de $f(y)-f(x)$. Photo 12257 : initialisation, hérédité et majoration finale. Les étapes et les indices sont vérifiés à partir de l'énoncé officiel.
]
