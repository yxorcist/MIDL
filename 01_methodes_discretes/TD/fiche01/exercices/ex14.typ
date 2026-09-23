#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 14 — Inégalité triangulaire

Montrons que, pour tous $x,y in RR$,

$
abs(x+y) <= abs(x)+abs(y).
$

On compare les carrés :

$
abs(x+y)^2
=
(x+y)^2
=
x^2+y^2+2 x y.
$

Comme

$
2 x y <= 2 abs(x) abs(y),
$

on obtient

$
abs(x+y)^2
<=
abs(x)^2+abs(y)^2+2 abs(x) abs(y)
=
(abs(x)+abs(y))^2.
$

Les deux membres étant positifs,

$
sqrt(abs(x+y)^2)
<=
sqrt((abs(x)+abs(y))^2).
$

Donc

$
abs(x+y)
<=
abs(x)+abs(y).
$

Les notes rappellent également que, pour tout $x in RR$,

$
abs(x)=sqrt(x^2).
$
