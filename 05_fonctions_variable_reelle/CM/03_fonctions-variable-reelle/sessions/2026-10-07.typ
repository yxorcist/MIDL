#import "../../style.typ": *

// source-confidence: high
// source-note: handwritten CM pages supplied in the batch of 09/10/2026.
// source-note: session date resolved from the MIDL timetable/Todoist: Fonctions variable réelle CM on 07/10/2026, 13:00–14:30.
// source-note: the first image in the batch repeats the end of the 01/10 Cauchy material; only the missing equivalent formulation of adherence values was added there.
// source-note: the Google Drive FVR CM "cours_prof" and "sources" folders are empty, so this session is transcribed from the handwritten source only.

#align(center)[
  #text(size: 18pt, weight: "bold")[CM — 07/10/2026]
  #v(0.2em)
  #text(size: 11pt)[Limites et continuité des fonctions]
]
#line(length: 100%)
#v(0.7em)

= Chapitre 3 — Fonctions d'une variable réelle

= I — Fonctions continues

#definition([
  Une *fonction réelle d'une variable réelle* est une application $f$ d'un sous-ensemble non vide de $RR$ à valeurs dans $RR$.

  L'ensemble de départ est appelé *ensemble de définition* de $f$.

  On le note

  $
  D_f.
  $
])

= Limite finie en un point

#definition([
  Soit $a in RR$ tel qu'il existe $delta>0$ vérifiant

  $
  ]a-delta,a[ union ]a,a+delta[
  subset.eq
  D_f.
  $

  On dit que $f$ a pour limite $ell in RR$ en $a$ si

  $
  forall epsilon>0,
  quad
  exists eta>0,
  quad
  forall x in D_f,
  quad
  abs(x-a)<eta
  =>
  abs(f(x)-ell)<epsilon.
  $

  On note

  $
  lim_(x -> a) f(x)=ell
  $

  ou

  $
  lim_a f=ell.
  $
])

#proposition([
  Si $f$ admet $ell$ et $ell'$ pour limites en $a$, alors

  $
  ell=ell'.
  $
])

= Continuité

#definition([
  Soit $a in D_f$.

  Si $f$ admet une limite $ell in RR$ en $a$, alors

  $
  ell=f(a).
  $

  On dit alors que $f$ est *continue en $a$*.

  Autrement dit,

  $
  forall epsilon>0,
  quad
  exists eta>0,
  quad
  forall x in D_f,
  quad
  abs(x-a)<eta
  =>
  abs(f(x)-f(a))<epsilon.
  $
])

#definition([
  Soit $I$ un intervalle ouvert tel que

  $
  I subset.eq D_f.
  $

  On dit que $f$ est *continue sur $I$* si elle est continue en tout point $a in I$.
])

= Limites à droite et à gauche

#definition([
  Soit $a in RR$ tel qu'il existe $delta>0$ avec

  $
  ]a,a+delta[
  subset.eq
  D_f.
  $

  On dit que $f$ admet $ell in RR$ comme *limite à droite en $a$* si

  $
  forall epsilon>0,
  quad
  exists eta>0,
  quad
  forall x in D_f,
  quad
  a<x<a+eta
  =>
  abs(f(x)-ell)<epsilon.
  $

  On note

  $
  lim_(x -> a^+) f(x)=ell.
  $
])

#definition([
  Soit $a in RR$ tel qu'il existe $delta>0$ avec

  $
  ]a-delta,a[
  subset.eq
  D_f.
  $

  On dit que $f$ admet $ell in RR$ comme *limite à gauche en $a$* si

  $
  forall epsilon>0,
  quad
  exists eta>0,
  quad
  forall x in D_f,
  quad
  a-eta<x<a
  =>
  abs(f(x)-ell)<epsilon.
  $

  On note

  $
  lim_(x -> a^-) f(x)=ell.
  $
])

#definition([
  On dit que $f$ est *continue à droite en $a$* si elle admet une limite à droite en $a$ et si cette limite vaut $f(a)$.

  On dit que $f$ est *continue à gauche en $a$* si elle admet une limite à gauche en $a$ et si cette limite vaut $f(a)$.
])

#definition([
  Soient $a,b in RR$ avec $a<b$ et

  $
  [a,b] subset.eq D_f.
  $

  On dit que $f$ est *continue sur $[a,b]$* si :

  - $f$ est continue sur $]a,b[$ ;
  - $f$ est continue à droite en $a$ ;
  - $f$ est continue à gauche en $b$.
])

= Limites en l'infini

#definition([
  Soit $a in RR$ tel que

  $
  [a,+oo[
  subset.eq
  D_f.
  $

  On dit que $f$ a pour limite $ell in RR$ en $+oo$ si

  $
  forall epsilon>0,
  quad
  exists M>0,
  quad
  forall x in D_f,
  quad
  x>M
  =>
  abs(f(x)-ell)<epsilon.
  $

  On note

  $
  lim_(x -> +oo) f(x)=ell.
  $
])

#definition([
  Sous la même hypothèse sur le domaine, on dit que $f$ *tend vers $+oo$ en $+oo$* si

  $
  forall A>0,
  quad
  exists M>0,
  quad
  forall x in D_f,
  quad
  x>M
  =>
  f(x)>A.
  $

  On note

  $
  lim_(x -> +oo) f(x)=+oo.
  $
])

#remark([
  Les notes indiquent que l'on définit de la même manière les autres cas de limites en l'infini, notamment

  $
  lim_(x -> +oo) f(x)=-oo,
  quad
  lim_(x -> -oo) f(x)=ell,
  $

  ainsi que les limites infinies lorsque $x->-oo$.
])

= Limite infinie en un point

#definition([
  Soit $a in RR$ tel qu'il existe $delta>0$ vérifiant

  $
  ]a-delta,a[ union ]a,a+delta[
  subset.eq
  D_f.
  $

  On dit que $f$ a pour limite $+oo$ en $a$ si

  $
  forall A>0,
  quad
  exists eta>0,
  quad
  forall x in D_f,
  quad
  abs(x-a)<eta
  =>
  f(x)>A.
  $

  On note

  $
  lim_(x -> a) f(x)=+oo.
  $
])

#remark([
  On définit de même

  $
  lim_(x -> a) f(x)=-oo.
  $
])
