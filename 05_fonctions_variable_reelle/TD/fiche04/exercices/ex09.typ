// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 9.
 // source-note: premier lot FVR, photo des encadrements de sin x avec Taylor–Lagrange entre 0 et x.
// source-verification: choix des ordres 2/4 pour sinus et 1/3 pour cosinus afin de conserver les inégalités sur tout R+.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 9 — Encadrements de sinus et cosinus

On souhaite montrer que, pour tout $x>=0$,
$
x-x^3/6<=sin x<=x-x^3/6+x^5/120,
$
et
$
1-x^2/2<=cos x<=1-x^2/2+x^4/24.
$

On utilisera *la formule de Taylor–Lagrange entre $0$ et $x$* :
$
h(x)=sum_(k=0)^n (h^(k)(0)/k!) x^k
+ h^(n+1)(c)/(n+1)! x^(n+1),
$
où $c in ]0,x[$ si $x>0$.

== 1. Encadrement de $sin x$

=== Minoration : Taylor à l'ordre $2$

Pour $x>0$, il existe $c in ]0,x[$ tel que
$
sin x=x-(cos c)x^3/6.
$

Puisque $cos c<=1$ et $x^3>=0$,
$
-(cos c)x^3/6>=-x^3/6.
$
D'où
$
sin x>=x-x^3/6.
$

=== Majoration : Taylor à l'ordre $4$

Pour un autre $c in ]0,x[$, la formule donne
$
sin x=x-x^3/6+(cos c)x^5/120.
$

Comme $cos c<=1$ et $x^5>=0$,
$
sin x<=x-x^3/6+x^5/120.
$

En $x=0$, les deux inégalités sont des égalités. Ainsi, pour tout $x>=0$,
$
x-x^3/6<=sin x<=x-x^3/6+x^5/120.
$

== 2. Encadrement de $cos x$

=== Minoration : Taylor à l'ordre $1$

Pour $x>0$, il existe $c in ]0,x[$ tel que
$
cos x=1-(cos c)x^2/2.
$

Comme $cos c<=1$ et $x^2>=0$,
$
cos x>=1-x^2/2.
$

=== Majoration : Taylor à l'ordre $3$

La formule de Taylor–Lagrange à l'ordre $3$ donne, avec un nouveau $c in ]0,x[$,
$
cos x=1-x^2/2+(cos c)x^4/24.
$

Avec $cos c<=1$ et $x^4>=0$,
$
cos x<=1-x^2/2+x^4/24.
$

L'inégalité reste vraie pour $x=0$. Finalement,
$
forall x>=0,
quad 1-x^2/2<=cos x<=1-x^2/2+x^4/24.
$

== Pourquoi ne pas choisir les mêmes ordres ?

Les dérivées de sinus et de cosinus alternent en signe. Pour obtenir *une borne inférieure*, il faut que le reste de Taylor ait un signe contrôlable dans le bon sens ; pour une borne supérieure, il faut le signe inverse.

Ici, le fait élémentaire $cos c<=1$, combiné à $x^k>=0$ sur $RR_+$, permet de choisir des ordres adaptés. Cette démonstration reste valable même si $x$ est grand : elle ne suppose pas $cos c>=0$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Fiche officielle TD04, exercice 9 et notes manuscrites sur Taylor–Lagrange. Le choix d'ordres différents pour les bornes a été vérifié pour que les encadrements soient globaux sur $RR_+$.
]
