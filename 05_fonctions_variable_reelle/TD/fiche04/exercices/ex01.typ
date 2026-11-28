// source-confidence: high
// source-note: TD04_fonctions-derivables.pdf, exercice 1 (Google Drive).
// source-note: premier lot FVR, photo « TD4 Exercice 1 » : continuité puis raccord des dérivées en x=1.
// source-verification: dérivée gauche du terme trigonométrique et valeurs a,b,c recalculées.
// source-reconstruction: reprise de la copie manuscrite de l'étudiant, avec la notation f_1, f_2 et le choix b=-a-4.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD 4 — Exercice 1 — Raccord de dérivabilité

Soit $f:RR->RR$ définie par les trois expressions suivantes :

- Si $x<1$ : $f(x)=2 cos(pi x/2)+3 cos(pi x)$.
- Si $x=1$ : $f(1)=c$.
- Si $x>1$ : $f(x)=x^2+a x+b$.

On cherche les paramètres $a,b,c in RR$ pour lesquels $f$ est *dérivable en $1$*.

On note
$
f_1(x)=2 cos(pi x/2)+3 cos(pi x),
quad f_2(x)=x^2+a x+b.
$
Ces deux expressions sont définies et dérivables sur $RR$.

== 1. Continuité en $1$

La dérivabilité en $1$ implique la continuité en $1$.

La fonction $f$ est continue en $1$ si et seulement si
$
lim_(x->1^-) f(x)=f(1)=lim_(x->1^+) f(x).
$

Par continuité de $f_1$ et $f_2$,
$
lim_(x->1^-) f(x)
&=2 cos(pi/2)+3 cos(pi) \
&=0-3=-3.
$

$
lim_(x->1^+) f(x)=1+a+b.
$

On fixe donc $c=-3$ et on impose
$
1+a+b=-3
quad <=> quad a+b=-4.
$

On fixe $b=-a-4$, avec $a in RR$. Ainsi, $f$ est continue en $1$.

== 2. Dérivabilité en $1$

La continuité étant établie, les dérivées latérales de $f$ en $1$ sont celles de $f_1$ et $f_2$ en ce point.

Ainsi, $f$ est dérivable en $1$ si et seulement si
$
f_1'(1)=f_2'(1).
$

On calcule :
$
f_1'(x)
&=(2 cos(pi x/2)+3 cos(pi x))' \
&=-2 dot pi/2 sin(pi x/2)-3 pi sin(pi x) \
&=-pi sin(pi x/2)-3 pi sin(pi x).
$

D'où
$
f_1'(1)=-pi-0=-pi.
$

$
f_2'(x)=(x^2+a x+b)'=2x+a.
$

D'où
$
f_2'(1)=2+a.
$

On impose alors
$
2+a=-pi
quad <=> quad a=-pi-2.
$

Or $b=-a-4$, donc
$
b=pi+2-4=pi-2.
$

Ainsi, $f$ est dérivable en $1$ si et seulement si
$
a=-pi-2, quad b=pi-2, quad c=-3.
$

On a alors $f'(1)=-pi$.

*À retenir :* pour un raccord dérivable, imposer d'abord la *continuité* puis l'égalité des *dérivées à gauche et à droite*.

#block(stroke: 0.6pt + gray, inset: 8pt)[
  *Provenance.* Énoncé officiel TD04 et photographie de l'exercice 1. Démarche de la copie manuscrite de l'étudiant : continuité, choix de $b$ en fonction de $a$, calcul des dérivées de $f_1$ et $f_2$, puis détermination des paramètres. Les hypothèses du raccord et le calcul final de $b$ sont explicités.
]
