#set page(
  paper: "a4",
  margin: (x: 2cm, y: 1.8cm),
)

#set text(
  lang: "fr",
  size: 11pt,
)

#set par(
  justify: true,
  leading: 0.65em,
)

#set heading(numbering: none)

#align(center)[
  #text(size: 22pt, weight: "bold")[Chapitre 1 — Espaces vectoriels]
  #v(0.3em)
  #text(size: 11pt)[Algèbre linéaire]
]
#line(length: 100%)
#v(1em)

#include "../../fragments/2026-09-08_01_espaces-vectoriels.typ"
#include "../../fragments/2026-09-08_02_exemples-espaces-vectoriels.typ"
#include "../../fragments/2026-09-08_03_regles-calcul-stabilite.typ"
#include "../../fragments/2026-09-08_04_sous-espaces-vectoriels.typ"
#include "../../fragments/2026-09-08_05_intersection-sous-espaces.typ"
#include "../../fragments/2026-09-08_06_sous-espaces-engendres-combinaisons.typ"

#include "../../fragments/2026-09-10_01_vect-et-operations-elementaires.typ"
#include "../../fragments/2026-09-10_02_somme-sous-espaces.typ"
#include "../../fragments/2026-09-10_03_sommes-directes.typ"
#include "../../fragments/2026-09-10_04_critere-somme-directe.typ"
#include "../../fragments/2026-09-10_05_sous-espaces-supplementaires.typ"
#include "../../fragments/2026-09-10_06_applications-lineaires-systemes.typ"

#include "../../fragments/2026-09-14_01_familles-libres-generatrices.typ"
#include "../../fragments/2026-09-14_02_type-fini-bases-coordonnees.typ"
#include "../../fragments/2026-09-14_03_dimension-et-formules.typ"
#include "../../fragments/2026-09-14_04_familles-et-sommes-sev.typ"

#include "../../fragments/2026-09-17_01_complement-bases-rang.typ"
#include "../../fragments/2026-09-17_02_calcul-rang-gauss.typ"
