// source-confidence: high
// source-note: sujet imprimé TD03_interpolation-approximation.pdf, exercice 3, et photos 11009, 11007.
// source-correction: le sujet exige explicitement la méthode de Neville en x=3 ; le brouillon photographié applique plutôt les bases de Lagrange.
// source-reconstruction: la table de Neville complète ci-dessous est calculée indépendamment des photos, puis contrôlée par le polynôme interpolateur.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 3 — Exercice 3 — Interpolation par la méthode de Neville

== Données et objectif

Le sujet fournit quatre points :

#table(
  columns: 4,
  inset: 6pt,
  align: center,
  [*(x₀, y₀)*], [*(x₁, y₁)*], [*(x₂, y₂)*], [*(x₃, y₃)*],
  [(0, −3)], [(−5, 12)], [(−1, −4)], [(2, 5)],
)

On demande de calculer la valeur du polynôme interpolateur *en x = 3* par la méthode de Neville.

Les photographies utilisent le polynôme de Lagrange. Cette méthode est mathématiquement équivalente pour déterminer le polynôme, mais *la consigne d'exercice demande Neville*. La correction qui suit applique donc Neville.

== 1. Construire la table d'interpolation

On pose P(i,i)(x) = yᵢ.

Pour deux indices i et j avec i inférieur à j, la formule récursive de Neville est :

$
P_(i,j)(x)=
((x-x_j) P_(i,j-1)(x) - (x-x_i) P_(i+1,j)(x)) /
(x_i-x_j).
$

On fixe directement x = 3 : il suffit de calculer des valeurs numériques de P(i,j)(3), sans développer tous les polynômes.

== 2. Première étape — Interpolations sur deux points

Les valeurs de départ sont :

$
P_(0,0)(3)=-3,quad
P_(1,1)(3)=12,quad
P_(2,2)(3)=-4,quad
P_(3,3)(3)=5.
$

Pour les points 0 et 1 :

$
P_(0,1)(3)
=
((3-(-5))(-3)-(3-0)12)/(0-(-5))
=(-24-36)/5=-12.
$

Pour les points 1 et 2 :

$
P_(1,2)(3)
=
((3-(-1))12-(3-(-5))(-4))/(-5-(-1))
=(48+32)/(-4)=-20.
$

Pour les points 2 et 3 :

$
P_(2,3)(3)
=
((3-2)(-4)-(3-(-1))5)/(-1-2)
=(-4-20)/(-3)=8.
$

== 3. Deuxième étape — Interpolations sur trois points

$
P_(0,2)(3)
=
((3-(-1))(-12)-(3-0)(-20))/(0-(-1))
=(-48+60)/1=12.
$

$
P_(1,3)(3)
=
((3-2)(-20)-(3-(-5))8)/(-5-2)
=(-20-64)/(-7)=12.
$

== 4. Dernière étape — Quatre points

$
P_(0,3)(3)
=
((3-2)12-(3-0)12)/(0-2)
=(12-36)/(-2)=12.
$

On obtient donc :

$
P(3)=12.
$

== Table triangulaire récapitulative

#table(
  columns: (1.1fr, 1.1fr, 1.2fr, 1.2fr, 1.2fr, 1.2fr),
  inset: 4pt,
  align: center,
  [*xᵢ*], [*P(i,i)*], [*ordre 1*], [*ordre 2*], [*ordre 3*], [*Valeur*],
  [0], [−3], [−12], [12], [12], [*P(3)=12*],
  [−5], [12], [−20], [12], [], [],
  [−1], [−4], [8], [], [], [],
  [2], [5], [], [], [], [],
)

== Vérification indépendante par Lagrange

L'interpolation des quatre couples conduit au polynôme :

$
P(x)=x^2+2x-3.
$

Contrôle sur les quatre abscisses :

- P(0) = −3 ;
- P(−5) = 12 ;
- P(−1) = −4 ;
- P(2) = 5.

Ainsi P(3) = 9 + 6 − 3 = 12, ce qui confirme le tableau de Neville.

== Procédure d'examen

1. Conserver l'ordre des abscisses du sujet, même si elles ne sont pas triées.
2. Inscrire les valeurs yᵢ dans la première colonne.
3. Calculer les valeurs par paires consécutives (ordre 1), puis par triples (ordre 2), etc.
4. Utiliser *toujours les abscisses extrêmes du groupe* pour le dénominateur xᵢ − xⱼ.
5. Le dernier nombre du triangle est directement la valeur du polynôme au point demandé.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Source / ajout.* Le sujet donne les quatre couples et exige Neville ; le manuscrit propose une démarche par Lagrange. La table de Neville, la valeur numérique 12 et le contrôle du polynôme sont des calculs indépendants ajoutés pour fournir une correction conforme à l'énoncé.
]
