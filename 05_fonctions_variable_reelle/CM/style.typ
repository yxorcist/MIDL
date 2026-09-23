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

#let definition(title: none, body) = {
  let label = if title == none { "Définition." } else { title }
  framed-block(label, body)
}

#let proposition(title: none, body) = {
  let label = if title == none { "Proposition." } else { title }
  framed-block(label, body)
}

#let theorem(title: none, body) = {
  let label = if title == none { "Théorème." } else { title }
  framed-block(label, body)
}

#let example(title: none, body) = {
  let label = if title == none { "Exemple." } else { title }
  framed-block(label, body)
}

#let remark(title: none, body) = {
  let label = if title == none { "Remarque." } else { title }
  framed-block(label, body)
}

#let warning(body) = framed-block("Attention.", body)

#let proof(body) = [
  #emph[Preuve.]
  #body
  #h(1fr) $square$
]
