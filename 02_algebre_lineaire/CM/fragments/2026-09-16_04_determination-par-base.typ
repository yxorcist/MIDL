#import "../style.typ": *

= Familles de vecteurs et détermination d'une application linéaire

On suppose dans cette partie que $E$ est de dimension finie.

== Théorème 2.1.11

Notons

$
p = dim_K(E)
$

et soit

$
B = (e_1, ..., e_p)
$

une base de $E$.

Choisissons arbitrairement $p$ vecteurs

$
u_1, ..., u_p
$

de $F$.

Alors il existe une unique application linéaire

$
phi : E -> F
$

telle que, pour tout $i in {1, ..., p}$,

$
phi(e_i) = u_i.
$

Autrement dit, une application linéaire est entièrement déterminée par les
images des vecteurs d'une base.

=== Démonstration — unicité

Supposons qu'il existe une application linéaire $phi : E -> F$ telle que

$
phi(e_i) = u_i
$

pour tout $i$.

Soit $u in E$. Comme $B$ est une base de $E$, il existe un unique
$p$-uplet

$
(x_1, ..., x_p) in K^p
$

tel que

$
u = x_1 e_1 + ... + x_p e_p.
$

Par linéarité,

$
phi(u)
=
phi(x_1 e_1 + ... + x_p e_p)
$

$
=
x_1 phi(e_1) + ... + x_p phi(e_p)
$

$
=
x_1 u_1 + ... + x_p u_p.
$

La valeur de $phi(u)$ est donc imposée pour tout $u in E$. Ainsi, si une
telle application existe, elle est unique.

=== Démonstration — existence

Pour

$
u = x_1 e_1 + ... + x_p e_p,
$

on définit

$
phi(u)
=
x_1 u_1 + ... + x_p u_p.
$

Cette définition est bien posée puisque l'écriture de $u$ dans la base $B$
est unique.

On a alors immédiatement

$
phi(e_i) = u_i
$

pour tout $i$.

Il reste à vérifier la linéarité.

Soient

$
u = x_1 e_1 + ... + x_p e_p,
$

$
v = y_1 e_1 + ... + y_p e_p
$

et $lambda in K$.

Alors

$
lambda u + v
=
(lambda x_1 + y_1)e_1
+ ...
+ (lambda x_p + y_p)e_p.
$

Par définition de $phi$,

$
phi(lambda u + v)
=
(lambda x_1 + y_1)u_1
+ ...
+ (lambda x_p + y_p)u_p
$

$
=
lambda (x_1 u_1 + ... + x_p u_p)
+
(y_1 u_1 + ... + y_p u_p)
$

$
=
lambda phi(u) + phi(v).
$

Donc $phi$ est linéaire, et elle existe bien.

== Corollaire 2.1.12

Supposons que

$
E = E_1 ⊕ ... ⊕ E_k
$

et que, pour tout $i$, on se donne une application linéaire

$
phi_i : E_i -> F.
$

Alors il existe une unique application linéaire

$
phi : E -> F
$

telle que, pour tout $i$,

$
phi|_(E_i) = phi_i.
$
