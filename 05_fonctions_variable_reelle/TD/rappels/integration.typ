#set text(lang: "fr", size: 11pt)

= Rappel — intégration

Soient $a < b$ deux réels. L'application

$
cal(I): cal(C)([a,b], RR) -> RR
$

définie par

$
cal(I)(f) = integral_a^b f(t) dif t
$

est une forme linéaire et croissante.

Pour toutes fonctions $f, g$ continues sur $[a,b]$ et tous scalaires $lambda, mu$,

$
integral_a^b (lambda f(t) + mu g(t)) dif t
=
lambda integral_a^b f(t) dif t
+
mu integral_a^b g(t) dif t.
$

De plus, si $f <= g$ sur $[a,b]$, alors

$
integral_a^b f(t) dif t
<=
integral_a^b g(t) dif t.
$
