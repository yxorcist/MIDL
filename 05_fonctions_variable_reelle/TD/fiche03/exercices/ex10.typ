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

$f$ est dérivable sur $]0,+infinity[$, et
$
f'(x)
&= (x/2+1/x)' \
&= (x/2)' + (1/x)' \
&= 1/2-1/x^2 \
&= (x^2-2)/(2x^2) \
&= (x-sqrt(2))(x+sqrt(2))/(2x^2).
$

Sur $]0,+infinity[$, $2x^2>0$ et $x+sqrt(2)>0$. Donc :

- Pour $0<x<sqrt(2)$, $f'(x)<0$ : $f$ décroît.
- Pour $x=sqrt(2)$, $f'(sqrt(2))=0$.
- Pour $x>sqrt(2)$, $f'(x)>0$ : $f$ croît.

À la racine $sqrt(2)$ de $f'$, on calcule :
$
f(sqrt(2))
&= sqrt(2)/2+1/sqrt(2) \
&= 1/sqrt(2)+1/sqrt(2) \
&= 2/sqrt(2) \
&= sqrt(2).
$

(On remarque aussi que $f(sqrt(2))=sqrt(2)$ : c'est un point fixe.)

Aux bornes du domaine,
$
lim_(x->0^+) f(x)=lim_(x->0^+)(x/2+1/x)=+infinity,
$
$
lim_(x->+infinity) f(x)=lim_(x->+infinity)(x/2+1/x)=+infinity.
$

Ainsi, $sqrt(2)$ est le *minimum global* de $f$ :
$
min f=sqrt(2), quad forall x>0, f(x)>=sqrt(2).
$

En conclusion, $f$ décroît sur $]0,sqrt(2)]$ puis croît sur $[sqrt(2),+infinity[$.

On étudie ensuite le signe de $f(x)-x$ :
$
f(x)-x
&= x/2+1/x-x \
&= 1/x-x/2 \
&= (2-x^2)/(2x) \
&= (sqrt(2)-x)(sqrt(2)+x)/(2x).
$

Comme $x>0$ :

- Pour $0<x<sqrt(2)$, $f(x)-x>0$.
- Pour $x=sqrt(2)$, $f(x)-x=0$.
- Pour $x>sqrt(2)$, $f(x)-x<0$.

== 2. Montrer que $(x_n)_(n>=1)$ décroît et converge vers $sqrt(2)$

On part de la relation
$
x_(n+1)-x_n=f(x_n)-x_n.
$

D'après la question 1, on a
$
min f=sqrt(2), quad forall x>0, f(x)>=sqrt(2).
$

Donc on cherche à établir
$
forall n>=1, quad x_n>=sqrt(2).
$

On pose $x_0>0$. Comme $f(x)>=sqrt(2)$ pour tout $x>0$ et que $x_1=f(x_0)$, alors
$
x_1>=sqrt(2).
$

Les termes suivants sont eux aussi des images par $f$ de nombres strictement positifs ; ainsi
$
forall n>=1, quad x_n>=sqrt(2).
$

On sait, d'après la question 1, que $f(x)-x<=0$ sur $[sqrt(2),+infinity[$. Comme $x_n>=sqrt(2)$ pour $n>=1$,
$
x_(n+1)-x_n=f(x_n)-x_n<=0 quad "pour tout" n>=1.
$

Ainsi, $(x_n)_(n>=1)$ est *minorée par $sqrt(2)$ et décroissante*. Par le théorème de convergence des suites monotones, il existe $ell>=sqrt(2)$ tel que
$
lim_(n->+infinity) x_n=ell.
$

Comme $f$ est continue sur $]0,+infinity[$ et $ell>0$, on peut passer à la limite dans la relation de récurrence :
$
ell=f(ell)=ell/2+1/ell.
$

On reprend l'équation et on la résout :
$
ell &= ell/2+1/ell \
1/ell &= ell/2 \
2/ell &= ell \
2 &= ell^2.
$

Comme $ell>=sqrt(2)>0$, on retient $ell=sqrt(2)$.

Donc
$
lim_(n->+infinity) x_n=sqrt(2).
$

== 3. Majorer $x_n-sqrt(2)$

Soient $x$ et $y$ tels que $sqrt(2)<=x<=y$.

On veut montrer :
$
0<=f(y)-f(x)<=1/2(y-x).
$

On commence par simplifier $f(y)-f(x)$ :
$
f(y)-f(x)
&=y/2+1/y-x/2-1/x \
&=(y-x)/2+(x-y)/(x y) \
&=(y-x)(1/2-1/(x y)).
$

Comme $sqrt(2)<=x<=y$, on sait que $x y>=2$ et $y-x>=0$.

Puisque $x y>=2$ et $x y>0$, on obtient :
$
0<=1/2-1/(x y)<=1/2.
$

Comme $y-x>=0$, on multiplie cet encadrement par $y-x$ :
$
0<=(y-x)(1/2-1/(x y))<=1/2(y-x).
$

Or $(y-x)(1/2-1/(x y))=f(y)-f(x)$. Donc :
$
0<=f(y)-f(x)<=1/2(y-x).
$

On pose maintenant $y=x_n$ et $x=sqrt(2)$. C'est possible pour tout $n>=1$, car la question 2 donne $x_n>=sqrt(2)$.

On obtient alors :
$
0<=f(x_n)-f(sqrt(2))<=1/2(x_n-sqrt(2)).
$

Comme $f(x_n)=x_(n+1)$ et $f(sqrt(2))=sqrt(2)$ :
$
0<=x_(n+1)-sqrt(2)<=1/2(x_n-sqrt(2))
quad "pour tout" n>=1.
$

*Récurrence.* On veut montrer que, pour tout $n>=1$, la propriété suivante est vraie :
$
P(n): quad 0<=x_n-sqrt(2)<=(1/2)^(n-1)(x_1-sqrt(2)).
$

*Initialisation.* Au rang $n=1$ :
$
0<=x_1-sqrt(2)<=(1/2)^0(x_1-sqrt(2))=x_1-sqrt(2).
$
C'est vrai puisque $x_1>=sqrt(2)$. Donc $P(1)$ est vraie.

*Hérédité.* Supposons $P(n)$ vraie pour un entier $n>=1$. Montrons $P(n+1)$.

On sait, grâce à l'encadrement obtenu plus haut, que :
$
0<=x_(n+1)-sqrt(2)<=1/2(x_n-sqrt(2)).
$

Par hypothèse de récurrence :
$
0<=x_n-sqrt(2)<=(1/2)^(n-1)(x_1-sqrt(2)).
$

On multiplie cette inégalité par $1/2>0$ :
$
0<=1/2(x_n-sqrt(2))
&<=1/2 (1/2)^(n-1)(x_1-sqrt(2)) \
&=(1/2)^n(x_1-sqrt(2)).
$

Donc, par *transitivité* des inégalités :
$
0<=x_(n+1)-sqrt(2)
&<=1/2(x_n-sqrt(2)) \
&<=(1/2)^n(x_1-sqrt(2)).
$

C'est exactement $P(n+1)$.

*Conclusion.* Puisque $P(1)$ est vraie et que $P(n)$ entraîne $P(n+1)$, on conclut par récurrence :
$
forall n>=1, quad
0<=x_n-sqrt(2)<=(1/2)^(n-1)(x_1-sqrt(2)).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Photo 12248 : dérivée, tableaux de signe et de variation. Photos 12250 et 12253 : monotonie, minoration, point fixe et calcul de $f(y)-f(x)$. Photo 12257 : initialisation, hérédité et majoration finale. Les étapes et les indices sont vérifiés à partir de l'énoncé officiel.
]
