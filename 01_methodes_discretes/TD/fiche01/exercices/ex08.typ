// source: TD01_preuves.pdf ; enrichi à partir des échanges pédagogiques
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 8 — Montrer une impossibilité

*Énoncé.* Il n'existe pas d'entiers $n,m in ZZ$ tels que $18n+6m=1$.

== Pourquoi un raisonnement par l'absurde ?

On veut démontrer qu'aucun couple $(n,m)$ n'existe. Supposons donc qu'un tel couple existe, puis cherchons une conséquence impossible. Attention au domaine : l'énoncé parle d'entiers *relatifs* $ZZ$, et non seulement de naturels $NN$.

== Preuve par l'absurde

Supposons qu'il existe $n,m in ZZ$ tels que
$
18n+6m=1.
$
On factorise le membre de gauche :
$
18n+6m=6(3n+m).
$
Or $3n+m in ZZ$ puisque $n,m in ZZ$. Le membre de gauche est donc divisible par $6$. L'égalité donnerait
$
6(3n+m)=1,
$
donc $6 divides 1$, ce qui est impossible : aucun entier multiplié par $6$ ne vaut $1$.

Notre hypothèse est contradictoire. Il n'existe donc aucun couple d'entiers relatifs $(n,m)$ satisfaisant $18n+6m=1$.

== Autre argument court

$18n$ et $6m$ sont tous les deux pairs, donc leur somme est paire ; elle ne peut pas valoir $1$, qui est impair. La factorisation par $6$ fournit néanmoins une impossibilité plus précise.

== À retenir

- Pour réfuter une existence, supposer l'existence et faire apparaître une contradiction est un réflexe utile.
- Ne pas perdre les variables dans la factorisation : $18n+6m=6(3n+m)$, et non $6(3+1)$.
- Pour que $a divides b$, le quotient doit être un *entier*. C'est pourquoi $6$ ne divise pas $1$.
