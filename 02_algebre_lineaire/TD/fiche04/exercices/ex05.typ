// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 5.
// source-note: photos 13264 et 13266 : preuves de stabilité de {0}, E, Ker, Im et espaces propres.
// source-verification: démonstrations directement dérivées de la linéarité de phi.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 5 — Sous-espaces stables

Soit $phi:E->E$ un endomorphisme d'un espace vectoriel $E$.

Un sous-espace vectoriel $F$ est *stable par $phi$* si
$
forall u in F, quad phi(u) in F,
$
c'est-à-dire $phi(F) subset.eq F$.

== 1. Sous-espace nul

Par linéarité, $phi(0_E)=0_E$. L'espace vectoriel réduit à $0_E$ est donc stable.

== 2. Espace entier

Par définition d'un endomorphisme de $E$, pour tout $u in E$, $phi(u) in E$. Ainsi $E$ est stable.

== 3. Noyau

Soit $u in ker(phi)$. On a $phi(u)=0_E$, et $0_E in ker(phi)$. Ainsi $phi(u) in ker(phi)$, donc *le noyau est stable*.

== 4. Image

Soit $u in "Im"(phi)$. Il existe $v in E$ tel que $u=phi(v)$. Alors
$
phi(u)=phi(phi(v)) in "Im"(phi).
$
Ainsi *l'image est stable*.

== 5. Espace propre

Pour une valeur propre $lambda$, on pose
$
E_phi(lambda)=ker(phi-lambda "id"_E).
$
Si $u in E_phi(lambda)$, alors $phi(u)=lambda u$. Comme $E_phi(lambda)$ est un sous-espace vectoriel, $lambda u in E_phi(lambda)$, d'où
$
phi(E_phi(lambda)) subset.eq E_phi(lambda).
$

*Conclusion.* Les cinq sous-espaces proposés sont stables pour tout endomorphisme $phi$. Aucune hypothèse de diagonalisabilité n'est requise.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Photos 13264 et 13266 ; énoncé officiel TD04, exercice 5. Les cinq démonstrations sont vérifiées.
]
