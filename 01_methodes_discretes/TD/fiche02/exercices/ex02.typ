#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

Soient $a,b,m in NN$ tels que $a-b=m$.

On note $P(n)$ la propriété :

$
P(n): m divides (a^n-b^n).
$

== Initialisation

Pour $n=0$, avec la convention $0^0=1$ :

$
a^0-b^0 = 1-1 = 0 = m dot 0.
$

Donc $P(0)$ est vraie.

== Hérédité

Soit $n in NN$. Supposons $P(n)$ vraie et montrons $P(n+1)$.

Par hypothèse de récurrence, il existe $k in ZZ$ tel que
$a^n-b^n=k m$. Par hypothèse de l'énoncé, $a-b=m$.

Pour faire apparaître $a^n-b^n$, on ajoute puis retranche $a dot b^n$ :

$
a^(n+1)-b^(n+1)
  &= a dot a^n - b dot b^n \
  &= a dot a^n - a dot b^n + a dot b^n - b dot b^n \
  &= a dot (a^n-b^n) + b^n dot (a-b) \
  &= a dot k m + b^n dot m \
  &= m dot (a k + b^n).
$

Puisque $a k+b^n in ZZ$, on obtient
$m divides (a^(n+1)-b^(n+1))$. Donc $P(n+1)$ est vraie.

== Conclusion

Par récurrence, $forall n in NN$, $P(n)$.

_Remarques._

- Par définition, $m divides x$ signifie qu'il existe $k in ZZ$
  tel que $x=m k$. Cette définition reste valable pour $m=0$.
- Dans la factorisation, le facteur $(a-b)$ multiplie $b^n$ :
  il ne fait pas partie de l'exposant.
- Si $a=0$ ou $b=0$, le rang $n=0$ utilise la convention $0^0=1$.
  Sans cette convention, on peut formuler le résultat pour $n>=1$.
