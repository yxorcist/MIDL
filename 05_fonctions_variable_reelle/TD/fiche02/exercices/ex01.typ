// source-confidence: high
// source-note: TD02, exercice 1 ; rédaction alignée sur la nouvelle copie manuscrite du 10/11/2026.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1 — Examen terminal Juin 2026

On pose $E={u_n | n in NN^*}$ avec $u_n=(-1)^n+2/n$.

== Question 1 — Minorant

Pour tout $p in NN^*$,
$
u_(2p)=1+1/p>-1,
quad
u_(2p-1)=-1+2/(2p-1)>-1.
$

Donc $forall n in NN^*, u_n>-1$ : $-1$ est un minorant de $E$.

== Question 2 — Infimum et minimum

On a $-1 in.not E$, puisque $u_n>-1$ pour tout $n>=1$.

Or
$
u_(2p-1)=-1+2/(2p-1) -> -1 quad (p -> +infinity).
$

Les termes $u_(2p-1)$ appartiennent à $E$ ; le minorant $-1$ est donc approché par des éléments de $E$.

Ainsi,
$
inf(E)=-1, quad "et" quad E " n'admet pas de minimum".
$

== Question 3 — Supremum et maximum

Pour tout $p in NN^*$,
$
u_(2p)=1+1/p<=2,
quad
u_(2p-1)=-1+2/(2p-1)<=1<2.
$

Donc $2$ majore $E$. De plus, $u_2=2 in E$.

Par conséquent,
$
sup(E)=max(E)=2.
$
