#set page(
  paper: "a4",
  margin: (x: 2.2cm, y: 2.0cm),
)

#set text(
  lang: "fr",
  size: 10.5pt,
)

#set par(
  justify: true,
  leading: 0.65em,
)

#set heading(numbering: none)

#align(center)[
  #text(size: 22pt, weight: "bold")[Chapitre 1 — Séries positives]
  #v(0.3em)
  #text(size: 11pt)[Fonctions d'une variable réelle et intégrale]
]
#line(length: 100%)
#v(1em)

#include "../../fragments/2026-09-09_01_series-definitions.typ"
#include "../../fragments/2026-09-09_02_series-telescopiques.typ"
#include "../../fragments/2026-09-09_03_series-geometriques.typ"
#include "../../fragments/2026-09-09_04_reste-d-une-serie.typ"

#include "../../fragments/2026-09-10_01_condition-necessaire-convergence.typ"
#include "../../fragments/2026-09-10_02_operations-sur-series.typ"
#include "../../fragments/2026-09-10_03_series-positives.typ"
#include "../../fragments/2026-09-10_04_theoreme-comparaison.typ"
#include "../../fragments/2026-09-10_05_exemples-comparaison.typ"

#include "../../fragments/2026-09-11_01_comparaison-petit-o.typ"
#include "../../fragments/2026-09-11_02_equivalence-series.typ"
#include "../../fragments/2026-09-11_03_exemple-cosinus.typ"
#include "../../fragments/2026-09-11_04_series-riemann.typ"

#include "../../fragments/2026-09-16_01_series-riemann-preuve.typ"
#include "../../fragments/2026-09-16_02_comparaison-riemann.typ"
#include "../../fragments/2026-09-16_03_exemples-intermediaires.typ"
#include "../../fragments/2026-09-16_04_exemple-developpement-limite.typ"

#include "../../fragments/2026-09-17_01_exemple-serie-logarithmique.typ"
