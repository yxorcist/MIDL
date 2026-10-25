// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 15 — Moyenne arithmétique et géométrique

*Énoncé.* Pour tous $x,y in RR_+$, montrer :
$
(x+y)/2>=sqrt(x y).
$

== Comprendre les hypothèses

La condition $x,y>=0$ est essentielle pour que $sqrt(x y)$ soit réelle et pour autoriser l'élévation au carré des deux membres sans inverser le sens de l'inégalité.

== Preuve par l'absurde (méthode travaillée)

Supposons qu'il existe $x,y>=0$ avec
$
(x+y)/2<sqrt(x y).
$
Les deux membres sont positifs ou nuls. En élevant au carré et en multipliant par $4>0$ :
$
(x+y)^2<4xy.
$
Développons, puis regroupons :
$
x^2+2xy+y^2<4xy,
$
$
x^2-2xy+y^2<0,
$
$
(x-y)^2<0.
$
C'est impossible : le carré d'un nombre réel est toujours supérieur ou égal à $0$. Notre supposition est donc fausse, et
$
(x+y)/2>=sqrt(x y).
$

== Une preuve directe plus rapide

L'inégalité $(x-y)^2>=0$ donne
$
(x+y)^2>=4xy.
$
Comme $x+y>=0$ et $2sqrt(xy)>=0$, on en déduit $x+y>=2sqrt(xy)$, puis la conclusion. L'égalité se produit exactement quand $x=y$.

== À retenir

- Pour prouver $A>=B$ par l'absurde, on suppose $A<B$.
- Contradiction-type : obtenir $(x-y)^2<0$.
- Au moment de prendre une racine carrée, toujours vérifier la non-négativité.
