// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4 — Fonction plafond et parité

*Énoncé.* Montrer que, pour tout $n in NN$,
$
ceil(n/2)=cases(
n/2 & "si " n " est pair",
(n+1)/2 & "si " n " est impair".
)
$

== Définition à utiliser

$ceil(x)$ est le plus petit entier *supérieur ou égal* au réel $x$. Si $x$ est déjà entier, $ceil(x)=x$ ; si $x=r+1/2$ avec $r$ entier, $ceil(x)=r+1$.

== Preuve par cas

*Cas 1 :* $n$ pair. Écrivons $n=2r$, avec $r in NN$. Alors
$
ceil(n/2)=ceil((2r)/2)=ceil(r)=r=n/2,
$
car $r$ est entier.

*Cas 2 :* $n$ impair. Écrivons $n=2r+1$, avec $r in NN$. Alors
$
n/2=r+1/2.
$
Le réel $r+1/2$ se situe strictement entre les entiers consécutifs $r$ et $r+1$. Le plus petit entier qui lui est supérieur ou égal est donc $r+1$ :
$
ceil(n/2)=ceil(r+1/2)=r+1=(n+1)/2.
$

Les deux cas établissent la formule.

== À retenir

- Justifier le passage $ceil(r+1/2)=r+1$ par *la définition du plafond*, et non par une règle non expliquée.
- Dans une preuve par cas, faire apparaître à la fin *exactement l'expression de l'énoncé*.
- Ne pas confondre le plafond $ceil(x)$ avec l'arrondi à l'entier le plus proche.
