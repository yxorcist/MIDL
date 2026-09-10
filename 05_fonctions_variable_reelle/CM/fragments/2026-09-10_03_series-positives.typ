#import "../style.typ": *

=== Séries positives

#definition(title: "Définition 6 — Série positive")[
  On dit que la série de terme général $u_n$ est *positive* (ou *à termes positifs*)
  si, pour tout $n in NN$,
  $
    u_n >= 0.
  $

  On dit que la série de terme général $u_n$ est *positive à partir d'un certain rang*
  s'il existe $N_0 in NN$ tel que, pour tout $n >= N_0$,
  $
    u_n >= 0.
  $
]

#warning[
  Tous les résultats de cette partie ne s'appliquent qu'aux séries positives.
]

#remark[
  Pour une série $sum u_n$ positive, la suite de ses sommes partielles
  $(S_N)_(N in NN)$ est croissante.

  En effet, pour tout $N in NN$,
  $
    S_(N+1) - S_N
    = sum_(k=0)^(N+1) u_k - sum_(k=0)^N u_k
    = u_(N+1)
    >= 0.
  $

  On a donc deux possibilités : soit $(S_N)$ converge, soit
  $
    lim_(N -> infinity) S_N = +infinity,
  $
  selon que la suite $(S_N)$ est majorée ou non.
]

#proposition(title: "Proposition 4 — Critère pour une série positive")[
  Soit $sum u_n$ une série positive à partir d'un certain rang.

  La série de terme général $u_n$ converge si et seulement si la suite de ses
  sommes partielles est majorée.
]

#proof[
  *Sens réciproque.* Supposons que la suite des sommes partielles soit majorée.
  À partir du rang où les termes sont positifs, cette suite est croissante.
  D'après la remarque précédente, elle converge. Ainsi, la série converge.

  *Sens direct.* Supposons que la série $sum u_n$ converge. Si la suite de ses
  sommes partielles n'était pas majorée, elle tendrait vers $+infinity$ puisqu'elle
  est croissante à partir d'un certain rang. Cela contredirait sa convergence.
]
