// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2 — Contraposée

*Énoncé.* Pour tout $n in NN$, si $n^3+5$ est impair, alors $n$ est pair.

== Pourquoi la contraposée ?

L'énoncé est une implication $P => Q$ :
- $P$ : « $n^3+5$ est impair » ;
- $Q$ : « $n$ est pair ».

Il est souvent plus facile de supposer une propriété de $n$ et de calculer une expression construite avec $n$ que de partir de la parité de cette expression. On prouve donc $not Q => not P$, équivalente à l'implication initiale :
$
n " impair" => n^3+5 " pair".
$

== Preuve

Supposons $n$ impair. Il existe $r in NN$ tel que $n=2r+1$. En développant :
$
n^3+5=(2r+1)^3+5
=8r^3+12r^2+6r+6
=2(4r^3+6r^2+3r+3).
$
Posons $k=4r^3+6r^2+3r+3$. Comme $r in NN$, on a $k in NN$. Ainsi $n^3+5=2k$ : cette quantité est paire.

La contraposée étant démontrée, si $n^3+5$ est impair, alors $n$ est pair.

== À retenir

- Pour $P => Q$, la contraposée est $not Q => not P$ : on *inverse le sens* et on *nie les deux propositions*.
- Montrer que $n^3+5$ est pair sous l'hypothèse « $n$ impair » ne prouve pas que $n^3$ est pair. La conclusion doit porter exactement sur la proposition demandée.
- Pour prouver qu'un entier est pair, on l'écrit $2k$ avec $k$ entier.
