== Question 1

Soit $n >= 2$
Soit $t in [n-1, n]$ on a:

$
  t <= n text("donc")
$

$
  f(n) <= f(t) text("car f est decroissante")
$

$
  dif x integral_(n-1)^n f(n) dif t <= integral_(n-1)^n f(t) dif t text("croissance de ") integral
$

donc

$
  f(n) <= integral_(n-1)^n f(t) dif t text("(*)")
$

Soit $n >= 1 text("et") t in [n, n+1]$

on a $n <= t$

donc $integral_n^(n+1) f(t) dif t <= integral_n^(n+1) f(n) dif t$ (croissance de $integral$)

donc 

$
  integral_n^(n+1) f(t) <= f(n) text("(**)")
$

2. Rappel

$
  integral_a^c f = integral_a^n f + integral_b^c f text("Chasles")
$

Soit $N >= 1$

Je somme $text("(*)")$ par $n = 2, ..., N$

$
  sum_(n=2)^N f(n) <= sum_(n=2)^N integral_(n-1)^n f
$

$
  U_N - f(1) <= integral_1^N f text("relation de chasles")
$

Donc 

$
  U_N <= integral_1^N f + f(1)
$

On somme $text("(**)")$ par $n = 1, ..., N$

$
  sum_(n=1)^N integral_n^(n+1) f <= sum_(n=1)^N f(n)
$

$
  integral_1^(N+1) f <= U_N
$

== Question 3 (a)

$H_N = sum_(n=1)^N frac(1,n)$
$ln(N+1) <= H_N <= 1 + ln(N)$

Posons $f: [1;- inf[ |-> RR$

$x |-> frac(1,x) $

elle est continue et decroissante.
on peut donc se servir des questions 1 et 2. 
Avec ces notations on a $H_N = U_N$ Donc d'apres (2) on a $N >= 1$

$
  integral_1^(N+1) f <= H_N <= 1 + integral_1^N f
$

$
  [ln(t)]_(t=1)^(N+1) <= H_N <= 1 + [ln(t)]_(t=1)^N
$

$
  ln(N+1) <= H_N <= 1 + ln(N)
$

Soit $N >= 1$. D'apres (1), on a $ln(N+1) - ln(N) <= H_N - ln(N) <= w$

$ln(1 + frac(1,N)) <= H_N - ln(N) <= 1$

$0 <= H_N - ln(N) <= 1$

Donc $H_N ln(N)$ est bornee
donc $H_N - ln(N) limits(=)_(N -> infinity) o(ln(N))$
donc $H_N limits(~)_(N -> infinity) ln(N)$

Soit $N >= 2$

(2) $frac(ln(N+1),ln(N)) <= frac(H_N, ln(N)) <= 1 + frac(1, ln(N))$

$
  frac(ln(N+1), ln(N)) = frac(ln(N) + ln(1 + frac(1,N)), ln(N))
$

Donc par OALS // wtf is OALS

== Question 3 (b)

Soit $x in [0,1[$ par $t in [0,x]$, on a $1 <= frac(1,1-t)$

donc 

$
  integral_a^x 1 dif t <= integral_0^x frac(1, 1-t) dif t (integral_0^x )
$

$
  x <= [ - ln(1-t)]_0^x
$

donc $ x <= ln(1-x) $



== Question 3 (c)
