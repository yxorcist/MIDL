// source-confidence: high
// source: TD01_series-positives.pdf, exercice 1 (énoncé officiel).
// presentation: énoncé fidèle, choix de méthode, preuve courte, pièges relevés lors du travail manuscrit.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD01 — Exercice 1 : séries télescopiques

== Énoncé

*1.* Pour $n >= 1$, on pose $u_n = 1/sqrt(n) - 1/sqrt(n+1)$.
Justifier que $u_n > 0$. En calculant les sommes partielles, montrer que
$sum_(n=1)^infinity u_n$ converge et déterminer sa somme.

*2.* Pour $n >= 2$, on pose
$
u_n = 1/sqrt(n-1) - 2/sqrt(n) + 1/sqrt(n+1).
$
a) Trouver $(v_n)_(n >= 2)$ telle que $u_n = v_n - v_(n+1)$.

b) Calculer $S_N = sum_(n=2)^N u_n$ pour $N >= 2$.

c) Déterminer la nature de la série et, si elle converge, sa somme.

== Réflexe : reconnaître le télescopage

Quand $u_n$ est une différence de deux termes consécutifs,
chercher une suite $(a_n)$ telle que
$
u_n = a_n - a_(n+1).
$

Les termes intermédiaires s'annulent :
$
sum_(n=p)^N (a_n-a_(n+1)) = a_p-a_(N+1).
$

*Important :* l'annulation seule ne prouve pas la convergence.
Il faut ensuite calculer la limite des sommes partielles.

== 1. Première série

=== Positivité

Pour tout $n >= 1$, on a
$
sqrt(n) < sqrt(n+1).
$
Comme les deux racines sont strictement positives, le passage aux inverses
*renverse le sens de l'inégalité* :
$
1/sqrt(n) > 1/sqrt(n+1).
$
Donc $u_n > 0$.

=== Sommes partielles et convergence

Posons $a_n = 1/sqrt(n)$. Alors $u_n=a_n-a_(n+1)$ et, pour tout $N >= 1$,
$
S_N &= sum_(n=1)^N (a_n-a_(n+1)) \
    &= a_1-a_(N+1) \
    &= 1-1/sqrt(N+1).
$

Or $1/sqrt(N+1) -> 0$ lorsque $N -> +infinity$. Par conséquent,
$
lim_(N -> +infinity) S_N=1.
$

*Conclusion :* la série converge, et
$
sum_(n=1)^infinity (1/sqrt(n)-1/sqrt(n+1))=1.
$

== 2. Seconde série

=== a) Construire la différence $v_n-v_(n+1)$

Les trois termes suggèrent de regrouper :
$
u_n
= (1/sqrt(n-1)-1/sqrt(n))
  - (1/sqrt(n)-1/sqrt(n+1)).
$

Posons donc
$
v_n=1/sqrt(n-1)-1/sqrt(n).
$

Comme $v_(n+1)=1/sqrt(n)-1/sqrt(n+1)$, on a bien
$
u_n=v_n-v_(n+1).
$

=== b) Calculer $S_N$

Pour tout $N >= 2$,
$
S_N &= sum_(n=2)^N (v_n-v_(n+1)) \
    &= v_2-v_(N+1) \
    &= 1-1/sqrt(2)-1/sqrt(N)+1/sqrt(N+1).
$

=== c) Déterminer la nature et la somme

Puisque $1/sqrt(N) -> 0$ et $1/sqrt(N+1) -> 0$,
$
lim_(N -> +infinity) S_N=1-1/sqrt(2).
$

*Conclusion :* la série converge et
$
sum_(n=2)^infinity u_n=1-1/sqrt(2).
$

== À retenir

- *Détecter* $a_n-a_(n+1)$ avant de chercher un critère de comparaison.
- *Écrire les bornes* : $sum_(n=p)^N (a_n-a_(n+1))=a_p-a_(N+1)$.
- *Vérifier le signe moins* : jamais $a_p+a_(N+1)$.
- *Conclure avec une limite finie* ; une série télescopique peut diverger.
- *Justifier l'inversion d'une inégalité* en précisant que les termes sont positifs.
