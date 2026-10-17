// source-confidence: high
// source-note: photos 10959 et 10961, intitulées « TD3 — Ex1 » puis suite de la question b).
// source-note: les abscisses et les valeurs y_i sont reconstituées des bases de Lagrange et des coefficients écrits ; l'énoncé imprimé n'est pas reproduit.
// source-verification: calculs des polynômes P et des bases de Lagrange vérifiés indépendamment.
// source-uncertainty: le dénominateur de l_1 de la question b) est peu lisible dans la dernière substitution manuscrite ; la formule ci-dessous utilise la valeur mathématiquement correcte 2(1-a²).

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 1 — Interpolation de Lagrange

== Méthode rappelée sur la photographie

Pour cinq points $(x_i,y_i)$ dont les abscisses sont distinctes, on cherche un polynôme $P$ de degré au plus $4$ passant par les cinq points.

On introduit les polynômes de base

$
l_i(z)=product_(1 <= j <= 5, j != i) (z-x_j)/(x_i-x_j)
$

et

$
P(z)=sum_(i=1)^5 y_i l_i(z).
$

Ils vérifient $l_i(x_k)=1$ si $i=k$ et $0$ sinon. Ainsi $P(x_k)=y_k$.

Lorsque $y_i=0$, il n'est pas nécessaire de calculer le polynôme de base correspondant pour former $P$.

== a) Cinq abscisses fixes

Les calculs visibles utilisent

$
(x_1,x_2,x_3,x_4,x_5)=(-1,-1/2,0,1/2,1)
$

avec

$
(y_1,y_2,y_3,y_4,y_5)=(-3/2,0,1/4,0,0).
$

Comme seuls $y_1$ et $y_3$ sont non nuls,

$
P(z)=y_1 l_1(z)+y_3 l_3(z).
$

=== Polynôme $l_1$

$
l_1(z)
= (z+1/2)/(-1+1/2)
  dot z/(-1)
  dot (z-1/2)/(-1-1/2)
  dot (z-1)/(-1-1)
$

d'où

$
l_1(z)=2/3 z(z-1)(z^2-1/4).
$

=== Polynôme $l_3$

$
l_3(z)
=(z+1)/(0+1)
 dot (z+1/2)/(0+1/2)
 dot (z-1/2)/(0-1/2)
 dot (z-1)/(0-1)
$

donc

$
l_3(z)=4(z^2-1)(z^2-1/4).
$

=== Combinaison

$
P(z)
=-3/2 dot 2/3 z(z-1)(z^2-1/4)
 +1/4 dot 4(z^2-1)(z^2-1/4)
$

$
= (z^2-1/4) ( -z(z-1)+(z^2-1) )
$

$
= (z^2-1/4)(z-1).
$

Ainsi

$
box(P(z)=(z-1)(z^2-1/4)).
$

Ce polynôme est de degré $3$, donc de degré inférieur à $4$ comme requis pour cinq points.

== b) Abscisses dépendant d'un paramètre $a$

Les formules manuscrites correspondent aux cinq abscisses

$
(x_1,x_2,x_3,x_4,x_5)=(-1,-a,0,a,1)
$

et aux valeurs

$
(y_1,y_2,y_3,y_4,y_5)=((1-a^2)^2,0,a^4,0,(1-a^2)^2).
$

On suppose les cinq abscisses distinctes : par exemple $0<a<1$. Plus généralement, il suffit que $a != 0$, $a != 1$ et $a != -1$.

Seuls les indices $1$, $3$ et $5$ contribuent :

$
P(z)=y_1 l_1(z)+y_3 l_3(z)+y_5 l_5(z).
$

La copie donne les trois expressions, que l'on simplifie en

$
l_1(z)=z(z-1)(z^2-a^2)/(2(1-a^2)),
$

$
l_3(z)=(z^2-1)(z^2-a^2)/a^2,
$

$
l_5(z)=z(z+1)(z^2-a^2)/(2(1-a^2)).
$

En les remplaçant,

$
P(z)
=(1-a^2)^2 (l_1(z)+l_5(z))
+a^4 l_3(z).
$

Or

$
l_1(z)+l_5(z)
=z(z^2-a^2)/(2(1-a^2)) ((z-1)+(z+1))
$

$
=z^2(z^2-a^2)/(1-a^2).
$

Par conséquent,

$
P(z)
=(1-a^2)z^2(z^2-a^2)
+a^2(z^2-1)(z^2-a^2)
$

$
=(z^2-a^2)((1-a^2)z^2+a^2 z^2-a^2).
$

Finalement,

$
box(P(z)=(z^2-a^2)^2).
$

== Contrôle des points

Pour la question b), $P(-a)=P(a)=0$, $P(0)=a^4$ et

$
P(-1)=P(1)=(1-a^2)^2,
$

ce qui retrouve toutes les valeurs des données reconstituées.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Distinction source / vérification.* Les formules et les polynômes conclus sont visibles dans les photographies. La présentation des cinq couples sous forme de listes et le contrôle final ont été ajoutés pour rendre le calcul lisible.
]
