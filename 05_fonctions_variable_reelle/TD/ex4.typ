== Question 1

$(u_n)_(n in NN) in RR^NN$

$u_0 in ]0, frac(pi,2)[$ et $forall n in NN$, $u_(n+1) sin(u_n)$ 

on raisonnne par recurrence, par$n in NN$, on pose $H_n text(") u_n in ] 0, frac(pi,2)[ text(")$

Initialisation
pour $n = 0$ 
$H_0$ signifie "$u_0 in ]0,frac(pi,2)[$"
qui est vraie par hypothese  de l'exercice
Heridite: Soit $n in NN$ tq $H_n$ est vraie on a $0 < u_n < frac(pi,2)$
or $sin$ est Ar sur $[0,frac(pi,1)]$ donc $0 = sin(0) < sin(u_n) < sin(frac(pi,2)) = `$
donc $0 < u_(n+1) < 1 < frac(pi,2)$

donc $H_(n_!)$ est vraie
Conclusion: ainsi, on a mq $forall n in NN, u_n in ]0,frac(pi,2)[$

== Question 2
Puor mq $(u_n)_n(n >= a)$ est decoissant

nous allons prouver que 
$U_(n+1) < U_n$, soit
$forall x in RR^+_*$ on a
$sin(x) < x$
soit $sin(u_0) < u_n$

tq $u_(n+1) < u_n$ donc  $(u_n)_(n in NN) >= 0$ decroissant.

nous venons de prouver que $(U_n)_(n >= 0)$ est decroissant et nous savons grace a que $U_n in ]0, i[$
donc forrmee 

donc $u_1$ tend vers une limite $l >= 0$,
donc $u_(n+1) = sin(u_n)$
$l = sin(l)$
donc $l = 0$
alors $(u_n)_(n >= NN)$ converge vers 0

corrective notes
- soit $n in NN$ on a donc $u_n + 1 = sin(u_n) ...$
- ainsi le thoerme de convergence monotone
- sin est continue sur $RR$
- donc $l$ donc $un u_(n+1) - sin(u_n) -> sin(l)$
- $sin(ll) = ll$
- donc $l = 0$

== Question 3
on sait que $sin(a) = x - frac(x^3,3) + o(x^3)$
...$ $
$= - frac(u_n^3) + o(u^3_n)$
Donc $u_(n+1) - u_n$ 
and some other notes that i took in a photo


other notes
$u_(n+1) - u_n...$
la $sum u_n+1, u_n$  converge

(serie telescopique (la 5eme))

par TCSP (on sait que $u_n > 0 forall n in NN$ )
la $sum_n - frac(u^3_n, 6$ 
donc la $sum u^3_n$ converge


== Question 4
soit $n in NN$
$ln(u_(n+1)) - ln(u_n)$
$ln ( frac(sin(u_n),u_n) )$ (DL de sin)


$= - frac(u_n, 6) + o(u^2_n)$ (DL de x -> ln(1+x))

donc $ln(u_n+1) - ln(u_n) equ frac( - u_n^2, 6)$ 

D'autre part pour $N in NN$, car $sum_k=1^N ln(u_(n+1)) - ln(u_n)$
$ln(u_(N+1)) - ln(u_0)$
$-> - inf$ car u_n -> 0

Donc la $sum(u_n+1) - ln(u_n)$ diverge donc par tCSP  ici tant est negatif) la $sum$ u^2_n diverge

== Question 5
u_n^2 
