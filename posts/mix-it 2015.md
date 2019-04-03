MIX-IT 2015
===========


Les conférences du mix-it 2015 étaient variées, comme d'habitude. Il y avait les conférences agilité, les conférences techniques que je privilégie, et dans chaque thème lessujets connus que l'on veut approfondir, et les sujet innatendus. 

Dans cette dernière catégorie, le sujet qui m'a agréablement surpris est le sujet sur Ceylon: 
Les points importants de Ceylon:
 - Il tourne sur la JVM et sur un moteur JS
 - Il est complètement interrobable avec Java et Javascript: on peut appeler du code Java depuis Ceylon, et on peut appelr Ceylon depuis du Java.
 - Il a une syntaxe qui ne déroute pas un programmeur Java, mais avec de forte évolutions: l'inférence de type, les properties, les modules, le générique réifié.
 - Il a son propre dépôt: Herd qui est le pendant de maven central (avec une publication facilitée par rapoort au dépot maven) 
 - Il s'intègre à JEE ou Vertx

Ceylon, le langage de programmation
---

Ce langage basé sur la jvm, peut-être vu comme une amélioration de Java, meêm s'il est bien plus que ça:
 - Il peut-etre compilé pour une VM java ou pour du JS
 - Il dispose de son propre gestionnaire de dépot, comme Maven, mais plus facile d'approche.
 - Il dispose d'un process de build intégré au langage, tant au niveau de la gestion de dépendance, qu'au niveau du lancement de la compilation. Ce qui permet d'envisager toute sorte d'utoamtisation.
 - La syntaxe du langage est plus simple et complète que celle de Java.
 
### Le langage et sa syntaxe
Dans les amélioration du langage, on retrouve des concepts de Java, C#, aussi un peu de scala:
- module: Cela permet un découpage au sein du projet, et également de déclarer les dépendances au sein du langage. on va retrouver cette notion en Java 9
- property: comme en C# inutile de déclarer getter et setter
- inférence de type: inutile de répéter le type de la variable lorsqu'on l'affecte dans une déclaration, une boucle for etc.
- les métadonnée
- les expression lambda
- operations: sur les map par exemple, on utilise map["clef"] au lieu de map.get("clef) 

Voir des exemples de code ici:
http://try.ceylon-lang.org/#

On retrouve aussi le gestionnaire de dépot Herd qui permet de publier ses propres modules:

Intégrations au projet:
ON peut développer au choix pour JEE ou Vertx.

### Environnement de développement
Eclipse dispose déjà de son plugin de développement Ceylon. Le plugin pour intellij est en cours de réalisation.


En ligne de commande, on a une command unique :"ceylon" avec des sous commandes, un peu dans l'esprit de git, ce qui permet d'avoir rapidement une liste exhaustive des sosu commandes possibles.

Cela permet:
ceylon compile ...  compiler un programme ceylon
ceylon run ... le lancer le programme Ceylon
beaucoup d'autre choses

On remarque qu'il est inutile de fournir un fichier de build de type pom.xml ou build.xml puisque tout est déclaré au sein du langage;

### Environnement d'exécution
on peut intégrer Ceylon en tan qu'exécutable standalone bien sur, mais aussi:
- au sein d'un environnement JEE
- au sein de Vertx, le nouveau serveur asynchrone.



Conférence sur le material desin
===
Pour faire simple le "material design" est le guide de style de Google  choisi pour la dernière version d'android. 
C'est un design concu pour mobile, mais avec des concepts applicable au Web. C'est une mouvance qu'on peut comparer au "flat design" mais avec des concept différents

Notre Orateur est un employé de Capitaine train, c'est pour son application qu'il a mis en oeuvre le material design, il nous en a décrit les concepts:

Les composants sont vu comme des éléments matériel: un feuille va rendre une ombre en fonction de sa hauteur. Les éléments importants seront mis en évidence par leur hauteur, 
avec une économie de couleur et d'image. 

les éléments pour mettre en oeuvre ce principe sont:
- les ombres: elles sont appliquée en fonction d'un hauteur sur l'axe Z.
-

- des ombres: basée sur un décalage sur l'axe Z: on ne décrit plus la taille de l'ombre, mais la hauteur du composant
