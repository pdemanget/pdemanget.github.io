Flyway
======

Les migrations de BDD SQL
voir 



Les bases
---------
https://flywaydb.org/documentation/migrations#naming
https://flywaydb.org/documentation/api/


Problèmes
==========
- Le nommage est très strict, certains noms de fichiers sont refusés
- Si la base n'est pas vide il faut l'initaliser
- le parametre "clean" est activé par défaut (ça supprime toute la base !)
- le paramtre schemas est case-sensitive, il va essayer de recréer le schéma si on le 
met en minuscules
- additionnellement à ça, il y a une création de schéma avec un message qui fait peur 
sur une creation d'un schéma existant
- oracle 11 n'est plus supporté, il faut downgrader les versions

L'impression de tout ça, c'est que pour l'utiliser en production et ne pas avoir peur 
de perdre des données, il faut bien maitriser et bien paramétrer flyway.



nommage
-------
la partie "pénible" de flyway, le nommage est assez rigide sinon le fichier n'est pas 
détecté:

    V1__nomlibre.sql

seule la partie "nomlibre" est libre, attention aux 2 undescores!
ce qui ne marche pas:
V__1nomlibre.sql
V1_nomlibre.sql
V_1_nomlibre.sql

L'init
------
Si la base n'est pas vide : 


mvn flyway:baseline

(autre option possible: initOnMigrate)

La version d'oracle
-------------------
Le support d'oracle 11 a été supprimé :/ , il suffit de downgrader de V6 en V4
 <version>4.2.0</version>

Intégrations
============
Intégration sous Spring
-----------------------

https://www.callicoder.com/spring-boot-flyway-database-migration-example/
"Flyway tries to read database migration scripts from classpath:db/migration folder by default."



Intégration dans maven
----------------------
           <plugin>
                <groupId>org.flywaydb</groupId>
                <artifactId>flyway-maven-plugin</artifactId>
                <version>6.1.0</version>
                <configuration>
                    <url>jdbc:h2:file:./target/foobar</url>
                    <user>sa</user>
                </configuration>
                <dependencies>
                    <dependency>
                        <groupId>com.h2database</groupId>
                        <artifactId>h2</artifactId>
                        <version>1.4.197</version>
                    </dependency>
                </dependencies>
            </plugin>

mvn flyway:baseline -Dflyway.configFile=recette.flyway.properties
mvn flyway:baseline -Dflyway.url=otherurl

flyway.properties
-----------------



        <plugin>
                <groupId>org.flywaydb</groupId>
                <artifactId>flyway-maven-plugin</artifactId>
                <version>6.1.0</version>
                <configuration>
                    <additionalClasspathElements>
                        <additionalClasspathElement>src/main/sql</additionalClasspathElement>
                    </additionalClasspathElements>
<!--                     <url>jdbc:h2:file:./target/h2</url> -->
<!--                     <user>sa</user> -->
                    <url>jdbc:mysql://localhost:3306/test</url>
                    <user>toto</user>
                    <password>toto</password>
                    <schemas>test</schemas>
                    <table>ZZ_FLYWAY</table>
                    <locations>db</locations>
                    <cleanDisabled>true</cleanDisabled>
                </configuration>
                <dependencies>
                    <dependency>
                        <groupId>com.h2database</groupId>
                        <artifactId>h2</artifactId>
                        <version>1.4.197</version>
                    </dependency>
                    <dependency>
                        <groupId>mysql</groupId>
                        <artifactId>mysql-connector-java</artifactId>
                        <version>8.0.18</version>
                    </dependency>
                </dependencies>




https://flywaydb.org/documentation/maven/








Intégration en CDI
------------------
https://github.com/dobermai/Hibernate-Flyway-Integration


Configurations
===============

