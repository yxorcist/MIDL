#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 2

On considère une application *linéaire* $phi: RR^2 -> RR$ telle que :

$
cases(
  phi(-1,1)=2,
  phi(1,1)=4
).
$

La linéarité est donnée par l'énoncé : il reste à déterminer $phi$.

Toute application linéaire de $RR^2$ dans $RR$ est de la forme

$
phi(x,y)=a x+b y,
quad a,b in RR.
$

On pose alors le système correspondant aux deux valeurs imposées :

$
cases(
  -a+b=2,
  a+b=4
)
arrow
cases(
  a=b-2,
  2b=6
)
arrow
cases(
  a=1,
  b=3
).
$

On obtient donc :

$
phi(x,y)=x+3y.
$

Vérification :

$
phi(-1,1)=-1+3=2,
quad
phi(1,1)=1+3=4.
$

Les coefficients $a$ et $b$ sont déterminés de façon unique par le système. Réciproquement, l'application $(x,y) -> x+3y$ est bien linéaire et vérifie les deux conditions.

Donc l'application linéaire cherchée existe et est unique.
