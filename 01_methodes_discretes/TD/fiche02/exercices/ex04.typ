#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 4

Montrons que, pour tout $n >= 1$,

$
5 divides (2^(2n-1)+3^(2n-1)).
$

== Initialisation

Pour $n=1$,

$
2^(2 times 1-1)+3^(2 times 1-1)
=2+3
=5.
$

La propriété est vraie au rang $1$.

== Hérédité

Supposons que

$
5 divides (2^(2n-1)+3^(2n-1)).
$

Montrons que

$
5 divides (2^(2(n+1)-1)+3^(2(n+1)-1)).
$

On a

$
2^(2(n+1)-1)+3^(2(n+1)-1)
=
4 dot 2^(2n-1)+9 dot 3^(2n-1).
$

On regroupe les termes sous la forme

$
4(2^(2n-1)+3^(2n-1))
+5 dot 3^(2n-1).
$

Le premier terme est divisible par $5$ par hypothèse de récurrence, et le second est manifestement divisible par $5$.

Donc

$
5 divides (2^(2(n+1)-1)+3^(2(n+1)-1)).
$

Par récurrence,

$
forall n >= 1, quad
5 divides (2^(2n-1)+3^(2n-1)).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Mise au propre.* L'étape algébrique des notes manuscrites a été regroupée sous la forme équivalente
  $4(2^(2n-1)+3^(2n-1))+5 dot 3^(2n-1)$ afin de rendre explicite l'utilisation de l'hypothèse de récurrence.
]
