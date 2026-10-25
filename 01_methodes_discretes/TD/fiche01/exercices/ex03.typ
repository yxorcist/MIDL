// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3 — Produit de deux entiers consécutifs

*Énoncé.* Montrer que $n(n+1)$ est pair pour tout $n in NN$.

== Idée décisive

Les entiers $n$ et $n+1$ sont consécutifs. Ils ont des parités opposées : *l'un des deux est nécessairement pair*. Comme le produit d'un entier pair par un entier quelconque est pair, cela suffit.

== Preuve directe courte (à privilégier)

Soit $n in NN$. Parmi $n$ et $n+1$, l'un est divisible par $2$. Leur produit $n(n+1)$ est donc divisible par $2$, c'est-à-dire pair.

== Variante : preuve par cas

- Si $n=2r$, alors $n(n+1)=2(r(n+1))$, donc le produit est pair.
- Si $n=2r+1$, alors $n+1=2(r+1)$, donc $n(n+1)=2(n(r+1))$, et le produit est encore pair.

Les deux cas couvrent tous les entiers naturels.

== À retenir

La preuve la plus simple n'est pas nécessairement la plus longue. Quand une propriété immédiate des nombres consécutifs suffit, il n'est pas utile de développer les produits.
