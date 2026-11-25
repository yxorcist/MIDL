// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 8.
 // source-note: premier lot FVR, photos « Exercice 8 » : dérivées de g, régularité de f, majoration de f' et suite contractante.
// source-verification: g'=(x-1)e^x+1 ; g''=x e^x ; f''=e^x g/(e^x-1)^3.
// source-reconstruction: monotonie de f' et argument d'accroissements finis rédigés intégralement.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 8 — Dérivée bornée et itération contractante

Soient $f,g:RR_+->RR$ définies par
$
g(x)=(x-2)e^x+x+2,
$
$
f(x)=x/(e^x-1) quad "si" x>0,
quad f(0)=1.
$

== 1. Montrer que $g(x)>=0$ sur $RR_+$

Sur $RR_+$, $g$ est deux fois dérivable et
$
g'(x)=(x-1)e^x+1,
quad
g''(x)=x e^x.
$

Comme $x>=0$, on a $g''(x)>=0$ : $g'$ est croissante.

Or
$
g'(0)=-1+1=0,
quad
g(0)=-2+2=0.
$

Donc $g'(x)>=0$ pour tout $x>=0$, ce qui rend $g$ croissante sur $RR_+$. Par suite,
$
forall x>=0,quad g(x)>=g(0)=0.
$

== 2. Montrer que $f$ est de classe $C^1$ ; calculer $f'(0)$

Pour $x>0$, les opérations usuelles donnent
$
f'(x)=(e^x-1-x e^x)/(e^x-1)^2.
$

La fonction est continue en $0$, car $e^x-1 sim x$, donc
$
lim_(x->0^+)x/(e^x-1)=1=f(0).
$

Développons l'exponentielle :
$
e^x-1=x+x^2/2+o(x^2).
$
Ainsi
$
f(x)=1/(1+x/2+o(x))=1-x/2+o(x).
$

Le taux d'accroissement en $0$ admet donc la limite
$
f'(0)=lim_(x->0^+)(f(x)-1)/x=-1/2.
$

Pour la continuité de $f'$, le développement d'ordre $3$,
$
e^x=1+x+x^2/2+x^3/6+o(x^3),
$
montre que
$
e^x-1-x e^x=-x^2/2+o(x^2),
quad
(e^x-1)^2=x^2+o(x^2).
$
Donc $lim_(x->0^+)f'(x)=-1/2=f'(0)$.

La fonction est *de classe $C^1$ sur $RR_+$*.

== 3. Montrer que $abs(f'(x))<=1/2$

Pour $x>0$, une dérivation supplémentaire et une simplification donnent
$
f''(x)=e^x ((x-2)e^x+x+2)/(e^x-1)^3
=e^x g(x)/(e^x-1)^3.
$

D'après la question 1, $g(x)>=0$, et le dénominateur est positif sur $]0,+infinity[$. Ainsi $f''(x)>=0$ et *$f'$ est croissante* sur cet intervalle.

D'autre part, le numérateur de $f'$ s'écrit
$
N(x)=e^x-1-x e^x.
$
On a $N(0)=0$ et
$
N'(x)=-x e^x<0 quad "pour" x>0.
$
Donc $N(x)<0$ pour $x>0$, d'où $f'(x)<0$.

Comme $f'$ est croissante et $f'(0)=-1/2$, on obtient
$
-1/2<=f'(x)<=0
quad "pour tout" x>=0.
$
Ainsi
$
forall x>=0,quad abs(f'(x))<=1/2.
$

== 4. Suite définie par $u_(n+1)=f(u_n)$

La suite part de $u_0=0$. Comme $f(x)>0$ pour $x>=0$, les termes restent dans $RR_+$.

On observe que
$
f(ln 2)= (ln 2)/(e^(ln 2)-1)=ln 2.
$
Ainsi $ell=ln 2$ est un *point fixe* de $f$.

Par le *théorème des accroissements finis*, pour deux réels $x,y>=0$, la majoration de la question 3 fournit
$
abs(f(x)-f(y))<=1/2 abs(x-y).
$

En choisissant $x=u_n$ et $y=ell$, on obtient
$
abs(u_(n+1)-ell)
=abs(f(u_n)-f(ell))
<=1/2 abs(u_n-ell).
$

Par récurrence,
$
abs(u_n-ell)<= (1/2)^n abs(u_0-ell).
$

Puisque $u_0=0$ et $ell=ln 2$,
$
forall n in NN,
quad abs(u_n-ln 2)<= (ln 2)/2^n.
$

La convergence de $(u_n)$ vers $ln 2$ est donc *géométrique*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Énoncé officiel TD04, exercice 8 et calculs manuscrits du premier lot FVR. La dérivée en $0$, la majoration de $f'$ et la récurrence sont reconstruites avec toutes les limites nécessaires.
]
