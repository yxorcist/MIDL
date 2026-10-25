// source: TD01_preuves.pdf ; enrichissement pédagogique
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 9 — Inclusion des naturels dans les rationnels

*Énoncé.* Montrer que $NN subset.eq QQ$.

== Traduction de l'énoncé

L'inclusion $NN subset.eq QQ$ signifie : *pour tout* $x in NN$, on a $x in QQ$. On ne doit pas montrer que les ensembles sont égaux, seulement que chaque naturel est rationnel.

== Preuve directe par définition

Soit $x in NN$ quelconque. On sait que $NN subset.eq ZZ$, donc $x in ZZ$. Écrivons
$
x=x/1.
$
Le numérateur $x$ est entier, et le dénominateur $1$ est un entier non nul. C'est exactement la définition d'un nombre rationnel. Ainsi $x in QQ$.

Comme $x$ était arbitraire, $NN subset.eq QQ$.

== À retenir

Une inclusion $A subset.eq B$ se prouve en partant d'un élément *quelconque* de $A$ et en montrant qu'il appartient à $B$. Pour prouver qu'un nombre est rationnel, écrire un quotient de deux entiers avec dénominateur non nul.
