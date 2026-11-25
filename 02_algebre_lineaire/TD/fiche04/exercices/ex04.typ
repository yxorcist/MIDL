// source-confidence: high
// source-note: TD04_changements-de-bases-diagonalisation.pdf, exercice 4 (examen intermédiaire 2017–2018).
// source-note: photos 13258 et 13264 : projection, matrice dans une base adaptée, passage et images de u, w.
// source-correction: l'entrée (1,3) du résultat manuscrit est erronée : -10 (non +10), donc phi(w)=(-11,1,-5) et non (9,1,-5).
// source-verification: P A P^-1 et M²=M recalculés.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 4 — Projection sur un plan parallèlement à une droite

Dans $RR^3$, soient $u_1=(3,2,0)$, $u_2=(1,-1,1)$, $u_3=(2,0,1)$. On admet que $cal(B)=(u_1,u_2,u_3)$ est une base. Posons $U="Vect"(u_1,u_2)$ et $D="Vect"(u_3)$ : on a $RR^3=U+D$ (somme directe). Soit $phi$ la projection sur $U$ parallèlement à $D$.

== 1. Matrice dans la base adaptée

Puisque
$
phi(u_1)=u_1, quad phi(u_2)=u_2, quad phi(u_3)=0,
$
la matrice est
$
A="Mat"_cal(B)(phi)=mat(1,0,0;0,1,0;0,0,0).
$

== 2(a). Matrice de passage

La base canonique est notée $cal(E)$. La matrice dont les colonnes sont les vecteurs de $cal(B)$ dans $cal(E)$ est
$
P=mat(3,1,2;2,-1,0;0,1,1).
$
Elle est inversible et
$
P^(-1)=mat(1,-1,-2;2,-3,-4;-2,3,5).
$

== 2(b). Formule

Puisque $[v]_cal(E)=P[v]_cal(B)$, on a
$
M="Mat"_cal(E)(phi)=P A P^(-1).
$

== 2(c). Calculer $M$

Un produit donne
$
P A=mat(3,1,0;2,-1,0;0,1,0),
$
d'où
$
M=mat(5,-6,-10;0,1,0;2,-3,-4).
$

On vérifie que $M^2=M$ (propriété d'une projection) et $"tr"(M)=2$.

== 3. Images de deux vecteurs

Le premier vecteur est donné par *ses coordonnées dans $cal(B)$* :
$
[u]_cal(B)=mat(1;1;1).
$
Alors $u=u_1+u_2+u_3$, donc
$
phi(u)=u_1+u_2=(4,1,1).
$

Le second vecteur $w$ a pour coordonnées *dans la base canonique* $(1,1,1)$. Il faut employer $M$ :
$
[phi(w)]_cal(E)=M mat(1;1;1)=mat(-11;1;-5).
$

Les deux triplets $(1,1,1)$ sont dans des bases différentes et ne désignent pas le même vecteur.

== Erreur de calcul de la photographie

La dernière multiplication de la copie donne $+10$ au lieu de $-10$ dans la case (1,3) de $M$ et entraîne le résultat incorrect $(9,1,-5)$. Le résultat corrigé est $(-11,1,-5)$ ; la matrice avec $+10$ ne vérifie même pas $phi(u_3)=0$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Photos 13258 et 13264 ; données de l'énoncé officiel TD04, exercice 4. Les produits matriciels et l'image de $w$ ont été recalculés indépendamment.
]
