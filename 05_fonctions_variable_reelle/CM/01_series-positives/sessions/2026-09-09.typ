#import "../../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 09/09/2026]
  #v(0.2em)
  #text(size: 11pt)[Introduction aux séries numériques]
]
#line(length: 100%)
#v(0.7em)

#text(size: 18pt, weight: "bold")[Séance du 09/09/2026]
#line(length: 100%)
#v(0.7em)

= Fonctions d'une variable réelle et intégrale

== Organisation du cours

- 9 ECTS.
- 36 h de CM + 54 h de TD.
- 2 CM par semaine, 3 TD par semaine.

Le cours est organisé en cinq chapitres :

1. Séries positives.
2. Propriétés des nombres réels.
3. Fonctions d'une variable réelle.
4. Intégration sur un segment.
5. Intégration impropre.

=== Contrôles continus communs

Trois contrôles continus communs d'une heure sont prévus :

- jeudi 8 octobre, 13 h ;
- jeudi 5 novembre, 13 h ;
- jeudi 3 décembre, 13 h.

=== Modalités de contrôle des connaissances

- 50 % : examen terminal (3 h) ;
- 50 % : contrôle continu.

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

=== Séries télescopiques

Soit $(a_n)_(n in NN)$ une suite de nombres réels.

Pour tout $n in NN$, on pose
$
  u_n = a_n - a_(n+1).
$

Calculons la $N$-ième somme partielle de la série $sum u_n$.

Pour $N in NN$,
$
  S_N
  &= sum_(k=0)^N (a_k - a_(k+1)) \
  &= sum_(k=0)^N a_k - sum_(k=0)^N a_(k+1) \
  &= sum_(k=0)^N a_k - sum_(k=1)^(N+1) a_k \
  &= a_0 - a_(N+1).
$

Ainsi, la suite $(S_N)_(N in NN)$ converge si et seulement si la suite $(a_(N+1))_(N in NN)$ converge.

#example(title: "Exemple — Série télescopique")[
  Prenons, pour $n in NN^*$,
  $
    u_n = 1 / (n(n+1)) = 1/n - 1/(n+1).
  $

  Pour $N in NN^*$,
  $
    S_N
    &= sum_(k=1)^N u_k \
    &= sum_(k=1)^N 1/k - sum_(k=1)^N 1/(k+1) \
    &= sum_(k=1)^N 1/k - sum_(k=2)^(N+1) 1/k \
    &= 1 - 1/(N+1).
  $

  La suite $(S_N)_(N >= 1)$ converge vers $1$. La série $sum u_n$ est donc convergente et
  $
    sum_(k=1)^infinity u_k = lim_(N -> infinity) sum_(k=1)^N u_k = 1.
  $
]

=== Séries géométriques

Considérons, pour $n in NN$,
$
  u_n = a^n,
$
où $a in RR$.

On sait calculer les sommes partielles de la série $sum u_n$. Pour $N in NN$,
$
  S_N = sum_(k=0)^N a^k
  =
  cases(
    (1 - a^(N+1)) / (1-a) & "si " a != 1,
    N+1 & "si " a = 1.
  )
$

#proof[
  Pour $a != 1$,
  $
    (1-a) sum_(k=0)^N a^k
    &= sum_(k=0)^N a^k - sum_(k=0)^N a^(k+1) \
    &= sum_(k=0)^N a^k - sum_(k=1)^(N+1) a^k \
    &= 1 - a^(N+1).
  $

  Donc
  $
    sum_(k=0)^N a^k = (1-a^(N+1))/(1-a).
  $
]

Si $a = 1$, la suite $(S_N)_(N in NN)$ diverge ; la série $sum a^n$ diverge donc.

Si $a != 1$, la suite $(S_N)_(N in NN)$ est convergente si et seulement si la suite $(a^(N+1))_(N in NN)$ converge, c'est-à-dire si et seulement si
$
  abs(a) < 1.
$

#proposition(title: "Conclusion — Nature d'une série géométrique")[
  - Si $abs(a) >= 1$, la série $sum a^n$ est divergente.
  - Si $abs(a) < 1$, la série $sum a^n$ est convergente et
    $
      sum_(n=0)^infinity a^n
      =
      lim_(N -> infinity) (1-a^(N+1))/(1-a)
      =
      1/(1-a).
    $
]

=== Reste d'ordre $N$ d'une série convergente

#definition(title: "Définition 5 — Reste d'ordre N")[
  On suppose que la série $sum u_n$ converge.

  Notons $(S_N)_(N in NN)$ la suite de ses sommes partielles et
  $
    S = sum_(n=0)^infinity u_n
  $
  la somme de cette série.

  On pose
  $
    R_N = S - S_N = sum_(n=N+1)^infinity u_n.
  $

  Le nombre $R_N$ est appelé *reste d'ordre $N$* de la série $sum u_n$.
]

#remark[
  On a
  $
    lim_(N -> infinity) R_N = 0.
  $

  Le reste $R_N$ est utilisé pour estimer l'erreur commise en approchant $S$ par $S_N$.
]

Reprenons les deux exemples précédents.

==== Série $sum 1/(n(n+1))$

On a
$
  S = 1
  quad "et" quad
  S_N = 1 - 1/(N+1).
$

Ainsi, pour $N in NN^*$,
$
  R_N
  = S - S_N
  = 1 - (1 - 1/(N+1))
  = 1/(N+1).
$

La convergence de cette série n'est pas très rapide. Pour avoir
$
  abs(R_N) < 10^(-3),
$
il faut prendre $N > 999$.

==== Série géométrique

Pour la série $sum_(n >= 0) a^n$, dans le cas où $abs(a) < 1$,
$
  S = 1/(1-a)
  quad "et" quad
  S_N = (1-a^(N+1))/(1-a).
$

Ainsi, pour $N in NN$,
$
  R_N
  &= S - S_N \
  &= 1/(1-a) - (1-a^(N+1))/(1-a) \
  &= a^(N+1)/(1-a).
$

Pour $a = 1/2$, il suffit de prendre $N >= 10$ pour garantir
$
  abs(R_N)
  = abs((1/2)^(N+1)/(1/2))
  = (1/2)^N
  < 10^(-3).
$

La convergence est donc beaucoup plus rapide dans cet exemple.

#remark(title: "Parenthèse notée dans le cours")[
  $
    sum_(n=1)^infinity 1/n^2 = pi^2/6.
  $
]
