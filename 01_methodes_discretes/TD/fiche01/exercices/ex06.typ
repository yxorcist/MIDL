#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)

= Exercice 6

Montrons que pour tout $n in NN$ tel que $n >= 14$, il existe $k,k' in NN$ tels que

$
n=3k+8k'.
$

On raisonne suivant le reste de $n$ modulo $3$.

- Si $n=3r$, alors on peut prendre
  $
  k=r,
  quad
  k'=0.
  $

- Si $n=3r+1$, comme $n>=14$, on a $r>=5$. Or
  $
  n
  =3r+1
  =3(r-5)+16
  =3(r-5)+8 dot 2.
  $
  On prend donc
  $
  k=r-5,
  quad
  k'=2.
  $

- Si $n=3r+2$, comme $n>=14$, on a $r>=4$. Or
  $
  n
  =3r+2
  =3(r-2)+8.
  $
  On prend donc
  $
  k=r-2,
  quad
  k'=1.
  $

Dans les trois cas, $k,k' in NN$. Donc tout $n>=14$ s'écrit sous la forme

$
n=3k+8k'.
$
