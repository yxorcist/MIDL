// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 5 — Divisibilité et factorisation

*Énoncé.* Pour tout $n in NN$, montrer que $n(n^2-1)(n+2)$ est divisible par $4$.

== Pourquoi factoriser ?

Le terme $n^2-1$ est une différence de deux carrés. La factorisation $n^2-1=(n-1)(n+1)$ fait apparaître quatre entiers consécutifs. Leur divisibilité est bien plus simple à étudier que celle du polynôme développé.

== Preuve directe courte

$
n(n^2-1)(n+2)=(n-1)n(n+1)(n+2).
$
Parmi quatre entiers consécutifs, l'un est un multiple de $4$ (leurs restes modulo $4$ sont $0,1,2,3$ dans un certain ordre). Le produit contient donc un facteur divisible par $4$, et est lui-même divisible par $4$.

Cela fonctionne aussi pour $n=0$ ou $n=1$, lorsque le produit est nul : $0$ est divisible par $4$.

== Variante étudiée : disjonction selon la parité

- Si $n$ est pair, $n$ et $n+2$ sont tous les deux pairs : $n(n+2)$ est multiple de $4$.
- Si $n$ est impair, $n-1$ et $n+1$ sont tous les deux pairs : $(n-1)(n+1)$ est multiple de $4$.

Dans les deux cas, le produit des quatre facteurs est multiple de $4$.

== À retenir

- Face à un produit, *chercher une factorisation* avant de développer.
- Une conclusion plus forte est vraie : ce produit est même divisible par $8$. Parmi quatre entiers consécutifs, l'un est multiple de $4$ et au moins un autre est pair.
