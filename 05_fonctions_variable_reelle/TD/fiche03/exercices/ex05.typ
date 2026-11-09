// source-confidence: high
// source-note: énoncé officiel TD03, exercice 5 ; démonstration fidèle à la copie manuscrite validée le 2026-11-09.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 5

Soit $I$ un intervalle et $f:I -> RR$ continue telle que

$
forall x in I, quad f(x)^2=1.
$

Montrer que $f$ est constante.

== Correction — Par l'absurde

Par hypothèse,

$
forall x in I, quad f(x) in \{-1,1\}.
$

Supposons $f$ non constante. Alors il existe $a,b in I$ tels que $f(a) != f(b)$. Quitte à échanger $a$ et $b$, on pose

$
f(a)=-1 quad "et" quad f(b)=1.
$

Comme $f$ est continue sur l'intervalle $I$ et que $-1<0<1$, par le théorème des valeurs intermédiaires,

$
exists c in I, quad f(c)=0.
$

Mais

$
f(c)^2=0 !=1,
$

ce qui contredit l'hypothèse.

Donc $f$ est constante sur $I$.
