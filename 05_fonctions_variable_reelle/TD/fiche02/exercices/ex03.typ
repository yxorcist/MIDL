// source-confidence: high
// source-note: TD02, exercice 3 ; preuve condensée selon les deux copies manuscrites du 10/11/2026.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 3

== Question 1

Soient $emptyset != A subset.eq B subset.eq RR$, avec $B$ borné. Montrer que les bornes de $A$ et $B$ existent et que
$
inf(B) <= inf(A) <= sup(A) <= sup(B).
$

*Démonstration.*

Comme $B$ est non vide et borné, $inf(B)$ et $sup(B)$ existent.

Puisque $A subset.eq B$,
$
forall a in A, quad inf(B) <= a <= sup(B).
$

Donc $A$ est borné. Comme $A != emptyset$, ses bornes $inf(A)$ et $sup(A)$ existent.

Or $inf(B)$ minore $A$ et $sup(B)$ majore $A$. Par définition des bornes,
$
inf(B) <= inf(A) quad "et" quad sup(A) <= sup(B).
$

Enfin, $A != emptyset$ implique $inf(A) <= sup(A)$. Ainsi,
$
inf(B) <= inf(A) <= sup(A) <= sup(B).
$

== Question 2

Soient $A,B subset.eq RR$ non vides tels que
$
forall a in A, forall b in B, quad a <= b.
$

Montrer que $sup(A)$ et $inf(B)$ existent et que $sup(A) <= inf(B)$.

*Démonstration.*

Pour tout $b in B$, tous les éléments de $A$ sont inférieurs ou égaux à $b$ : $A$ est majoré. Comme $A != emptyset$, $sup(A)$ existe.

Pour tout $a in A$, tous les éléments de $B$ sont supérieurs ou égaux à $a$ : $B$ est minoré. Comme $B != emptyset$, $inf(B)$ existe.

Pour chaque $b in B$, puisque $b$ majore $A$,
$
sup(A) <= b.
$

Donc $sup(A)$ est un minorant de $B$, d'où
$
sup(A) <= inf(B).
$
