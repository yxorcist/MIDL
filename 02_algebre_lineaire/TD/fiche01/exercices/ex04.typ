#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

$E$ est un $K$-espace vectoriel, et $F,G$ sont des SEV de $E$.

== 1. $F inter G$ est-il un SEV ?

Comme $F,G$ sont des SEV, par définition :

$
0_E in F, quad 0_E in G.
$

Alors $0_E in F inter G$.

Prenons $u,v in F inter G$, $lambda in K$.

Par définition, $F$ et $G$ sont stables par addition et multiplication scalaire.

Donc :

$
lambda u + v in F
quad "et" quad
lambda u + v in G.
$

Alors $lambda u + v in F inter G$.

Donc $F inter G$ est un SEV de $E$.

== 2. $F union G$ est-il un SEV ?

Montrons que $F union G$ est un SEV si et seulement si $F subset.eq G$ ou $G subset.eq F$.

Si $F subset.eq G$, alors $F union G = G$, qui est un SEV par définition. Réciproquement pour $G subset.eq F$.

Supposons maintenant que ni $F subset.eq G$, ni $G subset.eq F$.

Il existe donc $u in F$ avec $u in.not G$, et $v in G$ avec $v in.not F$.

Supposons que $F union G$ soit un SEV.

Comme $u,v in F union G$, on a $u+v in F union G$.

Deux cas sont possibles : $u+v in F$ ou $u+v in G$.

Sans perte de généralité, supposons $u+v in F$.

Alors, comme $u in F$ et que $F$ est stable par addition et passage à l'opposé :

$
v = (u+v)-u in F,
$

contradiction avec $v in.not F$.

Le cas $u+v in G$ est symétrique.

Donc :

$
F union G " est un SEV"
quad ⇔ quad
F subset.eq G " ou " G subset.eq F.
$
