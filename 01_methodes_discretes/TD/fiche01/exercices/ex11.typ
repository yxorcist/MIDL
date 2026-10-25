// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 11 — Double d'un rationnel

*Énoncé.* Montrer que le double d'un nombre rationnel est rationnel.

== Idée

On utilise directement la définition d'un nombre rationnel : un quotient d'entiers avec un dénominateur non nul. L'objectif est de vérifier que multiplier ce quotient par $2$ conserve cette propriété.

== Preuve

Soit $x in QQ$. Il existe $a in ZZ$ et $b in ZZ$ avec $b != 0$ tels que
$
x=a/b.
$
Alors
$
2x=2 dot a/b=(2a)/b.
$
Or $2a in ZZ$ et $b in ZZ$ avec $b != 0$. Donc $(2a)/b$ est rationnel, d'où $2x in QQ$.

== À retenir

- Le nombre $x$ est choisi *arbitrairement* dans $QQ$ : la preuve vaut donc pour tous les rationnels.
- Pour montrer qu'un quotient est rationnel, inutile de le simplifier : seuls comptent le numérateur entier et le dénominateur entier non nul.
- La même méthode montre qu'un multiple entier de tout rationnel reste rationnel.
