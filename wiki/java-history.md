Tour d'horizon des évolutions de version Java
Voici ma liste anti-chronologiques des évolutions Java.

https://www.oracle.com/technetwork/java/javase/archive-139210.html

Java 13 - Septembre 2019 
---------
- jpackage
- les chaines brutes (raw string) 



Java 12 - March 2019
--------
Nouveauté (syntaxe/api/jvm)
- [syntax] le switch fonctionnel
-  [api] le microbenchmarking 
- [api] unicode v11
- GC
- support de ARM64 unique.
- archives CDS

sources
https://openjdk.java.net/jeps/230 [microbenchmarking]

Supprimé:
- [syntax] chaine brutes


Download:
Ce qu'il faut retenir de la licence depuis java 11 c'est que Oracle fournir à la fois le JDK en licence commerciale et GPL, voila le lien GPL:
https://jdk.java.net/12/

Et que d'autre fournisseur nous fournissent en licence libre:
https://adoptopenjdk.net
https://developers.redhat.com/products/openjdk/overview
https://www.ibm.com/developerworks/java/jdk


Pour eclipse 4.11 (2019-03) installer le plugin pour Java12
sous maven activer les preview-features
https://stackoverflow.com/questions/52232681/compile-a-jdk12-preview-feature-with-maven


Prise en main de java 12
-------------------------
Voici mon mini-tuto pour la prise en main de java 12 (quand on vient de java 9)
- installer le jdk
https://download.java.net/java/GA/jdk12/GPL/openjdk-12_windows-x64_bin.zip
- installer le eclipse dernier version (version Java standalone etc.)
- prendre le plugin java12
  bien activer l'option pour désintaller l'ancient JDT et installer le nouveau en beta.


- compiler son premier projet en Java12 (voir ma classe de test "Java12Test")
Ensuite on verra ce message assez souvent si on oublie d'activer l'option "preview-feature" du compilateur:
  "switch expression is a preview feature and is disabled by default"
  
 . Sous eclipse dans les options du langage: activer "java12" puis décocher "Use default compliance settings" et enfin cocher "Enable preview features"
 . sous maven optiver l'option dans le plugin compiler
 https://stackoverflow.com/questions/52232681/compile-a-jdk12-preview-feature-with-maven









Java 11 - March 2018
--------
Depuis mars 2019 plus de version libre par Oracle, il faut chercher les versions open-sources:
https://stackoverflow.com/questions/52431764/difference-between-openjdk-and-adoptopenjdk

et JavaFX est livré séparément:
https://stackoverflow.com/questions/52144931/how-to-add-javafx-runtime-to-eclipse-in-java-11
https://gluonhq.com/products/javafx/

liens de download java:

http://jdk.java.net/11/


    AdoptOpenJDK - https://adoptopenjdk.net
    Azul - https://www.azul.com
    IBM - https://www.ibm.com/developerworks/java/jdk
    Mercurial - https://hg.openjdk.java.net 
    Oracle - http://jdk.java.net
    RedHat - https://developers.redhat.com/products/openjdk/overview
    SapMachine - https://sap.github.io/SapMachine
    Amazon – Corretto - https://aws.amazon.com/corretto

---------------------------------------------------------------------------
|     Provider      | Free Builds | Free Binary   | Extended | Commercial |
|                   | from Source | Distributions | Updates* | Support    |  
|-------------------------------------------------------------------------|               
| AdoptOpenJDK      |    Yes      |    Yes        |   Yes    |   No       |
| Azul              |    No       |    Yes        |   Yes    |   Yes      |
| IBM               |    No       |    No         |   Yes    |   Yes      |
| Mercurial         |    Yes      |    Yes        |   No     |   No       |
| Oracle            |    No       |    Yes        |   No**   |   Yes      |
| RedHat            |    Yes      |    Yes        |   Yes    |   Yes      |
| SapMachine        |    Yes      |    Yes        |   Yes    |   Yes      |
| Amazon – Corretto |    Yes      |    Yes        |   Yes    |   No       |
---------------------------------------------------------------------------



Nouveauté:
 - Le client HTTP existant depuis java9 est maintenant standard.
 - Launch Single-File Source-Code Programs: pour lancer un java à la volée sans le compiler préalablement
 - le mot-clef var est autorisé dans les lambda.
 - 2 nouveaux GC: Epsilon (pour tests) et ZGC (optimisé pour des Heap très gros)
 



Java 10 - March 2018
--------
- Ajout des "var", inférence de type JEP286
- suppression du javah.exe (inutile depuis java 8)
 


Java 9 - September 2017
--------
A partir de cette version on a le même N° de version techniquement et commercialement. Auparavent il fallait paramétrer java 1.8 pour avoir du java 8.
- ajout des modules! projet jigsaw - notamment le fichier module-info.java


Java 1.8
--------
Les lambda!

Java 1.7
--------
Evolution très tardive (5 ans d'attente) pour des évolutions du langage, donc évolution plutôt majeure, mais nettement moins que java 5 et java 8


Java 1.6
--------
Evolution plutot mineure de java


Java 1.5
--------
Evolution majeure du jdk, nommée officiellement "Java 5" qui voit apparaitre les Generics. Les listes et map sont enfin typées!
En code:

Java 1.4
--------


Java 1.3
--------


Java 1.2
--------
Longtemps nommé "Java 2" y compris pour les version 1.3 et 1.4
On note:
L'apparition des ArrayList, version non synchronisée et plus efficace, servant à remplacer les vieux Vector. 

(donc quand vous voyez du Vector dans vos sources ...)


Java 1.1
--------
C'est la 1ere version que j'ai utilisé en runtime sur linux et java. 
Les librairies runtime étaient contenues dans un classes.zip




Java 1
------
Je n'en ai pas trouvé de traces, pas de version téléchargeable contrairement au java 1.1