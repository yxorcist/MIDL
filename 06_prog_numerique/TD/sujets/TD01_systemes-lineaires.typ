// midl: publish

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.35cm),
)
#set text(size: 9.5pt)
#set par(justify: true, leading: 0.65em)

#let ex(title) = [
  #v(0.55em)
  #text(weight: "bold", size: 11pt)[#title]
  #v(0.25em)
]

#let m2(a,b,c,d) = $mat(#a, #b; #c, #d)$

#align(center)[
  #text(weight: "bold")[N2 Informatique. Ing. et Prog numériques#super[1]]
  #linebreak()
  #text(weight: "bold")[TD 1 : Systèmes linéaires]
]

#ex[Exercice 1]

1. Donner le résultat des produits suivants :

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.4em,
  row-gutter: 0.55em,
  [(a) $mat(1; -6)^T mat(1, 6; -3, 5)$],
  [(b) $(mat(1, 6; -3, 5) + mat(4, 2; 2, 1))^2$],
  [(c) $(2, -1) mat(1; -6)$],
  [(d) $mat(1; 6) (3, 2)$],
)

#v(0.4em)
2. Les matrices suivantes sont-elles symétriques ? inversibles ?

#align(center)[
  #grid(
    columns: (auto, auto, auto),
    column-gutter: 2.2em,
    [(a) $mat(0, 1, 0; 0, 0, 1; 1, 0, 0)$],
    [(b) $mat(0, 1, 1; 1, 1, 1; 1, 1, 0)$],
    [(c) $mat(1, 1, 1; 0, 1, 0; 1, 0, 1)$],
  )
]

#ex[Exercice 2]

On considère les matrices suivantes :

#align(center)[
  $A = mat(-6, -7; 5, 6) quad
   B = mat(-2, -3; 2, 3) quad
   C = mat(2, 1; -4, -2)$
]

Trouver les expressions de $A^n$, $B^n$ et $C^n$ pour tout entier non nul $n$.

#ex[Exercice 3]

1. Soit $A$ la matrice donnée ci-dessous :

#align(center)[
  $A = mat(1, -1, -1; -1, 1, -1; -1, -1, 1)$
]

(a) Calculer $A^2$.

(b) Montrer que $A^2 = A + 2I$.

(c) En déduire $A^(-1)$.

#v(0.25em)
2. Calculer le déterminant et la trace des matrices suivantes :

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 1.6em,
    row-gutter: 0.7em,
    [$mat(-3, 1, 1; 0, 2, 0; 0, 0, 1)$],
    [$mat(-2, 2, -3; -1, 1, 3; 4, 0, -1)$],
    [$mat(0, 3, 1, -2; 4, 1, -1, 2; 3, 1, 2, -1; -4, 2, 1, 2)$],
    [$mat(1, x, x^2, x^3; 1, 1, 1, 1; 1, 2, 3, 4; 1, 4, 9, 16)$],
  )
]

#ex[Exercice 4]

Soit le système d'équations linéaires suivant :

#align(center)[
  #grid(
    columns: (auto, auto),
    column-gutter: 1em,
    row-gutter: 0.2em,
    [$2x_1 + 4x_2 - 2x_3$], [$= -6$],
    [$x_1 + 2x_2 + x_4$], [$= 0$],
    [$3x_1 - x_2 + x_3 + 2x_4$], [$= 8$],
    [$-x_2 + 2x_3 + x_4$], [$= 6$],
  )
]

#v(1fr)
#line(length: 28%)
#text(size: 8pt)[1. 2026-2027]
