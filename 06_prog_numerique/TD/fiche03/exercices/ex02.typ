#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= TD03 — Exercice 2 : différences divisées de Newton

== 1. Méthode

Six points $arrow$ polynôme de degré au plus $5$.

Les indices commencent à $0$ ; $D_(i,k)$ utilise les points de $i$ à $i+k$.

$
D_(i,0)=y_i,
quad
D_(i,k)=(D_(i+1,k-1)-D_(i,k-1))/(x_(i+k)-x_i)
$

*À retenir :* deux différences de l'ordre précédent (bas − haut), divisées par la différence entre les abscisses extrêmes.

== 2. Calcul des différences divisées

*Ordre 0* — recopier les ordonnées : $(-1, 2, 59, 4, 24, -53)$.

*Ordre 1* — utiliser deux points consécutifs :

$
D_(0,1)=(2-(-1))/(1-(-2))=1
$

$
D_(1,1)=(59-2)/(4-1)=19,
quad
D_(2,1)=(4-59)/(-1-4)=11
$

Les deux autres valeurs sont $D_(3,1)=5$ et $D_(4,1)=11$.

*Ordre 2* — utiliser les résultats de l'ordre 1 et les abscisses des trois points concernés :

$
D_(0,2)=(19-1)/(4-(-2))=3
$

$
D_(1,2)=(11-19)/(-1-1)=4,
quad
D_(2,2)=(5-11)/(3-4)=6,
quad
D_(3,2)=(11-5)/(-4-(-1))=-2
$

*Ordre 3* :

$
D_(0,3)=(4-3)/(-1-(-2))=1
$

$
D_(1,3)=(6-4)/(3-1)=1,
quad
D_(2,3)=(-2-6)/(-4-4)=1
$

*Ordres 4 et 5* — les différences deviennent nulles :

$
D_(0,4)=(1-1)/(3-(-2))=0,
quad
D_(1,4)=(1-1)/(-4-1)=0
$

$
D_(0,5)=(0-0)/(-4-(-2))=0
$

== 3. Tableau récapitulatif

#table(
  columns: 7,
  inset: 5pt,
  align: center,
  [*$x_i$*], [*$D_(i,0)$*], [*$D_(i,1)$*], [*$D_(i,2)$*], [*$D_(i,3)$*], [*$D_(i,4)$*], [*$D_(i,5)$*],
  [$-2$], [$-1$], [$1$], [$3$], [$1$], [$0$], [$0$],
  [$1$], [$2$], [$19$], [$4$], [$1$], [$0$], [],
  [$4$], [$59$], [$11$], [$6$], [$1$], [], [],
  [$-1$], [$4$], [$5$], [$-2$], [], [], [],
  [$3$], [$24$], [$11$], [], [], [], [],
  [$-4$], [$-53$], [], [], [], [], [],
)

== 4. Conclusion

Les *coefficients de Newton* sont les premiers éléments de chaque colonne :

$
(a_0,a_1,a_2,a_3,a_4,a_5)=(-1,1,3,1,0,0)
$

Le dernier coefficient non nul est $a_3=D_(0,3)=1$. Donc :

$
deg(P)=3
$

*Contrôle facultatif* — forme de Newton et développement :

$
P(x)=-1+(x+2)+3(x+2)(x-1)+(x+2)(x-1)(x-4)
$

$
P(x)=x^3-2x+3
$

On retrouve notamment $P(-4)=-53$.
