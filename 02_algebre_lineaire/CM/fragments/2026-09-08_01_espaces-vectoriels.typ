#import "../style.typ": *

#align(center)[
  #text(size: 18pt, weight: "bold")[Algèbre linéaire — CM 1]
  #v(0.25em)
  #text(size: 11pt)[Espaces vectoriels et sous-espaces vectoriels]
]

#v(0.8em)

#table(
  columns: (1fr, 1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt,
  [*Type*], [*Date*], [*Source*],
  [CM], [08/09/2026], [CM, faculté],
)

#v(1em)


// ============================================================
// PAGE 1
// ============================================================

= Espaces vectoriels et sous-espaces vectoriels

== Espaces vectoriels

=== Définition

Dans ce cours, le corps des scalaires est principalement $K = ℝ$ ou $K = ℂ$.

Un *espace vectoriel sur $K$*, aussi appelé *$K$-espace vectoriel*, est la donnée d'un ensemble non vide $E$ muni de deux opérations.

*Addition interne :*

$
+ : E × E → E,
quad
(u, v) ↦ u + v
$

*Multiplication externe par un scalaire :*

$
· : K × E → E,
quad
(λ, u) ↦ λ u
$

Ces deux opérations doivent vérifier les huit axiomes suivants, pour tous
$u, v, w ∈ E$ et tous $λ, μ ∈ K$.

1. *Commutativité de l'addition*
   $
   u + v = v + u
   $

2. *Associativité de l'addition*
   $
   (u + v) + w = u + (v + w)
   $

3. *Élément neutre pour l'addition*

   Il existe un unique vecteur $0_E ∈ E$ tel que
   $
   u + 0_E = u = 0_E + u
   $

4. *Existence d'un opposé*

   Pour tout $u ∈ E$, il existe un unique vecteur, noté $-u$, tel que
   $
   u + (-u) = 0_E = (-u) + u
   $

5. *Associativité de la multiplication scalaire*
   $
   (λ μ) u = λ (μ u)
   $

6. *Élément neutre scalaire*
   $
   1 u = u
   $

7. *Distributivité par rapport à l'addition des vecteurs*
   $
   λ (u + v) = λ u + λ v
   $

8. *Distributivité par rapport à l'addition des scalaires*
   $
   (λ + μ) u = λ u + μ u
   $

=== Terminologie

- Les éléments de $E$ sont appelés *vecteurs*.
- Les éléments de $K$ sont appelés *scalaires*.
- $0_E$ est appelé le *vecteur nul* de $E$.
- Pour tout $u ∈ E$, son opposé est unique et est noté $-u$.

*Remarque.* Un espace vectoriel n'est jamais vide, puisqu'il contient nécessairement $0_E$.
