// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7 — Reste modulo 3

*Énoncé.* Si $n in NN$ n'est pas divisible par $3$, montrer que $n^2+2$ est divisible par $3$.

== Pourquoi seulement deux cas ?

D'après la division euclidienne, $n=3r+s$ avec $r in NN$ et $s in {0,1,2}$. L'hypothèse « $n$ n'est pas divisible par $3$ » élimine $s=0$. Il reste donc exactement deux possibilités : $s=1$ et $s=2$.

== Preuve

*Cas 1 :* $n=3r+1$. Alors
$
n^2+2=(3r+1)^2+2
=9r^2+6r+3
=3(3r^2+2r+1).
$
Le terme entre parenthèses est entier ; donc $3 divides (n^2+2)$.

*Cas 2 :* $n=3r+2$. Alors
$
n^2+2=(3r+2)^2+2
=9r^2+12r+6
=3(3r^2+4r+2).
$
Là encore, le terme entre parenthèses est entier ; donc $3 divides (n^2+2)$.

Ces deux cas étant exhaustifs sous l'hypothèse de l'énoncé, $n^2+2$ est divisible par $3$.

== À retenir

- Un raisonnement « selon les restes » vient de la *division euclidienne*.
- Toujours annoncer l'ensemble des restes possibles et expliquer ceux exclus par l'hypothèse.
- $3 divides (n^2+2)$ signifie qu'il existe un entier $K$ tel que $n^2+2=3K$. Le calcul fournit explicitement cet entier.
