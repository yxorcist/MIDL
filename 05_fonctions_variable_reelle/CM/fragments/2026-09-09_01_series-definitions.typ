#import "../style.typ": *

== Séries positives

=== Introduction

La somme des termes d'une suite généralise l'addition à une infinité de termes.

=== Définitions, premières propriétés, séries exemples

Soit $(u_n)_(n in NN)$ une suite de nombres réels.

#definition(title: "Définition 1 — Somme partielle")[
  Soit $N in NN$. On note
  $
    S_N = u_0 + dots + u_N = sum_(k=0)^N u_k.
  $

  On dit que $S_N$ est la $N$-ième somme partielle de la série $sum u_n$.
]

#definition(title: "Définition 2 — Suite des sommes partielles")[
  La suite $(S_N)_(N in NN)$ est appelée *suite des sommes partielles* de la série $sum u_n$.
]

#definition(title: "Définition 3 — Convergence ou divergence d'une série")[
  On dit que la série de terme général $u_n$, notée $sum u_n$, *converge* si la suite des sommes partielles $(S_N)_(N in NN)$ est convergente.

  On dit que la série $sum u_n$ est *divergente* si la suite $(S_N)_(N in NN)$ ne converge pas.
]

Déterminer la *nature* d'une série signifie déterminer si elle converge ou diverge.

#warning[
  Il faut distinguer la suite $(u_n)_(n in NN)$ et la série de terme général $u_n$, notée $sum_(n >= 0) u_n$.
]

#definition(title: "Définition 4 — Somme d'une série convergente")[
  Supposons que la série $sum u_n$ soit convergente.

  Notons $S$ la limite de la suite des sommes partielles $(S_N)_(N in NN)$. Alors $S$ est appelée *somme* de la série $sum u_n$.

  On note
  $
    S = sum_(k=0)^infinity u_k.
  $
]

#remark[
  L'expression $sum u_n$ désigne une série. Elle n'a de somme que lorsque cette série converge.

  L'expression $sum_(n=0)^infinity u_n$ désigne la somme de cette série lorsque celle-ci converge.
]

#proposition(title: "Proposition 1 — Ajouter ou enlever un nombre fini de termes")[
  On ne change pas la nature d'une série si l'on ajoute ou enlève un nombre fini de termes.

  En particulier,
  $
    sum_(n >= 0) u_n " converge "
    <=> 
    sum_(n >= n_0) u_n " converge "
  $
  pour tout $n_0 in NN$.
]

#proof[
  Soient $n_0 in NN$ et $N in NN$ avec $N >= n_0$.

  On a
  $
    sum_(n=0)^N u_n
    =
    sum_(n=n_0)^N u_n
    + u_0 + dots + u_(n_0-1).
  $

  Les termes $u_0 + dots + u_(n_0-1)$ forment une quantité constante lorsque $N$ varie. Les deux suites de sommes partielles ont donc la même nature : elles convergent simultanément ou divergent simultanément.
]

#warning[
  Si les deux séries convergent, leurs sommes ne sont en général pas égales :
  $
    sum_(n=0)^infinity u_n != sum_(n=n_0)^infinity u_n.
  $
]
