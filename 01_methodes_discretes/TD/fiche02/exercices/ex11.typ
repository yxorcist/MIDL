// source-confidence: high
// source-note: TD02 Construction inductive, exercice 11 ; photographies des définitions de somme_m et de la factorielle.
 // source-reconstruction: la question 3, laissée vide dans la copie, est complétée directement à partir de l'énoncé.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 11 — Définitions inductives de fonctions

== Question 1 — Addition d'un entier fixé

Pour $m in NN$ fixé, définissons $"somme"_m:NN -> NN$ par $"somme"_m(n)=n+m$.

*Base :* $"somme"_m(0)=m$.

*Induction :* pour tout $n>=0$,

$ "somme"_m(n+1)="somme"_m(n)+1. $

== Question 2 — Factorielle

On définit $"Fact":NN -> NN$ par :

*Base :* $"Fact"(0)=1$.

*Induction :* pour tout $n>=0$,

$ "Fact"(n+1)=(n+1) "Fact"(n). $

Ceci redonne $"Fact"(n)=1 times 2 times dots times n$ pour $n>=1$.

== Question 3 — Somme des entiers naturels

Le sujet demande la définition inductive de

$ sigma(n)=sum_(k=0)^n k. $

*Base :* $sigma(0)=0$.

*Induction :* pour tout $n>=0$,

$ sigma(n+1)=sigma(n)+(n+1). $

En effet, séparer le dernier terme d'une somme conduit à

$ sum_(k=0)^(n+1) k = (sum_(k=0)^n k)+(n+1). $

En complément, cette récurrence conduit à la formule fermée

$ sigma(n)= (n(n+1))/2. $

*Note :* la question 3 ne figurait pas avec une solution complète sur les photographies ; elle a été résolue à partir de l'énoncé officiel.
