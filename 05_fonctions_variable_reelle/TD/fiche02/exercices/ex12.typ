// source-confidence: high
// source-note: énoncé officiel « TD Fonctions d’une variable réelle — Feuille 2 », exercice 12 (TD02_nombres-reels-suites-reelles.pdf).
// source-note: photos manuscrites 11269 et 11271 : définition de Cauchy et preuve par majoration d'une somme géométrique.
// source-reconstruction: explicitation des quantificateurs, choix de N et cas M=0.
// source-verification: la queue géométrique est bornée par M*2^(-p), indépendamment de h.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 2 — Exercice 12 — Sommes pondérées et suite de Cauchy

== Énoncé

Soit $(a_n)_(n>=0)$ une suite bornée de nombres réels. On définit, pour tout $n in NN$,

$
x_n=sum_(k=0)^n a_k 2^(-k).
$

Montrer, à partir de la définition, que $(x_n)$ est une suite de Cauchy.

== Définition utilisée

Une suite réelle $(x_n)$ est de Cauchy si

$
forall epsilon>0,
exists N in NN,
forall p>=N,
forall h in NN,
abs(x_(p+h)-x_p)<epsilon.
$

Cette écriture avec un indice $p$ et un décalage $h$ est équivalente à la définition usuelle avec deux indices $n,m>=N$.

== Démonstration

Comme $(a_n)$ est bornée, il existe $M>=0$ tel que

$
forall j in NN,
quad abs(a_j)<=M.
$

*Cas $M=0$.* Tous les coefficients $a_j$ sont nuls, donc $x_n=0$ pour tout $n$. La suite est constante, donc de Cauchy.

*Cas $M>0$.* Soit $epsilon>0$. Pour $p in NN$ et $h in NN$, on calcule la différence :

$
x_(p+h)-x_p
=
sum_(j=p+1)^(p+h) a_j 2^(-j).
$

Si $h=0$, cette somme est vide et la différence est nulle.

Pour $h>=1$, l'inégalité triangulaire donne

$
abs(x_(p+h)-x_p)
<=
sum_(j=p+1)^(p+h) abs(a_j) 2^(-j)
$

$
<= M sum_(j=p+1)^(p+h) 2^(-j).
$

On majore cette somme finie par une somme géométrique infinie :

$
sum_(j=p+1)^(p+h) 2^(-j)
<=sum_(j=p+1)^infinity 2^(-j)
$

$
= 2^(-p-1)sum_(r=0)^infinity (1/2)^r
= 2^(-p-1) 1/(1-1/2)
=2^(-p).
$

Ainsi, pour tout $h in NN$,

$
abs(x_(p+h)-x_p)<=M 2^(-p).
$

Comme $2^(-p)->0$, on choisit $N in NN$ assez grand pour que

$
M 2^(-N)<epsilon.
$

Par exemple, n'importe quel entier $N>log_2(M/epsilon)$ convient (avec $N>=0$).

Pour tout $p>=N$ et tout $h in NN$,

$
abs(x_(p+h)-x_p)<=M 2^(-p)<=M 2^(-N)<epsilon.
$

On a donc démontré

$
forall epsilon>0,
exists N in NN,
forall p>=N,
forall h in NN,
abs(x_(p+h)-x_p)<epsilon.
$

La suite $(x_n)$ est *de Cauchy*. Puisque l'espace des nombres réels est complet, elle *converge*.

== Méthode à retenir

1. Écrire $x_(p+h)-x_p$ comme la somme des termes situés après le rang $p$.
2. Utiliser la bornitude de $(a_n)$ pour remplacer les coefficients par $M$.
3. Majoriser le reste par la queue d'une série géométrique.
4. Choisir $N$ pour que cette majoration devienne strictement inférieure à $epsilon$, uniformément en $h$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Fidélité à la copie.* Le cœur du calcul $abs(x_(p+h)-x_p)<=M 2^(-p)$ et la conclusion de Cauchy figurent sur les photos. Le choix de $N$ et la gestion de $M=0$ sont explicités pour obtenir une preuve rigoureuse.
]
