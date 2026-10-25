// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 1 — Carrés et parité

*Énoncé.* Pour tout $n in NN$, montrer que $n^2$ est de la forme $4k$ ou $4k+1$, avec $k in NN$.

== Choix de la méthode

On cherche à décrire le carré de *tout* entier naturel. Le premier réflexe est de séparer les entiers selon leur parité : chaque entier est pair ou impair, sans troisième possibilité. La présence du « ou » dans le résultat ne suffit pas, à elle seule, à imposer un raisonnement par cas ; ici, ce sont les deux écritures possibles de $n$ qui rendent le calcul simple.

== Preuve par disjonction de cas

*Cas 1 :* $n$ est pair. Il existe $r in NN$ tel que $n=2r$. Alors
$
n^2=(2r)^2=4r^2.
$
En choisissant $k=r^2 in NN$, on obtient la première forme $n^2=4k$.

*Cas 2 :* $n$ est impair. Il existe $r in NN$ tel que $n=2r+1$. Alors
$
n^2=(2r+1)^2=4r^2+4r+1=4(r^2+r)+1.
$
En choisissant $k=r^2+r in NN$, on obtient la deuxième forme $n^2=4k+1$.

Tout entier naturel étant pair ou impair, les deux cas couvrent $NN$. La propriété est donc démontrée.

== À retenir

- Une preuve par cas doit couvrir *toutes* les possibilités.
- Le $k$ de l'énoncé est un entier dont on doit établir l'existence : ici on le construit explicitement ($r^2$ ou $r^2+r$). Utiliser deux lettres distinctes évite de confondre l'entier de départ et le témoin final.
- Le résultat signifie aussi qu'un carré entier a pour reste $0$ ou $1$ dans la division euclidienne par $4$.
