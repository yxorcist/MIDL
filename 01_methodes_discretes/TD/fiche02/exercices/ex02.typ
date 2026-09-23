#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 2

Soient $a,b in NN$ tels que

$
a-b=m in NN.
$

Montrons que, pour tout $n in NN$,

$
m divides (a^n-b^n).
$

== Initialisation

Pour $n=0$,

$
a^0-b^0=0,
$

donc $m$ divise $a^0-b^0$.

== Hérédité

Supposons la propriété vraie au rang $n$ : il existe $K in ZZ$ tel que

$
a^n-b^n=K m.
$

Montrons qu'elle est vraie au rang $n+1$.

$
a^(n+1)-b^(n+1)
= a(a^n-b^n)+b^n(a-b).
$

Par hypothèse de récurrence,

$
a^n-b^n=K m,
$

et, par hypothèse,

$
a-b=m.
$

Ainsi,

$
a^(n+1)-b^(n+1)
= a K m+b^n m
= m(a K+b^n).
$

Donc

$
m divides (a^(n+1)-b^(n+1)).
$

Par récurrence,

$
forall n in NN, quad m divides (a^n-b^n).
$
