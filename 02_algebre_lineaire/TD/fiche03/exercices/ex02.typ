// source-confidence: high
// source-note: énoncé officiel TD03 et résolution manuscrite de l'exercice 2, complétés par les justifications théoriques discutées.
// source-note: les rappels sur la transposée, les vecteurs normaux et le pivot de Gauss sont des explications additionnelles.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 2 — Projection sur un plan parallèlement à une droite

Soit $phi : RR^3 -> RR^3$ définie par
$
phi(x,y,z)=(-3x+2y-4z, 2x+2z, 4x-2y+5z).
$

Dans la base canonique, sa matrice est
$
A=mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
).
$

L'énoncé demande :
+ de prouver que $phi$ est une projection sur un plan $P$, parallèlement à une droite $D$ ;
+ de donner une équation cartésienne de $P$ et un vecteur directeur de $D$.

== 1. Prouver qu'il s'agit d'une projection

*Critère :* un endomorphisme est une projection si et seulement si $phi compose phi=phi$, soit, matriciellement, $A^2=A$.

Par multiplication matricielle :
$
A^2 =
mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
)
mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
)
=
mat(
  -3,2,-4;
  2,0,2;
  4,-2,5
)
=A.
$

Ainsi, $phi$ est une projection. Pour toute projection :
$
RR^3="Im"(phi) "⊕" "Ker"(phi).
$

Elle projette sur son image parallèlement à son noyau.

== 2. Calculer le noyau et le rang

On résout $A v=0$, c'est-à-dire
$
cases(
  -3x+2y-4z=0,
  2x+2z=0,
  4x-2y+5z=0.
)
$

La deuxième équation donne $x=-z$. En remplaçant dans la première, on obtient $2y-z=0$, donc $z=2y$ puis $x=-2y$. La troisième équation est alors automatiquement satisfaite.

Par conséquent :
$
(x,y,z)=y(-2,1,2), quad y in RR,
$
d'où
$
"Ker"(phi)="Vect"((-2,1,2)),
quad dim("Ker"(phi))=1.
$

Le théorème du rang donne
$
dim("Im"(phi))=3-dim("Ker"(phi))=2.
$

*Conclusion géométrique :* $P="Im"(phi)$ est un plan vectoriel et $D="Ker"(phi)$ est une droite vectorielle. Le vecteur
$
boxed(d=(-2,1,2))
$
est donc *un vecteur directeur de $D$*.

== 3. Trouver une équation cartésienne du plan image

*Principe :* les colonnes de $A$ engendrent $P="Im"(phi)$. Un *vecteur normal* au plan est un vecteur non nul $n=(a,b,c)$ perpendiculaire à chaque colonne.

Ces conditions d'orthogonalité s'écrivent toutes en une seule équation :
$
boxed(A^T n=0).
$

En effet, les composantes de $A^T n$ sont les produits scalaires de $n$ avec chacune des colonnes de $A$.

Ici :
$
A^T=mat(
  -3,2,4;
  2,0,-2;
  -4,2,5
)
$
et on résout
$
cases(
  -3a+2b+4c=0,
  2a-2c=0,
  -4a+2b+5c=0.
)
$

La deuxième équation donne $a=c$ ; les autres donnent $a+2b=0$, soit $b=-a/2$.

En choisissant $a=2$, on obtient le vecteur normal
$
boxed(n=(2,-1,2)).
$

Un vecteur $v=(x,y,z)$ appartient à $P$ exactement lorsque $n dot v=0$ : cette équivalence vaut ici parce que $P$ est un plan vectoriel de dimension $2$, et que le sous-espace défini par $n dot v=0$ a aussi dimension $2$.

Ainsi :
$
boxed(P=\\{(x,y,z) in RR^3 : 2x-y+2z=0\\}).
$

*Attention :* $n$ est un vecteur _normal_ au plan, pas un vecteur directeur de la droite $D$ ; celui-ci a été trouvé dans le noyau.

== 4. Méthode complémentaire : obtenir une base du plan image

Les colonnes de $A$ sont
$
C_1=(-3,2,4), quad
C_2=(2,0,-2), quad
C_3=(-4,2,5).
$

L'élimination de Gauss sur les *lignes* de $A$ donne, par exemple, la forme échelonnée
$
mat(
  2,0,2;
  0,4,-2;
  0,0,0
).
$

Les colonnes pivots sont les colonnes $1$ et $2$. On sélectionne alors *les colonnes correspondantes de la matrice initiale*, et non celles de la matrice échelonnée.

On obtient
$
boxed("Im"(phi)="Vect"((-3,2,4),(2,0,-2))).
$

Ces deux vecteurs sont linéairement indépendants : le mineur $det(mat(-3,2;2,0))=-4$ est non nul.

On vérifie aussi la dépendance de la troisième colonne :
$
C_3=C_1-C_2/2.
$

*Différence des méthodes :*
- $A v=0$ donne le noyau, donc le vecteur directeur de $D$ et, via le théorème du rang, la dimension de $P$.
- $A^T n=0$ donne un vecteur normal à $P$, donc son équation cartésienne.
- Les colonnes pivots de $A$ donnent une base de $P$ (deux vecteurs directeurs indépendants).

== 5. Conclusion

Comme $A^2=A$,
$
RR^3=P "⊕" D
$
et $phi$ est la projection sur
$
boxed(P : 2x-y+2z=0)
$
parallèlement à
$
boxed(D="Vect"((-2,1,2))).
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* L'énoncé et les calculs de projection, de noyau et d'équation cartésienne viennent de l'exercice étudié et de la solution manuscrite. Les explications sur $A^T n=0$, la distinction vecteur normal / vecteur directeur et la méthode des colonnes pivots ont été ajoutées pour consolider la méthode.
]
