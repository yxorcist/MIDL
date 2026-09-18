#import "../style.typ": *

= II. Borne supérieure, borne inférieure

#definition([
  Soit $A$ une partie de $RR$.

  Un réel $M in RR$ est un *majorant* de $A$ si, pour tout $a in A$,

  $
  a <= M.
  $

  Un réel $m in RR$ est un *minorant* de $A$ si, pour tout $a in A$,

  $
  m <= a.
  $

  On dit que $A$ est *majorée* si elle possède un majorant.

  On dit que $A$ est *minorée* si elle possède un minorant.

  On dit que $A$ est *bornée* si elle est à la fois majorée et minorée.
])

== Exemples

#example([
  Considérons

  $
  A = ]0,1].
  $

  Les nombres $1$, $3$ et $10^10$ sont des majorants de $A$.

  Les nombres $-3$, $-5$ et $0$ sont des minorants de $A$.

  La partie $A$ est donc bornée.
])

#example([
  Considérons

  $
  A = ]-oo,10].
  $

  Le nombre $10$ est un majorant de $A$.

  La partie $A$ est majorée, mais elle n'est pas minorée.
])

#remark([
  Si $A$ est majorée et si $M_1$ est un majorant de $A$, alors tout réel $M_2$ tel que

  $
  M_2 >= M_1
  $

  est aussi un majorant de $A$.

  De même, si $A$ est minorée et si $m_1$ est un minorant de $A$, alors tout réel $m_2$ tel que

  $
  m_2 <= m_1
  $

  est aussi un minorant de $A$.
])
