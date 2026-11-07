// source-confidence: high
// source-note: TD03_continuite.pdf (UCA 2026-2027), exercice 9 (contrôle continu octobre 2022).
// source-note: photo 12244 (questions 1-2), photo 12248 (question 3 et unicité).
// source-reconstruction: signe de g aux extrémités puis TVI et justification de l'unicité explicités.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 9 — Point fixe d'une fonction décroissante

On suppose que $f:RR->RR$ est *continue et décroissante*. On définit
$
g(x)=f(x)-x.
$

== 1. Minoration et majoration de $f$

Si $x in ]-infinity,0]$, alors $x<=0$. La décroissance de $f$ entraîne
$
f(x)>=f(0).
$
Donc $f$ est *minorée* par $f(0)$ sur $]-infinity,0]$.

Si $x in [0,+infinity[$, alors $x>=0$ et
$
f(x)<=f(0).
$
Donc $f$ est *majorée* par $f(0)$ sur $[0,+infinity[$.

== 2. Sens de variation et limites de $g$

Soient $x<y$. Comme $f$ est décroissante,
$
f(x)>=f(y).
$
De plus $-x>-y$, d'où, en additionnant,
$
f(x)-x>f(y)-y.
$
Autrement dit,
$
g(x)>g(y).
$
Ainsi $g$ est *strictement décroissante* (même si $f$ n'est pas strictement décroissante).

Pour $x<=0$, la première question donne
$
g(x)=f(x)-x>=f(0)-x.
$
Or
$
lim_(x->-infinity)(f(0)-x)=+infinity.
$
Par comparaison,
$
box(lim_(x->-infinity) g(x)=+infinity.)
$

De même, pour $x>=0$,
$
g(x)=f(x)-x<=f(0)-x.
$
Comme $f(0)-x->-infinity$ lorsque $x->+infinity$, on obtient
$
box(lim_(x->+infinity) g(x)=-infinity.)
$

La fonction $g$ est continue comme différence de deux fonctions continues.

== 3. En déduire que $f$ admet un unique point fixe

Puisque $g(x)->+infinity$ quand $x->-infinity$, il existe $a in RR$ tel que $g(a)>0$.

Puisque $g(x)->-infinity$ quand $x->+infinity$, on peut choisir $b>a$ tel que $g(b)<0$.

La continuité de $g$ sur $[a,b]$ et le *théorème des valeurs intermédiaires* fournissent un $c in [a,b]$ tel que
$
g(c)=0
quad <=> quad
f(c)=c.
$

Ce point fixe est unique : si $c<d$ étaient deux points fixes, la stricte décroissance de $g$ imposerait
$
g(c)>g(d),
$
alors que $g(c)=g(d)=0$. Contradiction.

Donc *$f$ admet un unique point fixe sur $RR$*.

== Méthode à retenir

Pour une fonction $f$ continue et décroissante sur $RR$, la fonction $g=f-"id"$ est strictement décroissante ; ses limites en $-infinity$ et $+infinity$ permettent d'appliquer le TVI, puis sa stricte décroissance donne l'unicité.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Photo 12244 : majoration/minoration, stricte décroissance et limites de $g$. Photo 12248 : encadrement de $0$, TVI et unicité. L'énoncé a été vérifié dans TD03_continuite.pdf.
]
