// source-confidence: high
// source-note: nouvelle correction manuscrite, photo 10901, « Exercice 9 » (fin de TD02).
// source-note: énoncé reconstitué directement à partir des quatre étapes de la preuve manuscrite.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 9 — Endomorphisme dont tous les vecteurs sont propres

Soit $E$ un espace vectoriel sur un corps $K$ et $phi in cal(L)(E)$.

On suppose que, pour tout $u in E$, la famille $(u,phi(u))$ est liée.

Montrer que $phi$ est une *homothétie*, c'est-à-dire qu'il existe un même scalaire $lambda in K$ tel que

$
forall u in E, quad phi(u)=lambda u.
$

== 1. Existence d'un scalaire pour chaque vecteur

Pour tout $u in E$ non nul, la famille $(u,phi(u))$ est liée. Il existe donc un scalaire $lambda_u in K$ tel que

$
phi(u)=lambda_u u.
$

Pour $u=0_E$, la relation $phi(0_E)=0_E$ est automatique par linéarité.

== 2. Cas de deux vecteurs indépendants

Soient $u,v in E$ linéairement indépendants.

Par linéarité de $phi$,

$
phi(u+v)=phi(u)+phi(v)=lambda_u u+lambda_v v.
$

Mais, en appliquant l'hypothèse au vecteur $u+v$,

$
phi(u+v)=lambda_(u+v)(u+v)
=lambda_(u+v)u+lambda_(u+v)v.
$

D'où

$
(lambda_(u+v)-lambda_u)u
+
(lambda_(u+v)-lambda_v)v=0_E.
$

Puisque $(u,v)$ est libre, les deux coefficients sont nuls :

$
lambda_(u+v)=lambda_u=lambda_v.
$

== 3. Tous les vecteurs non nuls ont le même scalaire

Supposons $E != {0_E}$ et fixons $u_0 in E$ non nul.

Soit $u in E$ non nul.

- Si $(u,u_0)$ est libre, d'après la question 2, $lambda_u=lambda_(u_0)$.
- Sinon, les vecteurs sont liés. Il existe $t in K$ non nul tel que $u=t u_0$. Alors

  $
  phi(u)=phi(t u_0)=t phi(u_0)
  =t lambda_(u_0) u_0=lambda_(u_0)u.
  $

  Comme $u != 0_E$, on en déduit $lambda_u=lambda_(u_0)$.

Dans les deux cas, le scalaire ne dépend pas de $u$.

== 4. Conclusion

En posant $lambda=lambda_(u_0)$, on obtient

$
forall u in E, quad phi(u)=lambda u.
$

Ainsi,

$
phi=lambda "Id"_E,
$

donc $phi$ est une homothétie.

Si $E={0_E}$, l'unique endomorphisme est également une homothétie (de rapport $0$, par exemple).
