#import "../style.typ": *

= Noyau et image

Soit

$
phi in "ℒ"_K(E,F),
quad
phi : E -> F.
$

== Proposition 2.1.7

1. Pour tout sous-espace vectoriel $E'$ de $E$, l'image directe

   $
   phi(E')
   =
   { phi(v) | v in E' }
   $

   est un sous-espace vectoriel de $F$.

2. Pour tout sous-espace vectoriel $F'$ de $F$, l'image réciproque

   $
   phi^(-1)(F')
   =
   { v in E | phi(v) in F' }
   $

   est un sous-espace vectoriel de $E$.

== Définition 2.1.8

Le *noyau* de $phi$ est

$
"Ker"(phi)
=
phi^(-1)({0_F})
=
{ v in E | phi(v) = 0_F }.
$

C'est un sous-espace vectoriel de $E$.

L'*image* de $phi$ est

$
"Im"(phi)
=
phi(E)
=
{ phi(v) | v in E }
$

ou encore

$
"Im"(phi)
=
{ u in F | exists v in E, u = phi(v) }.
$

C'est un sous-espace vectoriel de $F$.

== Injectivité et surjectivité

On a les caractérisations suivantes :

$
phi " est injective"
<=>
"Ker"(phi) = {0_E},
$

et

$
phi " est surjective"
<=>
"Im"(phi) = F.
$
