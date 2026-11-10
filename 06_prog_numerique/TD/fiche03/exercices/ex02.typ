#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= TD03 — Exercice 2

$D_(i,0)=y_i, quad D_(i,k)=(D_(i+1,k-1)-D_(i,k-1))/(x_(i+k)-x_i)$

#table(
  columns: 7,
  inset: 5pt,
  align: center,
  [*$x_i$*], [*$D_(i,0)$*], [*$D_(i,1)$*], [*$D_(i,2)$*], [*$D_(i,3)$*], [*$D_(i,4)$*], [*$D_(i,5)$*],
  [$-2$], [$-1$], [$1$], [$3$], [$1$], [$0$], [$0$],
  [$1$], [$2$], [$19$], [$4$], [$1$], [$0$], [],
  [$4$], [$59$], [$11$], [$6$], [$1$], [], [],
  [$-1$], [$4$], [$5$], [$-2$], [], [], [],
  [$3$], [$24$], [$11$], [], [], [], [],
  [$-4$], [$-53$], [], [], [], [], [],
)

Coefficients de Newton (première ligne) : $(-1, 1, 3, 1, 0, 0)$.

Dernier coefficient non nul : $D_(0,3)=1$. Donc :

$
deg(P)=3
$
