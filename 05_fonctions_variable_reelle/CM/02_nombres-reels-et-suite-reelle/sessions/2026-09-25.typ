#import "../../style.typ": *

= CM — 2026-09-25

Proposition (propriete de'archimede)

$RR$ verifie la propriete suivante

$forall espilon > 0, forall A > 0, exists n in NN^*, n epsilon > A$

Demo: Raisonnement par l'absurde

Soit $espilon > 0$ et $A > 0$. On suppose que pour tout $n in NN^*, n epsilon <= A$

On considere $B = { n epsilon, n in NN^*}$
L'ensemble $B$ est une partie non-vide, majoree de $RR$ donc il admet borne superieure. Notons $M = sup(B)$

D'apres la caractereisation de la borne superieure.

il existe $n <= NN^*$ tel que $M - epsilon < n epsilon$

D'ou $M < (n + 1) epsilon$

$M$ etant le majorant de $B$ et $(n + 1) epsilon$ etant un element de $B$

on obtient une contradiction.


Proposition
Tout intervalle de $RR$ continent un rationel

$
  forall a,b in RR, a < b, exists q in QQ, a < q < b.
$

(densite de $QQ$ dans $RR$)

Tout intervalle de $RR$ contient un irrationel. (densite de $RR without QQ$ dans $RR$)

Demo:

Soit $a,b in RR$ tels que $a < b$.
On pose $epsilon = b - a > 0$

On utilise la propriete d'Archimede avec $A = 1$ et le $epsilon$ defini ci-dessous. Il existe $n in NN^*$ tel que

$
  n epsilon > 1
$

On pose $p = floor(n a) + 1$

Small in-topic Exemple

$
  a < frac(P,n) < b = a + epsilon \
  a < frac(P,n) <= a + frac(1,n)  < a + epsilon \
  n a < p <= n a + 1

$

Rappel: Pour tout $x in RR$, $floor(x)$ est l'unique entier relatif verifiant

$
  floor(x) <= x < floor(x) + 1
$

On a donc $p - 1 <= n a < p$ c'est a dire $frac(P,n) - frac(iiP,n) <= a < frac(P,n)$

D'ou,

$
  a < frac(P,n) <= a + frac(1,n)
$

Or, $frac(1,n) < epsilon$

Ainsi, $a < frac(P,n) a + epsilon = b$

D'ou le premier point de la proposition
On applique le premier point a l'intervalle
$] a - sqrt(2); b = sqrt(2) [$ 
il existe $q in QQ$

$a - sqrt(2) < q < b - sqrt(2)$

D'ou $a < q + sqrt(2) < b$

Or, $q + sqrt(2) in RR without QQ$ car $sqrt(2) in RR without QQ$ et $q in QQ$

Si on avait $q + sqrt(2) = r in QQ$ alors on aurait $sqrt(2) = r - q in QQ$

Corollaire

Soit $x in RR$ Il existe une suite $(q_n)_n$ de $QQ$ qiu converge vers $x$

Demo:
Pour tout $n in NN^*$, il existe $q n in QQ$ tel que

$
  x - frac(1,n) < q n < x
$

La suite $(q_n)_n$ est une suite de $QQ$ convergeant vers $x$ "CQFT" (ce qu'on voulait demontrer)

= III. Intervalles de $RR$

= IV Suites Reelles

Definition
Une suite de nombres reels est une application $NN -> RR$ On la note $(u_n)_(n in NN)$, $(u_n)_(n >= 0)$ ou $(u_n)_n$

On dit que la suite $(u_n)_n$a converge vers $ll in RR$ si $forall espilon > 0$, $exists N in NN$, $(n >= N) implies |u_n - l| < epsilon$

On dit que la siute $(u_n)_n$ converge s'il existe $ll in RR$ tel que la siute $(u_n)_n$ converge vers $ll$.

On dit que la usuite $(u_n)$ diverge si elle ne converge pas

On dit que la suite $(u_n)_n$ tends vers $+inf$ si $forall A in RR, exists N in NN, forall n in NN (n >= N, u_n > A)$

On dit que la suite $(u_n)_n$ tends vers $-inf$ si $forall B in RR, exists N in NN, forall n in NN (n >= NN implies u_n < B)$

Propriete

Si une suite converge, si la limite est unique
L'ensemble des suiets convergentes, est un espace vectoriel.
Si la suite $(u_n)_n$ tends vers $ll in RR$, la suite $(v_n)_n$ tends vers $ll^' in RR$ et si $u_n < v_n$ pour tout $n in NN$ alors $ll <= ll^'$ (inegalite large)

Si $(u_n)_n$, $(v_n)_n$ et $(w_n)_n$ sont trois suites telles que \
$u_n <= v_n <= w_n$ pour tout $n in NN$

les suites $(u_n)_n$ et $(w_n)_n$ convergent vers la meme limite $ll in RR$ alors , la auite $(v_n)_n$ converge vers $ll$

(Theoreme des gendrames, d'encadrement)

Definition: Une suite $(u_n)_n$ est dite 

- majoree s'il existe $M in RR$ tel que, pour tout $n in NN$
$ u_n <= M $
- minoree s'il existe $m in RR$ tel que, pour tout $n in NN$
$ m <= u_n $

Propriete

- Toute suite convergente est bornee 
- Toute suite tendant vers $+inf$ est minoree
- Toute suite tendant vers $-inf$ est majoree 

Definition
- On dit que la suite $(u_n)_n$ est croissante si pour tout $n in N$
- On dit que la suite $(u_n)_n$ est decroissatnte si pour tout $n in NN$, $u_(n+1) <= u_n$
- On dit que la siute est monotone si elle est soit croissante, soit decroissante.

== Theoreme
- Toute suite reelle, croissante, majoree converge 
- Toute suite reelle decroissatne minoree converge

Demo:
Soit $(u_n)$ une suite relle croissante majoree.

Considerons $A = {u_n, n in NN}$
L'ensemble $A$ est une partie de $RR$ non vide $u_0 in A$ 
et majoree. L'ensemble A admet uen borne superieure

On pose $ll = sup(A)$ 

Montrons que la suite $(u_n)_n$ converge vers $ll$

Soit $epsilon > 0$

$(forall epsilon > 0, exists N in NN, forall n in NN, (n > N implies | u_n - l| < epsilon)$

D'apres la caracterisation de la borne superieure

il existe $N in NN$ tel que $l - epsilon < u_N$

Comme la suite $(u_n)_n$ est croissatne, pour tout $n >= NN$

$
  u_n >= u_N > l - epsilon
$

Comme $ll$ est un majorant de $A$, $u_n <= ll$ pour tout $n >= N$

Ainsi, pour tout $n >= N$, $ll - epsilon < u_n <= ll$

Donc, pour tout $n >= N$, $|u_n - ll| < epsilon$

En conclusion, la suite $(u_n)_n$ converge vers $ll$.

Pour montrer le second point, il suffit d'applicquer le premier point a la suite $( - u_n)_n$ qui est croissante et majoree. 
La suite $( - u_n)_n$ converge et donc, la suite $(u_n)_n$ converge

Propriete: 
- toute suite croissante non majoree tends vers $+inf$
- toute suite decroissante non minoree tends vers $-inf$

Definition: 
Deux suites $(u_n)_n$ et $(v_n)_n$ sont dites adjacentes si
- l'une des deux suites est croissante
- l'autre est decoirssante
- la siute $(u_n - v_n)_n$ tends vers 0

Theoreme: si 2 suites sont adjacentes, elles sont convergentes et ont la meme limite

Definition
Soit $(u_n)_n$ une suite reelle et $phi: NN -> NN$
Strictement croissante (c'est a dire $phi(n + 1) > phi(n)$
pour tout $n in NN$) on dit que la suite $(x_n)_(n in NN)$

Definie par $x_n = u_(phi(n))$ pour tout $n in NN$, est une suite extraite (ou sous-suite) de la suite $(u_n)_(n in NN)$. On la note $(u_(phi(n)))_(n in NN)$

Idee:
On ne prend pas tous les termes, mais on en garde une infinite.

Exemple:
- $phi : NN -> NN$
// first NN being n and second NN being n+1

la suite $(u_(n+1))_(n in NN)$ est une suite extraite de $(u_n)_(n in NN)$

- $phi_1 : NN -> NN$ et  $phi_2: NN -> NN$
// n -> 2n et n -> en + 1

les suites $(u_(2n))_(n in NN)$ et  $(u_(2n + 1))_(n in NN)$ sont deux sous-suites de la suite $(u_(n))_(n in NN)$

- $phi: NN -> NN$
// n -> n^2

la suite $(u_(n^2))_(n in NN)$ est une suite extraite de la siute $(u_n)_n$

- la fonction $phi: NN -> NN$ n'est pas strictement croissante. 
la suite $u_(n^2 - n)_(n in NN)$ n'est pas une suite extrate de la siute $(u_n)_(n in NN)$





