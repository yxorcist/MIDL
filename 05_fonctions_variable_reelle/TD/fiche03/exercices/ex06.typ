// source-confidence: high
// source-note: énoncé officiel TD03_continuite.pdf, exercice 6 ; preuve adaptée à la copie manuscrite validée le 2026-11-09.
// study-validation: valeurs g(0), g(30), continuité et application du TVI.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 6

Raymond parcourt $80$ km entre 8 h et 9 h. Montrer qu'il existe une demi-heure pendant laquelle il parcourt exactement $40$ km.

Soit $f:[0,60]->RR$ la distance parcourue après $t$ minutes, supposée continue, avec $f(0)=0$ et $f(60)=80$.

Posons, pour $t in [0,30]$,

$
g(t)=f(t+30)-f(t).
$

On calcule :

$
g(0)&=f(30)-f(0)=f(30),\
g(30)&=f(60)-f(30)=80-f(30).
$

Donc

$
g(0)+g(30)=80.
$

*Cas :* Si $g(0)>=40$, alors $g(30)<=40$. Si $g(0)<=40$, alors $g(30)>=40$. Dans tous les cas, $40$ est entre $g(0)$ et $g(30)$.

Comme $g$ est continue sur $[0,30]$ (différence de fonctions continues), par le théorème des valeurs intermédiaires,

$
exists c in [0,30], quad g(c)=40.
$

Ainsi,

$
f(c+30)-f(c)=40.
$

Raymond a donc parcouru $40$ km pendant la demi-heure $[c,c+30]$.
