#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Fiche 2 — Exercice 7

$E = { m in M : m text("contient un nombre pair de 1")}$
construction de E:

- Base: $epsilon$ (le mot est vide) $in E$

Soit $E_C$ l'ensemble des mots $m in M$ construit inductivement comme suivi

$R_1$: si $m in E_C$ alors $m 0 in   E_C$
$R_2$: si $m in E_C$ alors $0 m in   E_C$
$R_3$: si $m in E_C$ alors $1 1 m in E_C$
$R_4$: si $m in E_C$ alors $m 1 1 in E_C$
$R_5$: si $m in E_C$ alors $1 m 1 in E_C$

Montrons que $E_C in E$:

Montrons d'abord $E <= E_C$

soit $m in E$, notrons que $m in E_C$

Nous allons montrer que $m in E_c$ par induction sur la taille de $m$

$|m| = $ (la taille de m) : nombre de $0$ et de $1$ dans $m$

Base: $|m| = 0$. $m in epsilon$ et par onstruction $m in E_C$
H.I. $P(n)$ $P$ Pour tout $m in E$ et $ =0 <= |m| <= n$ alors $m in E_C$

$P (n + 1)$: soit $m' in E$ tq $|m'| = n + 1|$ alors $m' in E_C$

Soit $m' in E$ et $|m'| = n + 1$ Nous avons 4 cas.

1. $m' = 1$ - . - $1$ 

$m'' = $ - . -

$0 <= |m''| <= n + 1$ et $m'' in E$, donc par H.I. $m'' in E_C$

$m'' in E_C$ et par $R_5$ $m' in E_C$

2. $m'$ = 1 - 0
m' = "1 -"

$00 <= |m''| <= n, m'' in E$, H.I. s'applique et implique $m'' in E_C$. Par $R_1$ nous avons $m' = m'' a in E_C$

3. $m' = 0 --- 1$
c'est la meme chose que le cas 2, mais on utilise la regle $R_2$

4. $m' = 0 --- 0$ (same que les cas 2 et 3)

Base $eps in E_C$ (Completude)

$R_1$ : $m 0 in E_C$
$R_2$ : $0 m in E_C$
$R_3$ : $1 m 1 in E_C$

$E_C subset E$ (validite)

Montrons que $E_C subset E$ par induction sur la taille des mots:

Nous voulons montrer que $forall m in E_C, m in E$

Soit $m in E_C$

Base: $|m| = 0$, alors $m in epsilon$ et donc $m in E_C$:

H.I. $forall m in E_C$ et $0 <= |m| <= n$, alors $m in E$

$P(n + 1)$: $forall m' in E_C$ et $|m'''| = n + 1$ alors $m' in E$

Soit $m' in E_C$ et $|m'| = n + 1$ alors $m' in E$
Soit $m' in E_2$, nous avons 3 possibilites

1. m' a ete contruit par $R_1$ donc $m' = m 0$
$|m| = n$ et $m in E_C$ par H.I $m in E$


Puisque $m in E$ (il anombre pair de 1) alors $m' = m 0 in E$

2. m' a ete construit par $R_2$ (m'' cas que $R_1$)

3. ma a ete construit par $R_3$
$m' = 1 m 1$

$0 <= |m| = n - 1$, et $m in E_C$. Donc H.I. s'applique et immplique $m' in E$

Puisque $m in E$, alors par definition $m' = 1 m 1 in E$


