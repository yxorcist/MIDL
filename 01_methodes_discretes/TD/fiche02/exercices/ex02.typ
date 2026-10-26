#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Exercice 2

Soient $a,b,m in NN$ tels que $a-b=m$.

On note $P(n)$ la propriété :

$
P(n): m divides (a^n-b^n).
$

== Initialisation

Pour $n=0$ (avec la convention $0^0=1$) :

$
a^0-b^0 = 1-1 = 0 = m times 0.
$

Donc $P(0)$ est vraie.

== Hérédité

Soit $n in NN$. Supposons $P(n)$ vraie. Montrons $P(n+1)$.

Par hypothèse de récurrence, il existe $k in ZZ$ tel que
$a^n-b^n=k m$. Or, par hypothèse de l'énoncé, $a-b=m$.

$
a^(n+1)-b^(n+1)
= a(a^n-b^n)+b^n(a-b)
= a k m+b^n m
= m(a k+b^n).
$

Puisque $a k+b^n in ZZ$, on a
$m divides (a^(n+1)-b^(n+1))$.
Donc $P(n+1)$ est vraie.

== Conclusion

Par récurrence, $forall n in NN$, $P(n)$.

_Remarques._

- L'identité utilisée dans l'hérédité s'obtient en ajoutant
  et en retranchant $a b^n$. Elle fait apparaître l'expression de $P(n)$.
- La divisibilité $m divides x$ signifie qu\'il existe $k in ZZ$ tel que $x=m k$,
  y compris pour $m=0$ (où $0 divides x$ impose $x=0$).
- Lorsque $a=0$ ou $b=0$, l'initialisation au rang $0$ nécessite
  la convention $0^0=1$. Sans elle, l'énoncé doit être formulé
  à partir de $n=1$ dans ces cas.
