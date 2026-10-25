// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 13 — Deux irrationnels dont la puissance est rationnelle

*Énoncé.* Montrer qu'il existe deux irrationnels $x$ et $y$ tels que $x^y$ soit rationnel.

== Pourquoi raisonner par cas ?

Il s'agit d'une *preuve d'existence*. Nous n'avons besoin que d'un couple $(x,y)$ satisfaisant les conditions. On utilise le fait connu $sqrt(2) in.not QQ$, et on pose
$
A=(sqrt(2))^(sqrt(2)).
$
Nous n'avons pas besoin de connaître la nature rationnelle ou irrationnelle de $A$ : l'alternative « rationnel ou irrationnel » permet d'obtenir une solution dans *chacun* des deux cas.

== Preuve

*Cas 1 :* supposons $A in QQ$. Choisissons
$
x=sqrt(2), quad y=sqrt(2).
$
Les deux nombres sont irrationnels et $x^y=A in QQ$. Nous avons notre couple.

*Cas 2 :* supposons $A in.not QQ$. Choisissons
$
x=A=(sqrt(2))^(sqrt(2)), quad y=sqrt(2).
$
Ils sont irrationnels (le premier par hypothèse de ce cas, le second parce que $sqrt(2)$ est irrationnel). En calculant :
$
x^y=((sqrt(2))^(sqrt(2)))^(sqrt(2))
=(sqrt(2))^(sqrt(2) dot sqrt(2))
=(sqrt(2))^2
=2 in QQ.
$
Ici l'identité $(u^v)^w=u^(v w)$ est applicable car $u=sqrt(2)>0$.

Dans les deux cas, il existe deux irrationnels dont la puissance est rationnelle. La propriété est démontrée.

== À retenir

- On *ne cherche pas* à déterminer si $A$ est rationnel : l'alternative suffit pour prouver l'existence.
- Le résultat est une preuve d'existence *non constructive* sous cette forme : elle ne décide pas lequel des deux couples présentés convient.
- Parenthéser soigneusement les puissances : $(u^v)^w$ n'est pas la même expression que $u^(v^w)$.
