// source-confidence: high

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 9 — Jeu de dépilage

On commence avec une pile contenant $n$ boîtes.

À chaque étape, une pile de $a+b$ boîtes est séparée en deux piles non vides
de tailles $a$ et $b$. Cette division rapporte

$
a b
$

points.

Le jeu s'arrête lorsque l'on obtient $n$ piles contenant chacune une seule
boîte.

Montrons que, quelle que soit la manière de dépiler, le score total vaut

$
(n(n-1))/2.
$

== Exemple : $n=8$

Une manière possible de dépiler est :

$
8 -> (5,3),
$

puis

$
5 -> (1,4),
quad
4 -> (2,2),
quad
3 -> (2,1),
$

et enfin chaque pile de $2$ est séparée en deux piles de $1$.

Les gains successifs sont

$
15, 4, 4, 2, 1, 1, 1.
$

Le gain total vaut donc

$
15+4+4+2+1+1+1
=
28
=
(8 dot 7)/2.
$

== Preuve par induction forte

Notons $G(n)$ le score total obtenu en dépilant complètement une pile de
$n$ boîtes.

Nous montrons que, pour tout $n>=1$,

$
G(n)=n(n-1)/2.
$

*Base.* Pour $n=1$, aucune division n'est effectuée. Donc

$
G(1)=0
=
(1 dot 0)/2.
$

*Hypothèse d'induction.* Supposons que, pour un entier $n>=1$,

$
forall k, quad 1<=k<=n => G(k)=k(k-1)/2.
$

*Hérédité.* Considérons une pile de $n+1$ boîtes.

La première division produit deux piles non vides de tailles $a$ et $b$ avec

$
a+b=n+1.
$

Comme

$
1<=a<=n
quad "et" quad
1<=b<=n,
$

l'hypothèse d'induction s'applique aux deux sous-piles.

Le gain de la première division est

$
a b.
$

Le dépilage complet des deux sous-piles rapporte ensuite

$
G(a)=a(a-1)/2
$

et

$
G(b)=b(b-1)/2.
$

Ainsi,

$
G(n+1)
=
a b
+
a(a-1)/2
+
b(b-1)/2.
$

On met au même dénominateur :

$
G(n+1)
=
(2 a b+a^2-a+b^2-b)/2.
$

Or

$
2 a b+a^2+b^2=(a+b)^2
$

et

$
a+b=n+1.
$

Donc

$
G(n+1)
=
((a+b)^2-(a+b))/2
=
((n+1)n)/2.
$

La valeur obtenue ne dépend pas du choix de $a$ et $b$.

Par induction,

$
forall n>=1,
quad
G(n)=n(n-1)/2.
$

Ainsi, toute manière de dépiler $n$ boîtes conduit au même score :

$
n(n-1)/2.
$
