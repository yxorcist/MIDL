// source-confidence: high
// source-note: exercice 5, fiche officielle TD02_construction-inductive.pdf ; photo 11489.
 // source-reconstruction: le point de rupture du raisonnement (de 1 à 2) est explicité à partir de l'énoncé complet.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5 — Où échoue la récurrence « tous du même âge » ?

== Raisonnement proposé

On prétend démontrer par induction la propriété

$ P(n): "dans tout groupe de " n " personnes, toutes ont le même âge". $

*Base.* $P(1)$ est vraie, puisque l'unique personne d'un groupe est du même âge qu'elle-même.

*Hérédité proposée.* Supposons $P(n)$ vraie. Pour $n+1$ personnes numérotées $1,dots,n+1$, on construit

- $G_1$, formé des $n$ premières personnes ;
- $G_2$, formé des $n$ dernières personnes.

L'hypothèse affirme que tous les membres de $G_1$ ont le même âge et que ceux de $G_2$ ont le même âge. Le raisonnement conclut que les deux âges sont égaux, car les groupes auraient une personne commune.

== Erreur : le passage de $n=1$ à $n=2$

Si $n=1$, on a

$ G_1=\{"personne 1"\}, quad G_2=\{"personne 2"\}. $

L'intersection $G_1 inter G_2$ est *vide* : personne ne transmet l'égalité des âges d'un groupe à l'autre.

Pour $n>=2$, les deux groupes ont effectivement $n-1>=1$ personnes communes, mais ce fait ne répare pas le premier passage $P(1) => P(2)$, qui est invalide.

*Conclusion :* le schéma d'induction échoue exactement à la première étape. La propriété générale est fausse : deux personnes peuvent avoir des âges différents.

*À retenir :* en induction, vérifier explicitement que l'argument d'hérédité est valable dès la *première valeur* et pas seulement à partir d'un rang plus grand.
