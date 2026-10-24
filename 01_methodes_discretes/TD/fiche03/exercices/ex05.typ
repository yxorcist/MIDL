// source-confidence: high
// source-note: énoncé TD03_ensembles-fonctions.pdf + corrections photographiées 11493.
// source-reconstruction: étapes manquantes complétées ; distinction entre contenu des photos et preuves ajoutées signalée dans le texte.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= TD03 — Exercice 5

== Préfixer les mots sur $\{a,b\}$

On note $Sigma^*$ l'ensemble des mots finis sur l'alphabet $\{a,b\}$, contenant aussi le mot vide $epsilon$. On définit

$ f:Sigma^* -> Sigma^*, quad f(w)=a w. $

== 1(a). Injectivité

Soient deux mots $u,v in Sigma^*$ tels que $f(u)=f(v)$. Cela signifie $a u=a v$.

Dans un mot, les lettres sont ordonnées : supprimer le même premier symbole $a$ de part et d'autre donne $u=v$.

Donc *$f$ est injective*.

== 1(b). Surjectivité

Tout mot de l'image de $f$ commence par la lettre $a$ et a longueur au moins $1$.

Le mot vide $epsilon$ n'a donc aucun antécédent. Le mot $b$ non plus.

Ainsi *$f$ n'est pas surjective*.

*Conclusion :* injective, non surjective, donc non bijective.
