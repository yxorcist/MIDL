// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 16 — Carré et valeur absolue

*Énoncé.* Pour tout $x in RR$, montrer $abs(x)^2=abs(x^2)$.

== Preuve par cas (méthode travaillée)

La définition de $abs(x)$ dépend du signe de $x$. Il faut couvrir *tous* les réels, y compris $x=0$.

*Cas 1 :* $x<0$. Alors $abs(x)=-x$ et
$
abs(x)^2=(-x)^2=x^2.
$
Comme $x^2>=0$, on a également $abs(x^2)=x^2$. Les deux membres sont égaux.

*Cas 2 :* $x>=0$. Alors $abs(x)=x$ et
$
abs(x)^2=x^2.
$
Là encore, $x^2>=0$ entraîne $abs(x^2)=x^2$ ; les deux membres sont égaux.

Les deux cas $x<0$ et $x>=0$ recouvrent l'ensemble $RR$. Par conséquent, $abs(x)^2=abs(x^2)$ pour tout réel $x$.

== Preuve directe plus courte

Pour tout réel $x$, on sait que $abs(x)^2=x^2$ et $x^2>=0$. Donc $abs(x^2)=x^2=abs(x)^2$.

== À retenir

- Une preuve par cas qui ne traite que $x<0$ et $x>0$ *oublie zéro*.
- Les cas $x<0$ et $x>=0$ sont exhaustifs.
- Le traitement par cas fonctionne, mais la preuve directe est la plus simple ici.
