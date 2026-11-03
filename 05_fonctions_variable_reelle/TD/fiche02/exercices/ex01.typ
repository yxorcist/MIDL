// source-confidence: high
// study-validation: 2026-11-03 — TD02 ex01 Q1 (preuve par parité) et Q2 (minorant -1, sous-suite impaire vers -1, absence de minimum) validées sur copies manuscrites, 10/10 ; rédaction concise. Q3 conservée. Rappel hors sujet supprimé.
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet; the supplied handwritten page contains the complete correction of questions 1 to 3.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1 — Examen terminal Juin 2026

On considère

$
E
=
{u_n | n in NN^*},
$

où

$
u_n
=
(-1)^n + 2/n.
$

== Question 1

Soit $p in NN^*$.

$
u_(2p)=(-1)^(2p)+2/(2p)=1+1/p>-1,
$

et

$
u_(2p-1)=(-1)^(2p-1)+2/(2p-1)=-1+2/(2p-1)>-1.
$

Les indices pairs et impairs couvrent $NN^*$, donc

$
forall n in NN^*, quad u_n>-1.
$

== Question 2

D'après la question 1, $u_n>-1$ pour tout $n in NN^*$.
Donc $-1$ est un minorant de $E$, mais $-1 in.not E$.

Or $u_(2p-1)=-1+2/(2p-1) -> -1$, avec $u_(2p-1) in E$
pour tout $p in NN^*$. Par conséquent,

$
inf(E)=-1,
$

et $E$ n'admet pas de minimum.

== Question 3

Pour tout $p in NN^*$,

$
u_(2p)=1+1/p<=2
quad "et" quad
u_(2p-1)=-1+2/(2p-1)<=1<=2.
$

Donc $2$ est un majorant de $E$. Or $u_2=2 in E$.

Par conséquent,

$
max(E)=sup(E)=2.
$
