// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 6 — Construire des entiers qui satisfont une égalité

*Énoncé.* Pour tout $n in NN$ avec $n>=14$, montrer qu'il existe $k,k' in NN$ tels que $n=3k+8k'$.

== Comprendre l'objectif

L'énoncé demande une *existence*. Nous devons donner des valeurs de $k$ et $k'$ pour chaque $n>=14$, vérifier l'égalité *et* vérifier que ces valeurs sont naturelles. Trouver une formule qui donne un entier négatif ne suffirait pas.

Pourquoi trois cas ? La division euclidienne par $3$ dit que tout $n in NN$ s'écrit
$
n=3r+s, quad r in NN, quad s in {0,1,2}.
$
Les restes $0$, $1$ et $2$ couvrent donc toutes les possibilités.

== Preuve par cas

*Cas 1 :* $n=3r$. Choisissons $k=r$ et $k'=0$. Alors
$
3k+8k'=3r=n.
$
Ces deux nombres appartiennent à $NN$.

*Cas 2 :* $n=3r+1$. Pour obtenir un reste $1$ avec le terme $8k'$, on peut choisir $k'=2$, car $16=3 dot 5+1$. Ainsi
$
n=3r+1=3(r-5)+8 dot 2.
$
Prenons $k=r-5$, $k'=2$. Reste à vérifier $k>=0$ : comme $3r+1=n>=14$ et $r$ est entier, on a $r>=5$. Donc $r-5 in NN$.

*Cas 3 :* $n=3r+2$. Cette fois, $8=3 dot 2+2$ : choisissons $k'=1$. Alors
$
n=3r+2=3(r-2)+8.
$
Prenons $k=r-2$, $k'=1$. Comme $3r+2=n>=14$, on a $r>=4$, donc $r-2 in NN$.

Dans chacun des trois cas, les valeurs choisies sont dans $NN$ et vérifient l'égalité. La proposition est démontrée.

== À retenir — la vérification d'une existence

Pour établir $exists k,k' in NN$, il faut explicitement :
+ proposer des valeurs pour $k,k'$ ;
+ vérifier l'égalité annoncée ;
+ justifier leur appartenance à $NN$.

L'hypothèse $n>=14$ est utile *précisément pour garantir la positivité* de $r-5$ et $r-2$.
