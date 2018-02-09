# Java 9

Maven
-----
https://blog.codefx.org/tools/maven-on-java-9/


<plugin>
	<groupId>org.apache.maven.plugins</groupId>
	<artifactId>maven-compiler-plugin</artifactId>
	<configuration>
		<compilerArgs>
			<arg>--add-modules java.xml.bind</arg>
		</compilerArgs>
		<fork>true</fork>
	</configuration>
</plugin>

https://github.com/cfdobber/maven-java9-jigsaw
toolchains.xml

Modules
--------


java --add-modules java.xml.ws.annotation -jar front-maiv.jar

//module-info.java
[open] module com.hello{
   exports  pkg.name [to module.name];
   requires java.sql;
   requires transitive ...
   uses
   provides class.name with class.name.impl 
   opens pkg.name [to module.name]
}

export/requires: pour donner accès à un package/ demander l'accès à un module 
open/opens: pour la réflexion
uses/provides: pour ServiceLoader

Le chargement des modules par implem
--------------------------------------
DrinksService is an interface, CoffeeService is an implementation:

module soat.coffee.maker {
    requires soat.vending.machine.model;
    provides fr.soat.vending.machine.services.DrinksService
        with fr.soat.coffee.maker.CoffeeService;
}

module soat.vending.machine.gui {
    requires soat.vending.machine.model;
    requires soat.coffee.maker;
    uses fr.soat.vending.machine.services.DrinksService;
}

ServiceLoader<DrinksService> drinkServiceProviders = ServiceLoader.load(DrinksService.class);
 



modulepath

- JDK modules: java.base, java.xml
- named module (with module-info)
- automatic module (without module-info) entry of manifest or name of the jar
- Unnamed module contains all the jars and classes on the classpath; can read all modules.

### mis au point du module
Méthode pour débugger le module-info, en trois étapes:
1. lancer la compil maven et répérer les 2 lines d'erreurs:
[ERROR] ~/spring-petclinic/src/main/java/org/springframework/samples/petclinic/system/CacheConfig.java:[21,16]
  package javax.cache is not visible
[ERROR]   (package javax.cache is declared in the unnamed module, but module javax.cache does not read it)

2. pour retrouver le nom du jar sous eclipse, aller à la ligne en erreur, trouver la classe utilisée, puis ouvrez la (commande "open type" shift ctrl T) et la par association dans le package explorer, vous retrouvez son chemin sou maven.

3. et pour trouver le nom de l'automatic module, ou du module tout court? utiliser la commande jar:
jar --describe-module --file ~/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar 
jar --file ~/.m2/repository/org/slf4j/slf4j-api/1.8.0-beta1/slf4j-api-1.8.0-beta1.jar --describe-module

### Eclipse
Install Eclipse Java 9 Support for Oxygen releases before Oxygen.1a

This is useful if you have to debug problems, e.g. when it fails to run your project.

This is essential if you want to run JUnit tests in the Eclipse IDE using Java 9.

We recommend to install the support via https://marketplace.eclipse.org/content/java-9-support-oxygen/

## quick Map List

Map.of(K0,V0,K1,V1...)
List.of(...)


# Sources

https://zeroturnaround.com/rebellabs/java-9-modules-cheat-sheet/
	modules

https://github.com/hasalex/classpath-demo
  French Demo of modules with code :"Le classpath n'est pas mort... mais presque"

http://www.logicbig.com/tutorials/core-java-tutorial/modules/multi-module-mode/

http://blog.takipi.com/5-features-in-java-9-that-will-change-how-you-develop-software-and-2-that-wont/
  Personal list of killer features
	1. Java + REPL = jshell
	2. Microbenchmarks are coming JMH
	3. Will G1 be the new default garbage collector?
	4. HTTP 2.0 is the future
	5. The process API just got a huge boost
	6. Debugging in Production

http://www.journaldunet.com/web-tech/developpeur/1156079-java-9-ce-que-l-on-sait/
Les nouveautés : APIs, JShell, HTTP 2.0...
Jigsaw : une infrastructure plus modulaire
Amélioration des performances (javadoc HTML5)

http://soat.developpez.com/tutoriels/java/futures-fonctionnalites-modulaires-java9/


http://blog.soat.fr/2017/05/java-9-la-revolution-des-modules/
http://www.baeldung.com/new-java-9

#HTTP2 support
https://dzone.com/articles/an-introduction-to-http2-support-in-java-9

https://www.infoq.com/articles/websocket-and-http2-coexist

https://docs.spring.io/spring-boot/docs/current-SNAPSHOT/reference/html/howto-embedded-web-servers.html
https://readlearncode.com/configure-tomcat-9-for-http2/
Configuration de jetty en http2
https://github.com/otrosien/demo-http2/blob/master/build.gradle
http://hoogvliet.de/http2-and-spring-boot



HAProxy
https://vanwilgenburg.wordpress.com/2017/01/10/haproxy-with-undertow-and-tomcat-in-spring-boot/

#Spring

                <dependency>
                        <groupId>org.springframework.boot</groupId>
                        <artifactId>spring-boot-starter-web</artifactId>
+                               <!-- Exclude the Tomcat dependency -->
+<!--                   <exclusions> -->
+<!--                           <exclusion> -->
+<!--                                   <groupId>org.springframework.boot</groupId> -->
+<!--                                   <artifactId>spring-boot-starter-tomcat</artifactId> -->
+<!--                           </exclusion> -->
+<!--                   </exclusions> -->
                </dependency>
+               <!-- Use Jetty instead -->
+<!--           <dependency> -->
+<!--                   <groupId>org.springframework.boot</groupId> -->
+<!--                   <artifactId>spring-boot-starter-jetty</artifactId> -->
+<!--           </dependency> -->
+               <!-- Use Undertow instead -->
+<!--           <dependency> -->
+<!--                   <groupId>org.springframework.boot</groupId> -->
+<!--                   <artifactId>spring-boot-starter-undertow</artifactId> -->
+<!--           </dependency> -->

## Spring task pool
http://www.devglan.com/spring-boot/spring-boot-async-task-executor


modules
-------
https://blog.frankel.ch/migrating-to-java-9/2/
Pour débugger le module-info, lancer la compil maven et répérer les 2 lines d'erreurs:
[ERROR] ~/spring-petclinic/src/main/java/org/springframework/samples/petclinic/system/CacheConfig.java:[21,16]
  package javax.cache is not visible
[ERROR]   (package javax.cache is declared in the unnamed module, but module javax.cache does not read it)

Et là on utilise l'automatic module

 /C:/Users/philippe.demanget/project/ma-iv/back/src/main/java/fr/enfrasys/maiv/back/web/EventStreamController.java:[7,11] package org.slf4j is not visible
[ERROR]   (package org.slf4j is declared in the unnamed module, but module org.slf4j does not read it)
LoggerFactory est déclaré dans slf4j-api-version.jar, le nom du module est slf4j

EventStreamControllerEventStreamController
et pour trouver le nom de l'automatic module, ou du module tout court? utiliser la commande jar:
jar --describe-module --file ~/.m2/repository/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar 
jar --describe-module --file ~/.m2/repository/org/slf4j/slf4j-api/1.8.0-beta1/slf4j-api-1.8.0-beta1.jar 
les modules sont donc respectivement slf4j.api et org.slf4j


Ce qu'il faut retenir:
http://openjdk.java.net/projects/jigsaw/quick-start
jar --describe-module --file ~/.m2/repository/org/slf4j/slf4j-api/1.8.0-beta1/slf4j-api-1.8.0-beta1.jar
java --add-modules java.xml.ws.annotation -jar front-maiv.jar
java --module-path mods -m com.greetings/com.greetings.Main
