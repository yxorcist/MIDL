#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 7

$
E={f:CC -> CC},
quad sigma(z)=-z.
$

== 1 — Lois de $E$

- Pour $f,g in E$ :

  $
  (f+g)(z)=f(z)+g(z)
  $

  (addition interne).

- Pour $f in E$ et $lambda in CC$ :

  $
  (lambda f)(z)=lambda dot f(z)
  $

  (multiplication externe).

- $0_E in E$ : contient le vecteur nul.

== 2 — Sous-espaces vectoriels

=== $E_1$

$
E_1={f in E | f(1)=0}.
$

Soit $f,g in E_1$, $lambda in CC$.

$
(lambda f+g)(1)
=lambda f(1)+g(1)
=lambda dot 0+0=0.
$

$E_1$ est stable, $E_1$ est un SEV de $E$.

=== $E_2$

$
E_2={f in E | f(0)=1}.
$

$
0_E ∉ E_2
quad "car" quad
0_E(0)=0 != 1.
$

$E_2$ n'est pas un SEV de $E$.

=== $E_3$

$
E_3={f in E | f=f compose sigma},
quad f(z)=f(-z).
$

$0_E$ vérifie cette propriété, donc $0_E in E_3$.

Soit $f,g in E_3$, $lambda in CC$.

$
(lambda f+g)(z)
=lambda f(z)+g(z)
=lambda f(-z)+g(-z)
=(lambda f+g)(-z).
$

$
lambda f+g in E_3.
$

$E_3$ est un SEV de $E$.

=== $E_4$

$
E_4={f in E | f compose sigma=sigma compose f},
quad f(-z)=-f(z).
$

$0_E$ vérifie cette propriété, donc $0_E in E_4$.

Soit $f,g in E_4$, $lambda in CC$.

$
(lambda f+g)(-z)
=lambda f(-z)+g(-z)
=-lambda f(z)-g(z)
=-(lambda f+g)(z).
$

$
lambda f+g in E_4.
$

$E_4$ est un SEV de $E$.

== 3 — $E=E_3 "⊕" E_4$

Soit $f in E$. On cherche $f_1 in E_3$ et $f_2 in E_4$ tels que $f=f_1+f_2$.

$
f_1(z)=f_1(-z),
quad f_2(-z)=-f_2(z).
$

On pose :

$
cases(
  f(z)=f_1(z)+f_2(z),
  f(-z)=f_1(z)-f_2(z)
).
$

Alors :

$
f_2(z)=f(z)-f_1(z).
$

En remplaçant dans la deuxième équation :

$
f(-z)=f_1(z)-f(z)+f_1(z)
=2f_1(z)-f(z).
$

Donc :

$
f(z)+f(-z)=2f_1(z)
arrow
f_1(z)=(f(z)+f(-z))/2.
$

Et :

$
f_2(z)=f(z)-f_1(z)
=(2f(z)-f(z)-f(-z))/2
=(f(z)-f(-z))/2.
$

On obtient :

$
cases(
  f_1(z)=(f(z)+f(-z))/2,
  f_2(z)=(f(z)-f(-z))/2
).
$

On vérifie l'appartenance.

$f_1 in E_3$ ?

$
f_1(-z)
=(f(-z)+f(z))/2
=f_1(z).
$

Donc $f_1 in E_3$.

$f_2 in E_4$ ?

$
f_2(-z)
=(f(-z)-f(z))/2
=-f_2(z).
$

Donc $f_2 in E_4$.

Comme $f=f_1+f_2$ :

$
E subset.eq E_3+E_4.
$

La réciproque est évidente, car $E_3 subset.eq E$ et $E_4 subset.eq E$.

Donc :

$
E=E_3+E_4.
$

Vérifions $E_3 inter E_4={0_E}$.

Soit $f in E_3 inter E_4$. On pose :

$
cases(
  f(-z)=f(z),
  f(-z)=-f(z)
)
arrow
f(z)=-f(z)
arrow
2f(z)=0
arrow
f(z)=0
$

pour tout $z in CC$.

Donc $f=0_E$ : solution unique triviale.

$
E_3 inter E_4={0_E}.
$

Donc :

$
E=E_3 "⊕" E_4.
$
