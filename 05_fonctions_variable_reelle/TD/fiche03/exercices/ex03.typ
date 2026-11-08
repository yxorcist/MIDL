// source-confidence: high
// source-note: TD03 exercice 3 et bonus ; preuves adaptées aux copies manuscrites validées le 2026-11-08.
// source-verification: la continuité donne f(r_n)->f(x) et la relation sur QQ donne f(r_n)=A r_n->A x.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3

== Question 1 — Densité et continuité

Soit $f:RR -> RR$ continue, avec $f(r)=A r$ pour tout $r in QQ$, où $A in RR$.

Soit $x in RR$. Par densité de $QQ$ dans $RR$, il existe une suite $(r_n) subset.eq QQ$ telle que $r_n -> x$.

Par hypothèse, $f(r_n)=A r_n$.

Par continuité, $f(r_n)->f(x)$, et comme $r_n->x$, on a $A r_n->A x$.

Par unicité de la limite,

$
f(x)=A x, quad forall x in RR.
$

== Bonus — Fonction additive continue

Soit $f:RR -> RR$ continue et additive :

$
forall x,y in RR, quad f(x+y)=f(x)+f(y).
$

Posons $A=f(1)$.

*Entiers.* Par additivité, $f(0)=0$ et $f(-x)=-f(x)$. Pour tout $z in ZZ$,

$
f(z)=z A.
$

*Rationnels.* Soit $r=p/q$ avec $p in ZZ$ et $q in NN^*$.

Par additivité,

$
q f(p/q)=f(p)=p A.
$

Donc

$
f(r)=frac(p A,q)=r A, quad forall r in QQ.
$

*Réels.* Soit $x in RR$. Par densité de $QQ$ dans $RR$, il existe $(r_n) subset.eq QQ$ telle que $r_n->x$.

D'après le résultat établi sur $QQ$,

$
f(r_n)=A r_n.
$

Par continuité, $f(r_n)->f(x)$ ; et, comme $r_n->x$, on a $A r_n->A x$.

Par unicité de la limite,

$
f(x)=A x, quad forall x in RR.
$
