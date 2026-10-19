// source-confidence: high
// source-note: sujet TD04_relations-ordres.pdf (exercice 1) + photos manuscrites 11073, 11075, 11078.
// source-reconstruction: le dessin des graphes est décrit exactement par la liste des sommets, boucles et flèches ; aucune flèche illisible n'est inventée.
// source-verification: compositions, fermeture transitive et relation réciproque recalculées par énumération sur A.
// source-correction: l'ensemble exact de R^(-1) compose R est déterminé par la définition existentielle, pas par un simple renversement de flèches.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 1 — Relation, composition et fermeture transitive

== Énoncé

Soit

$
A=\{2,3,4,5,6,8\}.
$

On définit une relation binaire $R$ sur $A$ par

$
a R b quad <=> quad a=b " ou " a=b+1.
$

Le graphe possède pour sommets les éléments de $A$ ; une flèche $a -> b$ correspond au couple $(a,b)$.

== 1. Graphe de $R$

Chaque sommet a une boucle, car $a R a$.

Les autres flèches sont

$
6 -> 5 -> 4 -> 3 -> 2.
$

Le sommet $8$ possède sa boucle, mais aucune flèche vers un autre sommet, car $7$ n'appartient pas à $A$.

Ainsi :

$
R=\{
(2,2),(3,3),(4,4),(5,5),(6,6),(8,8),
(3,2),(4,3),(5,4),(6,5)
\}.
$

*Procédure.* Tester les deux conditions du sujet : les six couples diagonaux $a=b$ ; puis les couples $a=b+1$ pour lesquels *les deux* valeurs appartiennent à $A$.

== 2. Calcul de $R^2=R compose R$

Par définition,

$
(x,z) in R compose R
quad <=> quad
exists y in A:
(x,y) in R " et " (y,z) in R.
$

Un chemin de longueur deux peut :

- utiliser des boucles et reproduire une flèche déjà présente ;
- utiliser deux flèches strictement descendantes pour produire un saut de deux unités.

Donc

$
R^2=R union \{(4,2),(5,3),(6,4)\}.
$

La liste complète est

$
R^2=\{
(2,2),(3,2),(3,3),
(4,2),(4,3),(4,4),
(5,3),(5,4),(5,5),
(6,4),(6,5),(6,6),(8,8)
\}.
$

*Graphe.* On conserve les boucles et les flèches de $R$, puis on ajoute

$
4 -> 2, quad 5 -> 3, quad 6 -> 4.
$

Par exemple, $6R5$ et $5R4$ entraînent $(6,4) in R^2$.

== 3. Fermeture transitive

La fermeture transitive de $R$ est

$
R^+=R union R^2 union R^3 union dots.
$

Le long de la chaîne $6 -> 5 -> 4 -> 3 -> 2$, tous les sommets peuvent atteindre les sommets qui sont placés plus à droite (plus petits), mais ne peuvent jamais en atteindre un plus grand.

Par conséquent,

$
R^+=\{(a,b) in A^2: a=b " ou " (a,b in \{2,3,4,5,6\} " et " a>b)\}.
$

La liste complète, avec les boucles, est

$
R^+=\{
(2,2),
(3,2),(3,3),
(4,2),(4,3),(4,4),
(5,2),(5,3),(5,4),(5,5),
(6,2),(6,3),(6,4),(6,5),(6,6),
(8,8)
\}.
$

*Graphe.* Dessiner toutes les flèches $a -> b$ pour $a,b in \{2,3,4,5,6\}$ et $a>=b$. Le sommet $8$ reste isolé, avec sa boucle.

La relation initiale étant déjà réflexive, la fermeture transitive est également la fermeture réflexive-transitive.

== 4. Relation réciproque et $R^(-1) compose R$

La réciproque est obtenue en inversant chaque couple :

$
(a,b) in R^(-1) quad <=> quad (b,a) in R.
$

Ainsi,

$
R^(-1)=\{
(2,2),(3,3),(4,4),(5,5),(6,6),(8,8),
(2,3),(3,4),(4,5),(5,6)
\}.
$

Son graphe a toutes les boucles et la chaîne renversée

$
2 -> 3 -> 4 -> 5 -> 6.
$

Pour composer la réciproque *après* $R$, on écrit :

$
(x,z) in R^(-1) compose R
$

$
<=> exists y in A:
(x,y) in R " et " (y,z) in R^(-1)
$

$
<=> exists y in A:
x R y " et " z R y.
$

Autrement dit, $x$ et $z$ possèdent un *successeur commun* pour $R$.

Chaque sommet est en relation avec lui-même. Deux sommets consécutifs de la chaîne peuvent également avoir un successeur commun. On obtient exactement

$
R^(-1) compose R
=
\{(a,a):a in A\}
union
\{
(2,3),(3,2),
(3,4),(4,3),
(4,5),(5,4),
(5,6),(6,5)
\}.
$

*Contrôle.* $(2,3)$ appartient à la composée parce que $2R2$ et $3R2$. En revanche, $(2,4)$ n'en fait pas partie : aucun $y$ n'est successeur commun de $2$ et de $4$.

*Graphe.* Toutes les boucles et, entre chaque couple de sommets consécutifs parmi $2,3,4,5,6$, une flèche dans les *deux sens*. Le sommet $8$ reste uniquement relié à lui-même.

== Fiche méthode

1. Relation : tester la condition sur les deux coordonnées.
2. Composition : suivre deux flèches dans l'ordre prescrit ; vérifier qu'il existe un sommet intermédiaire.
3. Fermeture transitive : rajouter toutes les flèches correspondant aux chemins de longueur quelconque.
4. Réciproque : renverser chaque flèche.
5. Composition avec une réciproque : réécrire explicitement l'existence du sommet intermédiaire avant de lister les couples.
