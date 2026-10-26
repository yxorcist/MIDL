#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1

Posons $S_n = sum_(i=0)^n floor(i/2)$ et notons $P(n)$ la propriété :

$
S_n = cases(
  n^2/4 & "si " n " est pair",
  (n^2-1)/4 & "si " n " est impair".
)
$

== Initialisation

Pour $n=0$ :

$
S_0 = floor(0/2) = 0 = 0^2/4.
$

Donc $P(0)$ est vraie.

== Hérédité

Soit $n in NN$. Supposons $P(n)$ vraie et montrons $P(n+1)$.

$
S_(n+1) = S_n + floor((n+1)/2).
$

=== Cas 1 : $n$ pair

Alors $n+1$ est impair et $floor((n+1)/2) = n/2$.
Par $P(n)$ :

$
S_(n+1) &= n^2/4 + n/2 \
        &= (n^2+2n)/4 \
        &= ((n+1)^2-1)/4.
$

Donc $P(n+1)$ est vraie.

=== Cas 2 : $n$ impair

Alors $n+1$ est pair et $floor((n+1)/2) = (n+1)/2$.
Par $P(n)$ :

$
S_(n+1) &= (n^2-1)/4 + (n+1)/2 \
        &= (n^2+2n+1)/4 \
        &= (n+1)^2/4.
$

Donc $P(n+1)$ est vraie.

== Conclusion

Les deux cas donnent $P(n) => P(n+1)$.
Par récurrence, $forall n in NN$, $P(n)$.

_Remarque._ La vérification de $P(1)$ serait correcte mais redondante :
l'étape $P(n) => P(n+1)$ couvre les deux parités. En revanche,
une récurrence de pas $2$ requiert les bases $P(0)$ et $P(1)$.
