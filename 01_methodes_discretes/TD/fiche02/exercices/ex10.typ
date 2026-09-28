#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 2 — Exercice 10

#tidy-tree-graph(compact: true)[
  - 8
    - 5
      - 1
      - 4
        - 2
          - 1
          - 1
        - 2
          - 1
          - 1
    - 3
      - 2
        - 1
        - 1
      - 1
]

Gain total $= 15 + 4 + 2 + 4 + 1 + 1 + 1$
$= 28 = frac(8 x 6, 2)$

Induction $m$ le nombre de boites


$n = 1$ on ne divise rien et donc le gain est zero et $frac(n (n - 1), 1) = 0$

Soit $Gain(k)$ le gain obtenu avec $k$ boites

Induction:

$P(n)$: $forall k 1 <= k <= n$ nous avons $Gain(k)$ = $frac(k (k - 1), 2)$

$P(n + 1)$ pour $n + 1$ boites le gain est $Gain(n + 1) = frac(n (n + 1), 2)$


