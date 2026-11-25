// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 2.
 // source-note: premier lot FVR, photo « Exercice 2 » : prolongement de x^x à droite en zéro et pente divergente.
// source-verification: comparaison de exp(x ln x)-1 à x ln x.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 2 — Prolongement de $x^x$ en $0$

On considère
$
f:RR_+^* -> RR,quad f(x)=x^x.
$

== 1. Prolongement par continuité

Pour $x>0$, on peut écrire
$
x^x=e^(x ln x).
$

On sait que
$
lim_(x->0^+)x ln x=0.
$
Par continuité de l'exponentielle,
$
lim_(x->0^+) x^x=e^0=1.
$

Le seul prolongement continu à $0$ est donc
$
f(0)=1.
$

== 2. Dérivabilité à droite en $0$

Pour $x>0$, le taux d'accroissement du prolongement est
$
(f(x)-f(0))/x=(e^(x ln x)-1)/x.
$

Posons $t=x ln x$, qui tend vers $0$ lorsque $x->0^+$. Alors
$
(e^t-1)/t -> 1,
$
et
$
(e^(x ln x)-1)/x
= (e^t-1)/t dot ln x.
$

Puisque $\ln x$ tend vers $-infinity$ et le premier facteur vers $1$, on obtient
$
lim_(x->0^+)(f(x)-f(0))/x=-infinity.
$

La dérivée à droite *n'existe pas comme nombre réel fini*. Le graphe admet une demi-tangente verticale au point $(0,1)$.

*Conclusion :* $f$ est prolongeable par continuité en $0$, mais son prolongement n'est *pas dérivable à droite en $0$*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Énoncé officiel et photo de l'exercice 2. La limite du quotient est justifiée par l'équivalent $e^t-1 "∼" t$ et non par une substitution indéterminée.
]
