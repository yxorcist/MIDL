// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 12 — Irrationalité de $sqrt(6)$

*Énoncé.* Montrer que $sqrt(6)$ est irrationnel.

== Pourquoi un raisonnement par l'absurde ?

Dire « irrationnel » signifie : *impossible* de représenter ce réel par un quotient d'entiers de dénominateur non nul. On suppose le contraire et on exploite une fraction *irréductible*. Toute fraction rationnelle admet une écriture irréductible ; on a donc le droit de la choisir ainsi dès le départ.

== Preuve commentée

Supposons par l'absurde que $sqrt(6) in QQ$. Alors il existe $a,b in ZZ$, avec $b != 0$ et $a/b$ irréductible, tels que
$
sqrt(6)=a/b.
$
L'irréductibilité signifie que $a$ et $b$ n'ont pas de diviseur commun strictement supérieur à $1$, ou encore $pgcd(abs(a),abs(b))=1$.

Élevons l'égalité au carré, puis multiplions par $b^2$ :
$
6=a^2/b^2 quad arrow quad a^2=6b^2.
$
Le membre de droite est pair, donc $a^2$ est pair. *Pourquoi cela implique-t-il que $a$ est pair ?* Si $a$ était impair, $a=2r+1$ et $a^2=4r(r+1)+1$ serait impair. Par contraposée, si $a^2$ est pair, alors $a$ est pair.

Écrivons donc $a=2h$, avec $h in ZZ$. En remplaçant :
$
4h^2=6b^2 quad arrow quad 2h^2=3b^2.
$
Ainsi $3b^2$ est pair. Puisque $3$ est impair, $b^2$ est nécessairement pair : si $b^2$ était impair, son produit par $3$ le serait aussi. Donc, par le même argument que pour $a$, $b$ est pair.

Nous avons montré simultanément $2 divides a$ et $2 divides b$. Le numérateur et le dénominateur ont donc le diviseur commun $2$, ce qui *contredit le choix initial d'une fraction irréductible*.

Par conséquent,
$
sqrt(6) in.not QQ.
$

== À retenir — le point décisif

- L'égalité $2 divides a$ et $2 divides b$ n'est *pas* contradictoire pour une fraction quelconque ; elle l'est pour une fraction annoncée *irréductible*.
- Penser à justifier : carré pair $arrow$ entier pair.
- Schéma : supposer une fraction irréductible $arrow$ équation sur les carrés $arrow$ numérateur et dénominateur pairs $arrow$ contradiction.
