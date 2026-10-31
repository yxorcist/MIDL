// source-confidence: high
// study-validation: 2026-10-31 — TD02 ex01 Q1 : dernière copie manuscrite validée (10/10), preuve minimale par parité de u_n > -1 sans utiliser les limites. Q2 préservée ; Q3 rendue autonome pour sa majoration u_n <= 2.
// study-validation: 2026-10-31 — TD02 ex01 : rédaction révisée selon la nouvelle copie manuscrite. Étude globale des sous-suites paire et impaire (premier terme, décroissance et limites 1 et -1), divergence, bornes strictes et larges ; Q1–Q3 déduites sans calculs redondants. Corrige u_(2p-1) <= 1 (égalité en p=1).
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

== Rappel utilisé — recherche d'une borne supérieure

Soit $X subset.eq RR$ un ensemble non vide et majoré, et soit

$
(x_n)_(n in NN) in X^NN.
$

Si

$
x_n -> ell,
$

alors

$
sup(X)>=ell.
$

En particulier, si $M$ est un majorant de $X$ et s'il existe une suite

$
(x_n)_(n in NN) in X^NN
$

telle que

$
x_n -> M,
$

alors

$
sup(X)=M.
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

Puisque $u_n>-1$ pour tout $n>=1$, $-1$ est un minorant de $E$.

Or $u_(2p-1) -> -1$ et tous les termes de cette sous-suite appartiennent à
$E$. Aucun nombre strictement supérieur à $-1$ ne peut donc minorer $E$.

Ainsi,

$
inf(E)=-1.
$

Comme $u_n>-1$ pour tout $n>=1$, on a $-1 in.not E$.
Donc $E$ n'admet pas de minimum.

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
