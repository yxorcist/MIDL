// source-confidence: medium
// source-note: énoncé officiel TD02_construction-inductive.pdf, exercice 8 ; aucune correction manuscrite complète de l'exercice 8 n'est visible dans les photos 11489–11500.
// source-reconstruction: schémas inductifs et preuves succinctes complétés indépendamment à partir de l'énoncé, non présentés comme des propos du professeur.

#set page(paper: "a4", margin: 2cm)
#set text(lang: "fr", size: 11pt)
#set par(justify: true, leading: 0.65em)

= Exercice 8 — Constructions inductives de langages binaires

On note $U=\{0,1\}^*$ l'ensemble de tous les mots finis sur l'alphabet $\{0,1\}$ et $epsilon$ le mot vide.

Pour chaque langage, on donne une *base* et des *règles de construction*, puis on justifie rapidement leur validité et leur complétude.

== 1. Mots contenant exactement un seul $0$

On définit $E_1$ par :

- *Base.* Le mot $0$ appartient à $E_1$.
- *Règle R1.* Si $w in E_1$, alors $1w in E_1$.
- *Règle R2.* Si $w in E_1$, alors $w1 in E_1$.
- *Aucun autre mot* n'appartient à $E_1$.

*Validité.* La base contient un unique $0$. Ajouter un $1$ à gauche ou à droite n'en ajoute aucun.

*Complétude.* Tout mot contenant exactement un $0$ est de la forme $1^p 0 1^q$ pour certains $p,q in NN$. Il s'obtient de la base $0$ en appliquant $p$ fois R1 puis $q$ fois R2.

== 2. Représentations binaires des entiers pairs sans zéro inutile en tête

On considère qu'un mot binaire représentant un entier naturel est canonique s'il est le seul mot $0$ pour zéro, ou s'il commence par $1$.

Un entier binaire est pair si et seulement si son dernier symbole est $0$.

On construit $E_2$ par :

- *Bases.* Les mots $0$ et $10$ appartiennent à $E_2$.
- *Règle R1.* Si $u0 in E_2$ avec $u$ commençant par $1$, alors $u00 in E_2$.
- *Règle R2.* Si $u0 in E_2$ avec $u$ commençant par $1$, alors $u10 in E_2$.
- *Aucun autre mot* n'appartient à $E_2$.

*Validité.* Les bases sont des écritures sans zéro initial inutile de $0$ et de $2$. Pour les autres mots, les règles conservent le premier symbole $1$ et le dernier symbole $0$.

*Complétude.* Toute écriture binaire canonique d'un entier pair strictement positif est $1b_2 dots b_k 0$ avec des chiffres intermédiaires dans $\{0,1\}$. On peut construire de gauche à droite cette suite en insérant successivement chaque chiffre juste avant le dernier $0$ de la base $10$.

Le mot $0$ reste une base isolée : la règle ne permet pas de créer des écritures interdites $00$, $000$, etc.

== 3. Mots ne contenant jamais deux $0$ consécutifs

On définit $E_3$ par :

- *Bases.* $epsilon in E_3$ et $0 in E_3$.
- *Règle R1.* Si $w in E_3$, alors $w1 in E_3$.
- *Règle R2.* Si $w in E_3$ se termine par $1$, alors $w0 in E_3$.
- *Aucun autre mot* n'appartient à $E_3$.

*Validité.* Les bases ne contiennent pas $00$ ; ajouter un $1$ ne crée aucun $00$, et ajouter un $0$ après un $1$ non plus.

*Complétude.* On procède par induction sur la longueur $n$ d'un mot valide. Le mot vide et le mot $0$ sont couverts par les bases. Tout autre mot valide finit par $1$, auquel cas on enlève ce symbole et applique R1 après induction, ou finit par $0$ précédé par $1$, auquel cas on enlève le dernier $0$ et applique R2 après induction.

== Idée générale

Dans ces exercices, une description ensembliste n'est pas suffisante : il faut fournir des *cas de base*, des *règles qui engendrent tous et uniquement les objets autorisés*, puis une preuve de validité et de complétude.
