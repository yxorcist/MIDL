// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 5, vérifié dans Google Drive.
// source-note: premier lot FVR, plusieurs photos « Exercice 5 » : continuité, taux d'accroissement, dérivées oscillantes.
// source-verification: calcul des dérivées pour x != 0 et vérification des limites en 0.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 5 — Fonctions oscillantes et régularité en $0$

On considère deux fonctions sur $RR$ :
$
f(x)=x^3 sin(1/x) quad "si" x!=0,
quad f(0)=0,
$
$
g(x)=x^3 sin(1/x^2) quad "si" x!=0,
quad g(0)=0.
$

Hors de $0$, les deux fonctions sont de classe $C^infinity$ par composition et produit de fonctions usuelles. Toute la difficulté est en $0$.

== 1. Continuité en $0$

Pour $x!=0$, comme $abs(sin t)<=1$,
$
abs(f(x))<=abs(x)^3,
quad
abs(g(x))<=abs(x)^3.
$

Les deux membres de droite tendent vers $0$ quand $x->0$. Par encadrement,
$
lim_(x->0) f(x)=0=f(0),
quad
lim_(x->0) g(x)=0=g(0).
$

Les deux fonctions sont donc *continues sur $RR$*.

== 2. Dérivabilité en $0$

Le taux d'accroissement de $f$ en $0$ est
$
(f(x)-f(0))/x=x^2 sin(1/x)
quad (x!=0).
$
Comme sa valeur absolue est majorée par $x^2$, sa limite en $0$ vaut $0$. Ainsi $f'(0)=0$.

Pour $g$,
$
(g(x)-g(0))/x=x^2 sin(1/x^2)
$
tend aussi vers $0$. Donc $g'(0)=0$.

*Les deux fonctions sont dérivables sur $RR$.*

== 3. Sont-elles de classe $C^1$ ?

Pour $x!=0$, les dérivées sont
$
f'(x)=3x^2 sin(1/x)-x cos(1/x),
$
$
g'(x)=3x^2 sin(1/x^2)-2 cos(1/x^2).
$

Par les majorations usuelles,
$
abs(f'(x))<=3x^2+abs(x)->0=f'(0).
$
La dérivée de $f$ est continue en $0$ : *$f$ est de classe $C^1$ sur $RR$*.

En revanche, le terme $3x^2 sin(1/x^2)$ de $g'(x)$ tend vers $0$, mais $cos(1/x^2)$ n'a aucune limite en $0$.

Pour le vérifier, on peut choisir des suites positives tendant vers $0$ telles que $1/x^2=2n pi$ et $1/y^2=(2n+1)pi$. Le cosinus vaut alors respectivement $1$ et $-1$. Les limites correspondantes de $g'$ sont $-2$ et $2$.

Donc $g'$ n'est *pas continue en $0$* : *$g$ n'est pas de classe $C^1$*.

== 4. Deux fois dérivables ?

Pour $f$, on étudie la dérivabilité de $f'$ en $0$ :
$
(f'(x)-f'(0))/x
=3x sin(1/x)-cos(1/x).
$

Le premier terme tend vers $0$, mais le second oscille sans limite. Ainsi *$f''(0)$ n'existe pas* et $f$ n'est pas deux fois dérivable sur $RR$.

Pour $g$, si $g''(0)$ existait, la fonction $g'$ serait dérivable donc continue en $0$. Or on vient de montrer que ce n'est pas le cas. Donc *$g''(0)$ n'existe pas non plus*.

== Bilan

#table(
  columns: (1.5fr,1fr,1fr),
  inset: 6pt,
  [*Propriété*],[$f$],[$g$],
  [Continue sur $RR$],[Oui],[Oui],
  [Dérivable sur $RR$],[Oui],[Oui],
  [De classe $C^1$ sur $RR$],[Oui],[Non],
  [Deux fois dérivable sur $RR$],[Non],[Non],
)

*Point essentiel :* la dérivée d'une fonction peut exister en un point sans être continue en ce point. Il ne faut pas déduire la régularité de $g$ de la seule majoration $abs(g(x))<=abs(x)^3$.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Fiche officielle TD04, exercice 5, et photos manuscrites. Les suites oscillantes fournissent un contrôle rigoureux des conclusions qui étaient notées sans justification complète dans la copie.
]
