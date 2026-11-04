// source-confidence: high
// source-note: statement and numbering cross-checked against the official FVR TD02 sheet.
// source-note: the pushed material contains the correction of questions 1 and 2.
// source-note: the abandoned ratio manipulation marked "discontinued" in the pushed file was not retained.

// study-validation: 2026-11-04 — Question 1 : copie manuscrite validée (quotient, seuil n >= 4, croissance puis décroissance strictes). Question 2 inchangée, non évaluée ici.
// study-validation: 2026-11-04 — Question 2 : copie manuscrite validée (maximum en x_4 par monotonie ; positivité, limite 0 et caractérisation séquentielle pour l'infimum ; absence de minimum). Question 1 inchangée.
// study-validation: 2026-11-04 — Révision compacte des questions 1 et 2 suivant l'ordre et les formulations de la copie finale ; méthodes validées conservées, énoncé inchangé.
// study-validation: 2026-11-04 — Transcription fidèle de la dernière copie manuscrite : variable m, ordre des phrases et calculs conservés ; seules les formulations de rigueur et la mise en page Typst sont ajustées. Énoncé officiel inchangé.

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

Considérons $frac(x_(m+1),x_m)$ et étudions la monotonie :

$
frac(x_(m+1),x_m)
&= frac((m+1)^3 2^(-(m+1)),m^3 2^(-m)) \
&= frac(1,2)(frac(m+1,m))^3 = frac(1,2)(1+frac(1,m))^3.
$

Pour que $x_m$ soit décroissante, on cherche à partir de quel rang $frac(x_(m+1),x_m)<1$ :

$
frac(x_(m+1),x_m)<1
&<=> frac(1,2)(1+frac(1,m))^3<1 \
&<=> (1+frac(1,m))^3<2 \
&<=> 1+frac(1,m)<2^(1/3) \
&<=> frac(1,m)<2^(1/3)-1 \
&<=> m>frac(1,2^(1/3)-1) approx 3.84.
$

Donc à partir de $m=4$, $x_m$ décroît ; pour $m in {1,2,3}$, $x_m$ croît. Ainsi, $(x_m)$ est strictement croissante jusqu'au rang $4$, puis strictement décroissante.

== Question 2 — Bornes, minimum et maximum de $A$

De (Q1), on sait que $x_m$ croît jusqu'au rang $4$ et décroît ensuite. Donc le plus grand terme sera au rang $m=4$.

Calculons :

$
x_4=frac(4^3,2^4)=frac(2^6,2^4)=4 in A.
$

Et $forall m>=1, x_m<=4$. Donc $sup(A)=max(A)=4$.

On sait que $x_m$ décroît à partir du rang $4$. Calculons sa limite :

$
x_m=frac(m^3,2^m) -> 0 quad "par croissances comparées".
$

De plus, $forall m>=1, x_m>0$ : donc $0$ est un minorant de $A$ et $0 in.not A$.

Par caractérisation séquentielle de la borne inférieure, comme $x_m in A$ et $x_m -> 0$, on obtient $inf(A)=0$ et $A$ n'admet pas de minimum (car $0 in.not A$).
