#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 3

Montrons que, pour tout $n >= 1$,

$
sum_(i=1)^n i dot i! = (n+1)!-1.
$

== Initialisation

Pour $n=1$,

$
sum_(i=1)^1 i dot i!
=1 times 1!
=1
=2!-1.
$

La propriété est vraie au rang $1$.

== Hérédité

Supposons que, pour un certain $n >= 1$,

$
sum_(i=1)^n i dot i! = (n+1)!-1.
$

Montrons que

$
sum_(i=1)^(n+1) i dot i! = (n+2)!-1.
$

On a

$
sum_(i=1)^(n+1) i dot i!
=
sum_(i=1)^n i dot i!
+(n+1)(n+1)!.
$

Par hypothèse de récurrence,

$
= (n+1)!-1+(n+1)(n+1)!
$

$
= (n+2)(n+1)!-1
$

$
= (n+2)!-1.
$

La propriété est donc vraie au rang $n+1$.

Par récurrence,

$
forall n >= 1, quad
sum_(i=1)^n i dot i! = (n+1)!-1.
$
