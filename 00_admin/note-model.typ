// note-model.typ
// A4 template for handwritten university notes

#set page(
  paper: "a4",
  margin: (
    top: 10mm,
    bottom: 10mm,
    left: 12mm,
    right: 12mm,
  ),
)

#set text(
  size: 8pt,
)

// Header label
#let field(name) = text(
  size: 10pt,
  weight: "bold",
  name,
)

// --------------------------------------------------
// HEADER
// --------------------------------------------------

#table(
  // Percentages make the table span the available width.
  columns: (44%, 31%, 25%),

  stroke: 0.5pt,
  inset: (
    x: 4pt,
    y: 3pt,
  ),

  // Row 1
  [
    #field("SUBJECT")
    #v(5mm)
  ],

  [
    #field("TYPE")
    #v(5mm)
  ],

  [
    #field("DATE")
    #v(5mm)
  ],

  // Row 2
  table.cell(
    colspan: 2,
  )[
    #field("TOPIC")
    #v(5mm)
  ],

  [
    #field("PAGE")
    #v(5mm)
  ],

  // Row 3
  table.cell(
    colspan: 3,
  )[
    #field("SOURCE")
    #v(5mm)
  ],
)
