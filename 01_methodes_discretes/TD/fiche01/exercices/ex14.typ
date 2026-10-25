// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 14 — Inégalité triangulaire

*Énoncé.* Pour tous $x,y in RR$, montrer :
$
abs(x+y)<=abs(x)+abs(y).
$

== Pourquoi comparer les carrés ?

Les valeurs absolues rendent l'expression peu commode à développer directement. En revanche, $abs(t)^2=t^2$ pour tout réel $t$. Nous pouvons donc comparer les *carrés* des deux membres, puis revenir à l'inégalité initiale. Il faut vérifier qu'ils sont *positifs ou nuls*.

== Preuve directe

Pour tous $x,y in RR$,
$
abs(x+y)^2=(x+y)^2=x^2+2 x y+y^2.
$
Or, pour tout réel $t$, $t<=abs(t)$. En prenant $t=xy$, on obtient
$
2 x y<=2 abs(x y)=2 abs(x) abs(y).
$
Il en résulte
$
abs(x+y)^2
<=x^2+2 abs(x) abs(y)+y^2
=(abs(x)+abs(y))^2.
$
Enfin, $abs(x+y)>=0$ et $abs(x)+abs(y)>=0$. La fonction racine carrée étant croissante sur les réels positifs ou nuls, on peut prendre les racines carrées :
$
abs(x+y)<=abs(x)+abs(y).
$
C'est l'inégalité triangulaire.

== À retenir

- La justification est $2 x y<=2 abs(x y)$ pour *tous* $x,y$, et non seulement « $xy$ peut être négatif ».
- Le zéro est possible : dire « les deux membres sont *positifs ou nuls* », pas « strictement positifs ».
- Une inégalité entre carrés ne donne l'inégalité souhaitée qu'après avoir contrôlé le signe des quantités.
