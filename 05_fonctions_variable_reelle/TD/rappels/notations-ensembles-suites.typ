// source-confidence: medium
// source-note: these notation reminders were embedded in the pushed TD02 exercise file and are not part of the official exercise statements.
// source-uncertainty: the pushed line extending sup/inf to infinite values was internally inconsistent; only the unambiguous convention sup(X)=+∞ for a non-majorée set is retained.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Notations — suites et ensembles de fonctions

Pour un ensemble $X$,

$
X^NN
$

désigne l'ensemble des suites à valeurs dans $X$, c'est-à-dire les applications

$
NN -> X.
$

Plus généralement,

$
X^n
$

peut être identifié à l'ensemble des applications

$
{1,dots,n} -> X,
$

donc aux $n$-uplets

$
(x_1,dots,x_n)
$

avec $x_i in X$.

Si $X$ et $Y$ sont deux ensembles,

$
X^Y
$

désigne l'ensemble des applications

$
Y -> X.
$

#block(stroke: 0.8pt, inset: 8pt)[
  *Attention — convention étendue.*

  Lorsqu'une partie $X subset.eq RR$ n'est pas majorée, on peut écrire, dans les réels étendus,

  $
  sup(X)=+infinity.
  $
]
