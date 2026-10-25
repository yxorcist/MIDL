// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 10 — Somme de deux rationnels

*Énoncé.* Pour tous $x,y in QQ$, montrer que $x+y in QQ$.

== Stratégie

On veut montrer que la somme appartient à $QQ$. Il faut donc obtenir une fraction dont le numérateur et le dénominateur sont entiers, avec un *dénominateur non nul*. C'est une preuve directe fondée sur la définition de $QQ$.

== Preuve

Soient $x,y in QQ$. Il existe $a,c in ZZ$ et $b,d in ZZ$ avec $b != 0$ et $d != 0$ tels que
$
x=a/b quad "et" quad y=c/d.
$
En mettant au même dénominateur, on obtient
$
x+y=a/b+c/d=(a d+b c)/(b d).
$
Vérifions les conditions de la définition :
- $a d+b c in ZZ$, car les entiers sont stables par multiplication et addition ;
- $b d in ZZ$, et $b d != 0$ puisque $b != 0$ et $d != 0$.

La somme s'écrit donc comme quotient de deux entiers avec un dénominateur non nul. Par définition, $x+y in QQ$.

== À retenir

- L'expression correcte est $(a d+b c)/(b d)$ ; attention à ne pas remplacer par erreur $b c$ par $d c$.
- Le calcul d'une fraction ne suffit pas : il faut aussi *vérifier le type des nombres* et la non-nullité du dénominateur.
- Structure à reproduire : définition $arrow$ calcul $arrow$ contrôle des hypothèses $arrow$ conclusion.
