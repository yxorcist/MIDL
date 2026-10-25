// source: TD01_preuves.pdf ; correction enrichie et points délicats vérifiés
#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 17 — Nombres premiers

*Rappels de l'énoncé.* Un entier $p>1$ est premier s'il n'a que $1$ et lui-même pour diviseurs positifs. Un entier $n>=2$ non premier est dit décomposable. Tout entier $a>1$ admet au moins un diviseur premier (conséquence de la factorisation en nombres premiers).

== (a) Factorisation de $180$

On divise successivement par les plus petits nombres premiers possibles :
$
180=2 dot 90=2 dot 2 dot 45=2^2 dot 3 dot 15=2^2 dot 3^2 dot 5.
$
Tous les facteurs finaux ($2$, $3$, $5$) sont premiers et présentés dans l'ordre croissant. Donc
$
180=2^2 dot 3^2 dot 5.
$

*À retenir.* Une factorisation première se termine seulement quand tous les facteurs sont premiers. Le classement croissant facilite sa lecture.

== (b) Montrer qu'il existe une infinité de nombres premiers

*Idée.* Supposons que nous ayons listé *tous* les nombres premiers. Construisons un nombre $N$ qui laisse le reste $1$ lorsqu'on le divise par chacun d'eux. Un tel nombre possède pourtant un diviseur premier : contradiction.

*Preuve par l'absurde.* Supposons que l'ensemble des nombres premiers soit fini :
$
P={p_1,p_2,...,p_r}.
$
Notons soigneusement la distinction :
$
M=p_1 p_2 dots.c p_r quad "et" quad N=M+1.
$
Le symbole $P$ désigne *l'ensemble*, tandis que $M$ désigne *le produit numérique* ; l'écriture $q divides P$ n'a pas de sens.

Comme $N>1$, il possède un diviseur premier $q$. Puisque nous avons supposé que la liste $P$ contenait tous les nombres premiers, $q$ est l'un des $p_i$. Par conséquent $q divides M$, car $M$ contient $q$ comme facteur.

Mais $q divides N$ également, par notre choix de $q$. Or, si un entier divise deux nombres, il divise leur différence :
$
q divides (N-M).
$
D'après la construction de $N$, on a $N-M=1$, d'où $q divides 1$. Impossible : $q$ est premier, donc $q>=2$ et ne peut diviser $1$.

La supposition d'une liste finie est fausse. Il existe une infinité de nombres premiers.

*À retenir.* Ne pas supposer que $N$ est lui-même premier ! Il suffit que $N>1$ possède *un diviseur premier*. La contradiction vient de $q divides N$ et $q divides M$, donc $q divides (N-M)=1$.

== (c) Le nombre $m^2-n^2$ est-il toujours décomposable ?

*Méthode.* La question « est-il toujours ... ? » suggère de chercher d'abord un *contre-exemple*. Il suffit d'un seul couple autorisé donnant un résultat non décomposable pour réfuter l'affirmation universelle.

Pour $m=4$ et $n=3$, on a $m>n$ et
$
m^2-n^2=16-9=7,
$
qui est premier. Donc *la différence des carrés n'est pas toujours décomposable*. Ce contre-exemple suffit à répondre à la question.

*Analyse complémentaire (pour comprendre).* La factorisation
$
m^2-n^2=(m-n)(m+n)
$
permet de préciser les possibilités.

- Si $m-n>1$, les deux facteurs sont supérieurs à $1$ ; le résultat est nécessairement décomposable.
- Si $m-n=1$, la différence des carrés est $m+n$. Elle est première *si et seulement si* $m+n$ est premier. Elle peut aussi être décomposable : $5^2-4^2=9$.
- *Cas limite :* si $m=1,n=0$, alors $m^2-n^2=1$. Or $1$ n'est *ni premier ni décomposable* selon la définition du cours ($n>=2$).

Ainsi, pour obtenir un nombre premier, il faut *simultanément* $m-n=1$ et $m+n$ premier. La première condition seule n'est pas suffisante.

== (d) Diviseur premier inférieur ou égal à $sqrt(n)$

*Attention à l'énoncé.* Si le sujet écrit « strictement inférieur à $sqrt(n)$ », cette formulation est fausse : pour $n=4$, l'unique diviseur premier est $2=sqrt(4)$. L'affirmation exacte est :
$
exists p " premier", quad p divides n quad "et" quad p<=sqrt(n).
$

*Objectif.* Nous cherchons *un* nombre premier $p$ vérifiant à la fois la divisibilité de $n$ et la borne $sqrt(n)$. Le facteur $a$ introduit ci-dessous n'est pas l'objectif : c'est un intermédiaire qui permet de trouver $p$.

*Étape 1 — Utiliser « décomposable ».* Comme $n$ est décomposable, il existe des entiers $a,b>1$ tels que
$
n=a b.
$
Cela nous donne deux diviseurs de $n$, sans garantie qu'ils soient premiers ou assez petits.

*Étape 2 — Obtenir un facteur assez petit.* Si $a>sqrt(n)$ *et* $b>sqrt(n)$, alors en multipliant ces inégalités positives :
$
n=a b>sqrt(n) sqrt(n)=n,
$
ce qui est impossible. Donc *au moins un* facteur vérifie $a<=sqrt(n)$ ou $b<=sqrt(n)$.

*Étape 3 — Choisir son nom.* Les deux facteurs sont interchangeables puisque $a b=b a$. Nous appelons $a$ celui qui est inférieur ou égal à $sqrt(n)$. C'est le sens de « sans perte de généralité » : si c'était initialement $b$, il suffit d'échanger les lettres. Désormais,
$
1<a<=sqrt(n) quad "et" quad a divides n.
$

*Étape 4 — Obtenir enfin un nombre premier.* Le théorème de factorisation en nombres premiers garantit que *tout entier supérieur à $1$ possède un diviseur premier*. Comme $a>1$, nous *choisissons* un tel diviseur premier et l'appelons $p$ :
$
p " premier" quad "et" quad p divides a.
$
Ce n'est *pas* un nombre premier arbitraire. Nous le choisissons *parmi les diviseurs premiers de $a$*. Si $a$ est premier, on peut prendre directement $p=a$ ; sinon, on prend l'un de ses facteurs premiers.

*Étape 5 — Vérifier $p divides n$.* De $p divides a$, il existe un entier $r$ avec $a=p r$. De $n=a b$, on tire
$
n=(p r) b=p (r b).
$
Le produit $r b$ est entier : donc $p divides n$. C'est la transitivité de la divisibilité ($p divides a$ et $a divides n$ impliquent $p divides n$).

*Étape 6 — Vérifier la borne.* Un diviseur positif d'un entier positif ne le dépasse pas : de $p divides a$ on déduit $p<=a$. Or $a<=sqrt(n)$, donc
$
p<=a<=sqrt(n).
$

*Conclusion.* Nous avons construit $p$ et contrôlé *les trois exigences* : $p$ est premier, $p divides n$, et $p<=sqrt(n)$. La propriété corrigée est démontrée.

*Exemple qui aide à comprendre la construction.* Pour $n=60$, on peut écrire $60=6 dot 10$. Comme $6<=sqrt(60)$, on choisit $a=6$. Ce $a$ n'est pas premier, mais $p=2$ est un diviseur premier de $6$. Donc $2 divides 60$ et $2<=6<=sqrt(60)$.

*Schéma à retenir.* Composite $n$ $arrow$ facteur $a<=sqrt(n)$ $arrow$ diviseur premier $p divides a$ $arrow$ $p divides n$ et $p<=sqrt(n)$. Ce sont les liens logiques entre ces étapes qui constituent la preuve.
