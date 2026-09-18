#let session-note(
  subject: "",
  kind: "",
  date: "",
  number: "",
  body,
) = {
  set page(margin: 2cm)
  set text(size: 11pt)
  set par(justify: true, leading: 0.65em)

  align(center)[
    #text(size: 18pt, weight: "bold")[#subject]
    #linebreak()
    #text(size: 10pt)[#kind #number — #date]
  ]

  v(0.8em)
  line(length: 100%)
  v(1em)

  body
}
