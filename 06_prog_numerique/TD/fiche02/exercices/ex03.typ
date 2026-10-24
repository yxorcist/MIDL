// source-confidence: high
// source-note: TD02_systemes-lineaires-2.pdf, exercice 3 : équations, tableau de Jacobi/Gauss-Seidel et départ M0=(3,3) vérifiés sur l'énoncé officiel.
// source-correction: une version précédente construisait un exemple depuis (0,0) au lieu de traiter le tableau officiel ; elle est remplacée par la résolution demandée.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 3 — Résolution graphique et comparaison de Jacobi / Gauss–Seidel

== Énoncé officiel et résolution géométrique

On considère
$
cases(-2x+y=-1, x+y=2).
$
Ces deux équations donnent les droites $y=2x-1$ et $y=2-x$.

À l'intersection, $2x-1=2-x$, donc $3x=3$, $x=1$ et $y=1$. *La solution unique est $(1,1)$.*

#align(center)[
  #image("../figures/ex03-droites.svg", width: 82%)
]

== 2. Tableau d'itérations figurant dans le sujet

Les itérations du sujet partent de *$M_0=(3,3)$*, et non de $(0,0)$.

#table(columns: (0.7fr, 1.5fr, 1.5fr), inset: 6pt, align: center,
  [*Point*],[*Jacobi (J)*],[*Gauss–Seidel (GS)*],
  [$M_0$],[$(3,3)$],[$(3,3)$],
  [$M_1$],[$(2,-1)$],[$(2,0)$],
  [$M_2$],[$(0,0)$],[$(1/2,3/2)$],
  [$M_3$],[$(1/2,2)$],[$(5/4,3/4)$],
  [$M_4$],[$(3/2,3/2)$],[$(7/8,9/8)$],
)

== Justifier les valeurs du tableau

On isole $x$ dans la première équation et $y$ dans la seconde :
$
x=(y+1)/2, quad y=2-x.
$

=== Méthode de Jacobi

Les nouvelles valeurs sont calculées *toutes deux à partir de l'itération précédente* :
$
cases(x^(k+1)=(y^k+1)/2,
      y^(k+1)=2-x^k).
$

Depuis $M_0=(3,3)$, on obtient
$
M_1=(2,-1), quad M_2=(0,0),
$
$
M_3=(1/2,2), quad M_4=(3/2,3/2).
$

=== Méthode de Gauss–Seidel

Le nouveau $y$ réutilise immédiatement le $x$ qui vient d'être calculé :
$
cases(x^(k+1)=(y^k+1)/2,
      y^(k+1)=2-x^(k+1)).
$
Ainsi
$
M_1=(2,0), quad M_2=(1/2,3/2),
$
$
M_3=(5/4,3/4), quad M_4=(7/8,9/8).
$

== Comparer la convergence

Les deux suites d'itérations convergent vers $(1,1)$, mais les coordonnées *Gauss–Seidel* s'en rapprochent ici plus rapidement. Après quatre itérations,
$
norm(M_4^("J")-(1,1))_2=sqrt(1/2),
$
alors que
$
norm(M_4^("GS")-(1,1))_2=sqrt(1/32).
$

La convergence peut être visualisée en plaçant les points du tableau dans le plan et en reliant les points successifs de chaque méthode.

*Provenance.* Les deux droites et les points du tableau sont tirés de l'énoncé officiel. Les relations de récurrence et la comparaison des distances sont des vérifications calculées à partir de celui-ci.
