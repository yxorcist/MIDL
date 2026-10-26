#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

Pour $n>=1$, notons $P(n)$ la propriété :

$
P(n): sum_(i=1)^n i dot i! = (n+1)!-1.
$

== Initialisation

Pour $n=1$ :

$
sum_(i=1)^1 i dot i! = 1 dot 1! = 1 = 2!-1.
$

Donc $P(1)$ est vraie.

== Hérédité

Soit $n>=1$. Supposons $P(n)$ vraie et montrons $P(n+1)$.

$
sum_(i=1)^(n+1) i dot i!
  &= sum_(i=1)^n i dot i! + (n+1) dot (n+1)! \
  &= (n+1)!-1 + (n+1) dot (n+1)! \
  &= (n+1)! dot (1+n+1)-1 \
  &= (n+2)!-1.
$

La deuxième égalité utilise $P(n)$ ; la dernière utilise
$(n+2)! = (n+2) dot (n+1)!$.
Donc $P(n+1)$ est vraie.

== Conclusion

Par récurrence, $forall n>=1$, $P(n)$.

_Remarque._ Dans la première ligne, on isole le dernier terme de la somme :
pour $u_i=i dot i!$, on a $u_(n+1)=(n+1) dot (n+1)!$.
