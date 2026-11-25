// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 3.
 // source-note: premier lot FVR, photos « Exercice 3 » : équivalent de sin(x^alpha), continuité, cas de dérivabilité.
// source-verification: séparation correcte des trois régimes alpha>2, alpha=2, 1<alpha<2.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 3 — Régularité de $sin(x^alpha)/x$ au voisinage de $0$

Soit $alpha>1$ et la fonction $f_alpha:RR_+->RR$ définie par
$
f_alpha(0)=0,
quad
f_alpha(x)=sin(x^alpha)/x quad "si" x>0.
$

== 1. Continuité sur $RR_+$

La fonction $f_alpha$ est continue sur $]0,+infinity[$ par les opérations usuelles.

Lorsque $x->0^+$, on a $sin(x^alpha) sim x^alpha$, donc
$
f_alpha(x) sim x^(alpha-1).
$

Comme $alpha-1>0$,
$
lim_(x->0^+)f_alpha(x)=0=f_alpha(0).
$

La fonction est donc *continue sur $RR_+$*.

== 2. Dérivabilité à droite en $0$

Le taux d'accroissement est
$
(f_alpha(x)-f_alpha(0))/x
=sin(x^alpha)/x^2
sim x^(alpha-2).
$

Trois cas se présentent :

- *Si $alpha>2$*, $x^(alpha-2)->0$, donc $f'_(alpha,d)(0)=0$.
- *Si $alpha=2$*, $x^(alpha-2)=1$, donc $f'_(alpha,d)(0)=1$.
- *Si $1<alpha<2$*, $x^(alpha-2)->+infinity$ : le taux d'accroissement n'a pas de limite finie, donc $f_alpha$ n'est *pas dérivable à droite en $0$*.

== Synthèse

#table(
  columns: (1fr,1fr,1.5fr),
  inset: 6pt,
  [*Paramètre*],[*Continuité en $0$*],[*Dérivée à droite en $0$*],
  [$1<alpha<2$],[Oui],[N'existe pas (limite $+infinity$)],
  [$alpha=2$],[Oui],[$1$],
  [$alpha>2$],[Oui],[$0$],
)

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Sujet officiel et photographies de l'exercice 3. La valeur critique est $alpha=2$, pas $alpha=1$ (qui ne concerne que la continuité).
]
