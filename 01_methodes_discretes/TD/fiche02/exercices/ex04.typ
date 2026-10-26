#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

Pour $n>=1$, notons $P(n)$ la propriété :

$
P(n): 5 divides (2^(2n-1)+3^(2n-1)).
$

== Initialisation

Pour $n=1$ :

$
2^(2 dot 1-1)+3^(2 dot 1-1) = 2+3 = 5.
$

Donc $P(1)$ est vraie.

== Hérédité

Soit $n>=1$. Supposons $P(n)$ vraie et montrons $P(n+1)$.

Par hypothèse de récurrence, il existe $k in ZZ$ tel que
$2^(2n-1)+3^(2n-1)=5k$.

$
2^(2(n+1)-1)+3^(2(n+1)-1)
  &= 4 dot 2^(2n-1)+9 dot 3^(2n-1) \
  &= 4 dot (2^(2n-1)+3^(2n-1))+5 dot 3^(2n-1) \
  &= 4 dot (5k)+5 dot 3^(2n-1) \
  &= 5 dot (4k+3^(2n-1)).
$

La deuxième ligne utilise $9=4+5$ pour faire apparaître $P(n)$.
Comme $4k+3^(2n-1) in ZZ$, le résultat est divisible par $5$.
Donc $P(n+1)$ est vraie.

== Conclusion

Par récurrence, $forall n>=1$, $P(n)$.

_Remarque._ Le terme $5 dot 3^(2n-1)$ est divisible par $5$
car il est explicitement de la forme $5 dot q$, avec $q in ZZ$.
Ce n'est pas $3^(2n-1)$ qui est supposé divisible par $5$.
