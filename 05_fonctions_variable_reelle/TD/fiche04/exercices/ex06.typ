// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 6.
 // source-note: premier lot FVR, photos « Exercice 6 » : polynômes P_n, récurrence, limite des dérivées en 0.
// source-verification: signe et puissance dans P_(n+1)(X) recalculés par la règle de chaîne.
// source-reconstruction: récurrence complète pour l'existence et la continuité de toutes les dérivées en 0.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 6 — Une fonction plate en $0$

On considère
$
f(x)=e^(-1/x^2) quad "si" x!=0,
quad f(0)=0.
$

== 1. Dérivées sur $RR^*$ : écriture avec un polynôme

On veut montrer que, pour tout $n>=0$, il existe un polynôme $P_n$ tel que
$
forall x!=0,quad f^(n)(x)=P_n(1/x)e^(-1/x^2).
$

*Initialisation.* Pour $n=0$, on prend $P_0(X)=1$. La formule devient l'identité $f(x)=e^(-1/x^2)$.

*Hérédité.* Supposons la formule vraie à un rang $n$. Pour $x!=0$, la dérivation du produit donne
$
f^(n+1)(x)
&= -1/x^2 P_n'(1/x)e^(-1/x^2) \
&quad + P_n(1/x) 2/x^3 e^(-1/x^2) \
&= (-1/x^2 P_n'(1/x)+2/x^3 P_n(1/x)) e^(-1/x^2).
$

On définit alors le polynôme
$
P_(n+1)(X)=-X^2 P_n'(X)+2X^3 P_n(X).
$

La formule est donc vraie à l'ordre $n+1$. Par récurrence, elle vaut pour tout $n>=0$.

== 2. L'exponentielle domine toute puissance

Pour tout entier $k>=0$, on utilise
$
lim_(t->+infinity)t^k e^(-t^2)=0.
$

Ceci s'obtient, par exemple, en écrivant $e^(t^2)$ sous forme de série ou en utilisant le fait que l'exponentielle croît plus vite que toute puissance.

En posant $t=1/abs(x)$, on en déduit
$
lim_(x->0) P(1/x)e^(-1/x^2)=0
$
pour *tout polynôme* $P$, quelle que soit sa parité.

Il en résulte que, pour tout $n>=0$,
$
lim_(x->0, x!=0) f^(n)(x)=0.
$

== 3. Dérivabilité à tous les ordres en $0$

Montrons par récurrence que $f$ est $n$ fois dérivable en $0$ pour tout $n$, avec $f^(n)(0)=0$, et que $f^(n)$ est continue en $0$.

Pour $n=0$, $f(0)=0$ et la limite obtenue à la question 2 assure la continuité de $f$ en $0$.

Supposons $f^(n)(0)=0$ et $f^(n)$ continue sur $RR$. Le taux d'accroissement en $0$ est
$
(f^(n)(x)-f^(n)(0))/x
=1/x P_n(1/x)e^(-1/x^2).
$

Le membre de droite tend vers $0$, car $X P_n(X)$ est encore un polynôme. Ainsi $f^(n)$ est dérivable en $0$ avec
$
f^(n+1)(0)=0.
$

La limite de $f^(n+1)(x)$ pour $x->0$, $x!=0$, vaut elle aussi $0$, d'après la question 2 : la dérivée obtenue est *continue en $0$*.

La propriété est donc vraie à tout ordre. *Conclusion :*
$
f in C^infinity(RR)
quad "et" quad
forall n in NN, f^(n)(0)=0.
$

*Attention :* toutes les dérivées en $0$ sont nulles, mais $f(x)>0$ dès que $x!=0$ ; cette fonction n'est donc pas égale à sa série de Taylor au voisinage de $0$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Fiche officielle TD04, exercice 6. Les photos établissent l'idée de récurrence sur les polynômes et la domination exponentielle ; la preuve aux points de raccord est explicitée.
]
