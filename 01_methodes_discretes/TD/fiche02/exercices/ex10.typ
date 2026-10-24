// source-confidence: medium
// source-note: sujet imprimé TD02, ex. 10. La question a figure dans les photos du premier lot.
 // source-reconstruction: les arguments élémentaires de pavage des questions b et c, non explicités sur la copie, sont complétés à partir des dimensions données.
 
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 10 — Pavage par des triminos en L

Un *trimino en L* est une pièce de trois cases obtenue en retirant un coin à un carré $2 times 2$. Les rotations de la pièce sont autorisées. On demande si l'on peut paver les échiquiers suivants, pour tout $n>=1$ :

- a) $3 times 2^n$ ;
- b) $6 times 2^n$ ;
- c) $6^n times 6^n$.

== Brique de pavage : un rectangle $3 times 2$

Un rectangle de $3$ lignes et $2$ colonnes se pave avec deux triminos en L. Par exemple, en notant $A$ et $B$ les deux pièces :

#table(columns: 2, inset: 5pt,
  [A], [A],
  [A], [B],
  [B], [B],
)

Les trois cases $A$ forment un L, comme les trois cases $B$.

== (a) Un échiquier $3 times 2^n$

*Base $n=1$.* Le rectangle $3 times 2$ se pave par deux triminos, comme ci-dessus.

*Hérédité.* Supposons qu'un rectangle $3 times 2^n$ se pave. On coupe le rectangle $3 times 2^(n+1)$ en *deux* rectangles $3 times 2^n$, que l'on pave chacun par hypothèse de récurrence.

Ainsi, pour tout $n>=1$, le rectangle $3 times 2^n$ peut être pavé.

== (b) Un échiquier $6 times 2^n$

On le découpe horizontalement en deux rectangles $3 times 2^n$. Chacun se pave par (a). *Réponse : oui* pour tout $n>=1$.

== (c) Un échiquier $6^n times 6^n$

Pour $n>=1$, la hauteur $6^n$ est multiple de $3$ et la largeur $6^n$ est multiple de $2$. On quadrille donc la surface en rectangles $3 times 2$, tous pavables par deux triminos en L.

*Réponse : oui* pour tout $n>=1$.

== Remarque de provenance

Les photographies établissent la base et l'hérédité pour (a). Les pavages explicites de (b) et (c) sont des *compléments déduits de l'énoncé* et du pavage élémentaire $3 times 2$ ; ils ne sont pas attribués au corrigé manuscrit.
