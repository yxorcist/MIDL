// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

Soient $F$ et $G$ deux sous-espaces vectoriels d'un même espace vectoriel $E$.

== 1. Montrer que $F inter G$ est un sous-espace vectoriel de $E$

Comme $F$ et $G$ sont des sous-espaces vectoriels,

$
0_E in F
quad "et" quad
0_E in G.
$

Donc

$
0_E in F inter G.
$

Soient $u,v in F inter G$ et $lambda in RR$.

Alors

$
u,v in F
quad "et" quad
u,v in G.
$

Comme $F$ et $G$ sont stables par combinaison linéaire,

$
lambda u+v in F
$

et

$
lambda u+v in G.
$

Donc

$
lambda u+v in F inter G.
$

Ainsi,

$
F inter G
$

est un sous-espace vectoriel de $E$.

== 2. Condition pour que $F union G$ soit un sous-espace vectoriel

Si

$
F subset.eq G,
$

alors

$
F union G=G,
$

qui est un sous-espace vectoriel.

De même, si

$
G subset.eq F,
$

alors

$
F union G=F,
$

qui est un sous-espace vectoriel.

Réciproquement, supposons que $F union G$ soit un sous-espace vectoriel et que

$
F in.not subset.eq G
quad "et" quad
G in.not subset.eq F.
$

Il existe alors

$
u in F
quad "avec" quad
u in.not G
$

et

$
v in G
quad "avec" quad
v in.not F.
$

Comme

$
u,v in F union G
$

et que $F union G$ est supposé être un sous-espace,

$
u+v in F union G.
$

Deux cas sont possibles.

Si

$
u+v in F,
$

alors, puisque $u in F$,

$
v=(u+v)-u in F,
$

contradiction.

Si

$
u+v in G,
$

alors, puisque $v in G$,

$
u=(u+v)-v in G,
$

contradiction.

Donc nécessairement

$
F subset.eq G
quad "ou" quad
G subset.eq F.
$

Ainsi,

$
F union G " est un sous-espace vectoriel"
" si et seulement si "
F subset.eq G " ou " G subset.eq F.
$
