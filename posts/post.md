---
title: Using github pages
author: pdem
date: 2016-11-15
categories:
  - xxx
tags:
  - xxx
  - privacy
  - encryption
  - passwords
---

15/11/2016
==========

Création d'une page sur github pages

On peut facilement créer son site sur github.io, sur le domaine <username>.github.io. On va ensuite ajouter jekyll, c'est un peu moins simple:

 1. Créer son site: il suffit de créer un depot github qui s'appelle <username>.github.io et donc les sources seront donc sur github.com/<username>/<username>.github.com
 2. configurer jekyll

 S'inspirer des sites d'exemple:
 https://github.com/jekyll/jekyll/wiki/sites
 https://github.com/showcases/github-pages-examples


 Je m'inspire des sites
 https://github.com/UndiscoveredAttractions/undiscoveredattractions.github.io
 https://github.com/IcyApril/icyapril.github.io/blob/master/feed.xml


 Qui contient un index.md, et un répertoire _posts + un _config.yml

 N'ayant pas de ruby sur mon poste, n'étant pas admin du poste, difficile d'installer jekyll, donc finalement, je préfère utiliser une lib JS pour afficher du markdown, ma première recherche tombe la dessus:
 https://github.com/evilstreak/markdown-js
 ou ça
 http://strapdownjs.com/


 ça marche online, pas besoin d'installation, c'est ready-to-use.... à suivre
 ça marche online, pas besoin d'installation, c'est ready-to-use.

 
## Ne pas avoir peur de git rebase 1/2
Le `git rebase` est **LA fonctionnalité** de git, avec les branches bien sûr.

- Faire des développement en **//** sur `master` et sur la branche `tarte_salées`
- Sur la branche `master`
    - Modifier la **tarte aux poireaux** en ajoutant de la **crème**. ⇒ Commiter
- Sur la branche `tarte_salées`
    - Modifier la **tarte aux poireaux** en ajoutant des **œufs**. ⇒ Commiter
    - Créer une **tarte aux concombres**. ⇒ Commiter
- Regardez sur `gitk`, on est prêt à **rebaser** les 2 commits qui partent de la branche `tarte_salées`

---

## Ne pas avoir peur de git rebase 2/2
- Se placer sur `tarte_salées` et la **rebaser** sur `master` :  
`git rebase master`
- **⇒ Conflits** sur la **tarte aux poireaux**
- Regarder la console, git précise ce qu'il faut faire pour résoudre le conflit :
    - Lancer l'outil de **merge** `git mergetool`
    - **Continuer** le rebase avec :
`git rebase --continue`
- *C'est fait !*
- Constater avec `gitk --all` que la **base** de la branche `tarte_salées` a été déplacée et que les commits de cette branche ont **tous changé de sha1**
