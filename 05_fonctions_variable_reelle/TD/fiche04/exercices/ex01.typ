// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 1 (Google Drive).
// source-note: premier lot FVR, photo « TD4 Exercice 1 » : continuité puis raccord des dérivées en x=1.
// source-verification: dérivée gauche du terme trigonométrique et valeurs a,b,c recalculées.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 1 — Raccord de dérivabilité

Soit $f:RR->RR$ définie par les trois expressions suivantes :

- Si $x<1$ : $f(x)=2 cos(pi x/2)+3 cos(pi x)$.
- Si $x=1$ : $f(1)=c$.
- Si $x>1$ : $f(x)=x^2+a x+b$.

On cherche les paramètres $a,b,c in RR$ pour lesquels $f$ est *dérivable en $1$*.

== 1. Continuité nécessaire en $1$

Les deux expressions sont continues sur leurs domaines respectifs. Il suffit d'assurer le raccord en $1$ :
$
lim_(x->1^-)f(x)=2 cos(pi/2)+3 cos(pi)=-3.
$

Du côté droit,
$
lim_(x->1^+)f(x)=1+a+b.
$

Donc la continuité de $f$ en $1$ impose
$
c=-3,quad 1+a+b=-3,
$
d'où
$
a+b=-4.
$

== 2. Égalité des dérivées latérales

À gauche de $1$,
$
f'(x)=-pi sin(pi x/2)-3pi sin(pi x).
$
Par continuité de cette expression jusqu'à $1$,
$
f'_g(1)=-pi sin(pi/2)-3pi sin(pi)=-pi.
$

À droite,
$
f'(x)=2x+a,
quad
f'_d(1)=2+a.
$

Si $f$ est dérivable en $1$, les deux dérivées latérales sont égales :
$
2+a=-pi,
quad
a=-pi-2.
$

La relation $a+b=-4$ donne
$
b=-4-a=pi-2.
$

== 3. Vérification et conclusion

Pour
$
a=-pi-2,quad b=pi-2,quad c=-3,
$
les limites latérales de $f$ en $1$ valent toutes deux $c$, et les dérivées latérales valent toutes deux $-pi$.

La fonction est donc *continue et dérivable en $1$*, avec $f'(1)=-pi$.

*À retenir :* pour un raccord dérivable, imposer d'abord la *continuité* puis l'égalité des *dérivées à gauche et à droite*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Énoncé officiel TD04 et photographie de l'exercice 1. Les équations de continuité et de dérivabilité ont été vérifiées indépendamment.
]
