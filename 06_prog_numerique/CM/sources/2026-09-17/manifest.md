# Provenance — CM du 17/09/2026

Sujet : Applications en ingénierie et programmation numérique  
Type : CM  
Thème : systèmes linéaires, rappels matriciels, méthodes directes et Gauss

## Sources originales

- `8886.jpg` — début du cours, systèmes linéaires, matrices et vecteurs  
  SHA-256 : `e78c2eb2c2dd3a4c8cbf2303a3c69ea9779591fe6d6a47096716a8c313ce2650`
- `8889.jpg` — produit matriciel, transposée, matrices carrées et inverse  
  SHA-256 : `412c566094a572cd467771036497afb03ea3253dcb2010e594b176b3bd799c2b`
- `8892.jpg` — symétrie/antisymétrie, système `Ax=b`, déterminant  
  SHA-256 : `d435a1ceed8cd70a5cca91549e85e621bbdc875eff88dae068628557076e1822`
- `8895.jpg` — propriétés des inverses et caractérisations de l'inversibilité  
  SHA-256 : `877121a0ebaabe1a6bd52b47f2b65a04e4b3f2340193cdc119f39f75f468277b`
- `8898.jpg` — valeurs propres, polynôme caractéristique, introduction aux méthodes de résolution  
  SHA-256 : `dccda87ddc8b8cfc81ba8bdf4dbbbb2d8cd308f2f3feb9f0b296f3f49decdf06`
- `8901.jpg` — règle de Cramer et exemple numérique  
  SHA-256 : `150884bb7bbd2e24431ee76951cd8fc3703f11649b964c145962e5d8ce0a87eb`
- `8904.jpg` — photographie du tableau : matrices triangulaires et diagonales  
  SHA-256 : `42198aec2d479e7ac60b1ce6d61c0d4640a8cb56ccb704c78553f5cfc93368c5`
- `8905.jpg` — matrices particulières et résolution par substitution  
  SHA-256 : `ffd568b6bf46b5749590f16d4e56ce012bee10f1c2b98e0057b814a535c9b91f`
- `8908.jpg` — principe des méthodes directes et début de la méthode de Gauss  
  SHA-256 : `5e22d81a9b628208fac6974a9f19f47d8d05632080487b9026c39f45ff16006a`
- `8911.jpg` — première vue du schéma algorithmique de l'élimination de Gauss  
  SHA-256 : `3551080be43f9e487db8295b5a2594e7deadc5ecdb88b3206b4275d0f5429352`
- `8914.jpg` — dernière vue du tableau : bornes des boucles de Gauss, mise à jour de `b` et complexité `O(n^3)`  
  SHA-256 : `b7bbbc1171da4b32375e5fd586570c16fae3b6ea0bd3958b6e327bd0479bad50`

Archive locale des 11 originaux : `prog-numerique-2026-09-17-sources.zip`  
SHA-256 : `4e8590cf0cde6341a29aa81d5900477b56d549a4c30b6ed84ecd46501f73dec5`

## Correspondance vers les notes Typst

- `8886.jpg`, `8889.jpg`, début de `8892.jpg` → `2026-09-17_01_rappels-matrices.typ`
- `8892.jpg`, `8895.jpg` → `2026-09-17_02_inversibilite-determinant.typ`
- `8898.jpg` → `2026-09-17_03_valeurs-propres-systemes.typ`
- `8901.jpg`, `8904.jpg`, `8905.jpg` → `2026-09-17_04_cramer-matrices-particulieres.typ`
- `8908.jpg`, `8911.jpg`, `8914.jpg` → `2026-09-17_05_principe-gauss.typ`

## Fidélité

Le contenu a été nettoyé et restructuré sans développement théorique extérieur. Les parties lisibles ont été conservées. La dernière photographie `8914.jpg` complète le schéma de Gauss : boucle interne `j = k, ..., n`, mise à jour du second membre et complexité `O(n^3)`.
