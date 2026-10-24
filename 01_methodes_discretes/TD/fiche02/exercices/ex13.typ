// source-confidence: high
// source-note: énoncé officiel TD02_construction-inductive.pdf (L. Nourine), exercice 13.
// source-reconstruction: aucune correction manuscrite de cet exercice n'a été relevée ; solution construite directement à partir de la grammaire officielle.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 13 — Évaluation inductive d'une expression arithmétique

== Énoncé

L'ensemble $E$ des expressions arithmétiques sur $NN$ est défini par :

- *Base :* pour tout $n in NN$, l'expression $n$ appartient à $E$.
- *Règle d'addition :* si $E_1,E_2 in E$, alors $(E_1+E_2) in E$.
- *Règle de multiplication :* si $E_1,E_2 in E$, alors $(E_1 times E_2) in E$.

On cherche une définition inductive de la fonction d'évaluation $f:E -> NN$.

== Définition inductive de $f$

*Base :* pour tout entier naturel $n$,
$
f(n)=n.
$

*Induction :* pour tous $E_1,E_2 in E$,
$
f((E_1+E_2))=f(E_1)+f(E_2),
$
$
f((E_1 times E_2))=f(E_1) times f(E_2).
$

Ces règles déterminent la valeur d'une expression par les valeurs de ses sous-expressions.

== Exemple

Considérons l'expression $((2+3) times (1+4))$. Alors :
$
f((2+3))=2+3=5,
$
$
f((1+4))=1+4=5,
$
$
f(((2+3) times (1+4)))=5 times 5=25.
$

*Remarque.* Les parenthèses de la construction distinguent les arbres syntaxiques des expressions et garantissent la décomposition utilisée par cette évaluation récursive.
