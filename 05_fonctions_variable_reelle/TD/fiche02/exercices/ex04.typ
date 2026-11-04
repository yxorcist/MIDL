// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the pushed material contains the correction of questions 1 and 2.
// source-note: the abandoned ratio manipulation marked "discontinued" in the pushed file was not retained.

// study-validation: 2026-11-04 — Question 1 : copie manuscrite validée (quotient, seuil n >= 4, croissance puis décroissance strictes). Question 2 inchangée, non évaluée ici.
// study-validation: 2026-11-04 — Question 2 : copie manuscrite validée (maximum en x_4 par monotonie ; positivité, limite 0 et caractérisation séquentielle pour l'infimum ; absence de minimum). Question 1 inchangée.
// study-validation: 2026-11-04 — Révision compacte des questions 1 et 2 suivant l'ordre et les formulations de la copie finale ; méthodes validées conservées, énoncé inchangé.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 4

On considère

$
A={x_n | n in NN^*},
$

où

$
x_n=n^3 2^(-n).
$

== Question 1 — Monotonie de $(x_n)$

Considérons le quotient $frac(x_(n+1),x_n)$ pour étudier la monotonie :

$
frac(x_(n+1),x_n)
= frac((n+1)^3 2^(-(n+1)),n^3 2^(-n))
= frac(1,2) (frac(n+1,n))^3
= frac(1,2) (1+frac(1,n))^3.
$

Pour trouver à partir de quel rang la suite décroît, cherchons quand $frac(x_(n+1),x_n) <= 1$ (car $x_n>0$) :

$
frac(1,2)(1+frac(1,n))^3 <= 1
<=> (1+frac(1,n))^3 <= 2
<=> 1+frac(1,n) <= 2^(1/3)
$

$
<=> frac(1,n) <= 2^(1/3)-1
<=> n >= frac(1,2^(1/3)-1) approx 3.85.
$

Donc, pour $n in {1,2,3}$, $x_(n+1)>x_n$ ; pour $n>=4$, $x_(n+1)<x_n$. La suite est strictement croissante jusqu'à $x_4$, puis strictement décroissante.

== Question 2 — Bornes, minimum et maximum de $A$

D'après la question 1, $(x_n)$ croît jusqu'au rang $4$, puis décroît : son plus grand terme est donc $x_4$. Calculons :

$
x_4 = frac(4^3,2^4) = frac(2^6,2^4) = 4.
$

Comme $x_4 in A$ et $forall n in NN^*, x_n <= 4$, on obtient $sup(A)=max(A)=4$.

Pour la borne inférieure, calculons la limite : par croissances comparées, $x_n=frac(n^3,2^n) -> 0$.

Or, pour tout $n in NN^*$, $x_n>0$ : ainsi, $0$ est un minorant de $A$ et $0 in.not A$. Comme tous les $x_n$ appartiennent à $A$ et convergent vers $0$, la caractérisation séquentielle de la borne inférieure donne $inf(A)=0$. Puisque $0 in.not A$, $A$ n'admet pas de minimum.
