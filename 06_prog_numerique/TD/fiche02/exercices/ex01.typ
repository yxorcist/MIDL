// source-confidence: medium
// source-note: transcription des notes manuscrites du TD2 ; les matrices A et B de la question 1 ne sont pas visibles sur les photographies.
// source-uncertainty: les affirmations reliant dominance diagonale et positivité sont erronées sans hypothèses supplémentaires.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 1 — Dominance diagonale

== Définition

Une matrice carrée $A=(a_(i,j))$ est *à diagonale dominante (par lignes)* si, pour tout $i$,

$
abs(a_(i,i)) >= sum_(j != i) abs(a_(i,j)).
$

Elle est *à diagonale strictement dominante* lorsque, pour tout $i$,

$
abs(a_(i,i)) > sum_(j != i) abs(a_(i,j)).
$

== Réponses notées en séance

- La matrice $A$ de l'énoncé est à diagonale dominante, mais *pas strictement* dominante.
- La matrice $B$ de l'énoncé est *à diagonale strictement dominante*.

Les coefficients de ces deux matrices ne sont pas visibles sur la photographie ; il est donc impossible de vérifier numériquement ces deux classements à partir de cette source.

== Point de vigilance — Positivité

Les notes associent une matrice à diagonale strictement dominante à une matrice « définie positive » et une matrice à diagonale dominante à une matrice « semi-définie positive ».

*Ces implications ne sont pas valables pour une matrice quelconque.* La dominance diagonale stricte implique notamment l'inversibilité, mais ne suffit pas à elle seule à garantir la positivité.

Par exemple, la matrice $(-2)$ est strictement diagonale dominante et n'est pas définie positive.

Pour une matrice réelle *symétrique* dont les coefficients diagonaux sont *positifs*, la dominance diagonale stricte garantit en revanche qu'elle est définie positive.
