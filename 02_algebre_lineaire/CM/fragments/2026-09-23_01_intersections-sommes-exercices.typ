= Intersections et sommes de sous-espaces : exercices

== Exercice 4 — bases, intersection et sommes

On considère dans $RR^3$ les sous-espaces

$
F = {(x,y,z) in RR^3 | 2x-y+4z=0}
$

et

$
G = {(x,y,z) in RR^3 | 3x-6y+3z=0}.
$

Pour $F$,

$
y = 2x+4z,
$

donc

$
(x,y,z)
= x(1,2,0)+z(0,4,1).
$

Ainsi,

$
F = "Vect"((1,2,0),(0,4,1))
$

et une base de $F$ est

$
B_F=((1,2,0),(0,4,1)).
$

Pour $G$,

$
x-2y+z=0,
$

donc

$
x=2y-z
$

et

$
(x,y,z)
= y(2,1,0)+z(-1,0,1).
$

Ainsi,

$
G = "Vect"((2,1,0),(-1,0,1))
$

et une base de $G$ est

$
B_G=((2,1,0),(-1,0,1)).
$

Pour déterminer $F inter G$, on résout simultanément

$
cases(
  2x-y+4z=0,
  x-2y+z=0,
).
$

On obtient

$
3y+2z=0.
$

En posant $z=3lambda$, on a

$
y=-2lambda,
quad
x=-7lambda.
$

Donc

$
F inter G = "Vect"((-7,-2,3)).
$

Par conséquent,

$
dim(F)=2,
quad
dim(G)=2,
quad
dim(F inter G)=1.
$

La formule de Grassmann donne

$
dim(F+G)
=dim(F)+dim(G)-dim(F inter G)
=2+2-1
=3.
$

Comme $F+G subset.eq RR^3$ et $dim(F+G)=3$,

$
F+G=RR^3.
$

La somme n'est pas directe car

$
F inter G != {0}.
$

== Exercice 5 — intersection et union de sous-espaces

Soient $F$ et $G$ deux sous-espaces vectoriels d'un même espace vectoriel $E$.

=== L'intersection $F inter G$ est un sous-espace vectoriel

On a

$
0_E in F
quad "et" quad
0_E in G,
$

donc

$
0_E in F inter G.
$

Soient $u,v in F inter G$ et $lambda in RR$.

Alors

$
u,v in F
quad "et" quad
u,v in G.
$

Comme $F$ et $G$ sont des sous-espaces,

$
u+v in F,
quad
lambda u in F,
$

et

$
u+v in G,
quad
lambda u in G.
$

Donc

$
u+v in F inter G
quad "et" quad
lambda u in F inter G.
$

Ainsi $F inter G$ est un sous-espace vectoriel de $E$.

=== Condition pour que $F union G$ soit un sous-espace

Si

$
F subset.eq G,
$

alors

$
F union G=G,
$

donc $F union G$ est un sous-espace.

De même, si

$
G subset.eq F,
$

alors

$
F union G=F.
$

Réciproquement, supposons que $F union G$ soit un sous-espace et que ni $F subset.eq G$ ni $G subset.eq F$.

Il existe alors

$
u in F \ G
quad "et" quad
v in G \ F.
$

Comme

$
u,v in F union G
$

et que $F union G$ est supposé être un sous-espace,

$
u+v in F union G.
$

Deux cas sont possibles.

Si $u+v in F$, alors, comme $u in F$,

$
v=(u+v)-u in F,
$

contradiction avec $v notin F$.

Si $u+v in G$, alors, comme $v in G$,

$
u=(u+v)-v in G,
$

contradiction avec $u notin G$.

Ainsi,

$
F union G " est un sous-espace"
iff
F subset.eq G " ou " G subset.eq F.
$

== Exercice 6 — déterminer une intersection par plusieurs méthodes

Les notes utilisent notamment le sous-espace

$
F="Vect"((1,0,1,0))
$

dans $K^4$, ainsi qu'un sous-espace défini par un système cartésien contenant

$
cases(
  2x-y+z-t=0,
  x-y+z=0,
).
$

=== Méthode 1 — résoudre le système simultané

Si

$
u=(x,y,z,t) in F,
$

alors il existe $lambda in K$ tel que

$
u=lambda(1,0,1,0).
$

Ainsi

$
x=z=lambda,
quad
y=t=0.
$

En injectant ces relations dans les équations du second sous-espace, les notes obtiennent

$
3lambda=0
quad "et" quad
2lambda=0,
$

donc

$
lambda=0.
$

Ainsi l'intersection se réduit au vecteur nul.

=== Méthode 2 — raisonner avec un générateur

Le vecteur générateur

$
w=(1,0,1,0)
$

ne satisfait pas les équations cartésiennes du second sous-espace.

Comme tout vecteur non nul de $F$ est un multiple non nul de $w$, aucun vecteur non nul de $F$ n'appartient à l'autre sous-espace.

L'intersection est donc réduite à

$
{0}.
$

=== Méthode 3 — comparer deux paramétrisations

On écrit un vecteur de chacun des deux sous-espaces sous forme de combinaison linéaire, puis on identifie les coordonnées.

Le système obtenu force tous les paramètres à être nuls, ce qui conduit encore à

$
F inter G={0}.
$

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source manuscrite.* Les exercices 4 et 5 sont entièrement lisibles sur les photographies. Pour l'exercice 6, les notes montrent surtout trois méthodes différentes pour établir qu'une intersection est réduite au vecteur nul ; seuls les coefficients clairement lisibles ont été conservés.
]
