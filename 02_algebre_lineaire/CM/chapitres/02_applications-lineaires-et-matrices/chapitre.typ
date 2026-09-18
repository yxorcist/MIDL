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
  #text(size: 22pt, weight: "bold")[Chapitre 2 — Applications linéaires et matrices]
  #v(0.3em)
  #text(size: 11pt)[Algèbre linéaire]
]
#line(length: 100%)
#v(1em)

#include "../../fragments/2026-09-16_01_rappels-applications-lineaires.typ"
#include "../../fragments/2026-09-16_02_structure-espace-applications-lineaires.typ"
#include "../../fragments/2026-09-16_03_noyau-image.typ"
#include "../../fragments/2026-09-16_04_determination-par-base.typ"
