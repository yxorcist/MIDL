#import "../style.typ": *

== Implication et raisonnement

#theorem[
  *Théorème — Modus ponens.*

  Si $P$ est vraie et $P => Q$ est vraie, alors $Q$ est vraie.
]

À partir de l'implication

$ P => Q $

on distingue :

- sa *réciproque* : $Q => P$ ;
- sa *contraposée* : $not Q => not P$.

Une implication est logiquement équivalente à sa contraposée :

$ (P => Q) <=> (not Q => not P) $

En revanche, elle n'est pas en général équivalente à sa réciproque.

