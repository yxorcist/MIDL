#let framed-block(label, body) = block(
  width: 100%,
  inset: 8pt,
  radius: 2pt,
  stroke: 0.5pt,
)[
  #strong(label)
  #v(3pt)
  #body
]

#let remark(body) = framed-block("Remarque.", body)
#let warning(body) = framed-block("Attention.", body)
#let example(body) = framed-block("Exemple.", body)
