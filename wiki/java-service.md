Générer un service Windows depuis un projet java en (presque) 10 minutes
========================================================================

Je suis parti de ce tutorial et tout a (presque) parfaitement marché:
https://steinar.bang.priv.no/2016/09/08/making-a-java-windows-service-in-10-minutes/

Je veux installer une application java standalone en mode service Windows, on est obligé de wrapper dans un service.
 Pour info, je suis en java 12 standalone (du vanilla java en somme). Ce plugin a l'air ancien, mais il intèger bien la nouvelle jre, pour peu qu'on n'utilise pas les 
 modules bien sur.  

Le plugin maven choisi a pour avantage d'être intégré à maven, il y a juste à configurer pour générer le livrable. 
Ce plugin se base sur izPack pour l'installer, et PrunSrv de apache commons pour le service Windows.

J'ai été obligé d'adapter le code par rapport au tutoriel, il manque quelques dépendance au plugin et j'ai du faire un hack pour le paramètre _izpackAdditionalResourcePaths_ 
qui n'a pas l'air de fonctionner. Les modifications tiennent en 2 étapes: le pom.xml et la classe Main. 

1. le pom.xml
--------------


    <!-- Windows service -->
       <dependency>
           <groupId>com.alexkasko.installer</groupId>
           <artifactId>windows-service-installer-common</artifactId>
           <version>1.0.6</version>
       </dependency>
 
    <!-- ... dans les plugins -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-jar-plugin</artifactId>
                <configuration>
                    <excludes>
                        <exclude>*.json</exclude>
                        <exclude>*.properties</exclude>
                        <exclude>*.xml</exclude>
                    </excludes>
                    <archive>
                        <manifest>
                            <mainClass>${main.class}</mainClass>
                            <addClasspath>true</addClasspath>
                            <addDefaultImplementationEntries>true</addDefaultImplementationEntries>
                            <addDefaultSpecificationEntries>true</addDefaultSpecificationEntries>
                            <classpathPrefix>lib</classpathPrefix>
                            <useUniqueVersions>false</useUniqueVersions>
                        </manifest>
                        <manifestEntries>
                            <Class-Path>conf/</Class-Path>
                        </manifestEntries>
                        <manifestFile />
                    </archive>
                </configuration>
            </plugin>

         </plugin>
           <!-- Windows service -->
           <!-- hack pour ajouter des resources supplémentaire dans izpack -->
           <plugin>
               <artifactId>maven-resources-plugin</artifactId>
               <version>3.1.0</version>
               <executions>
                   <execution>
                       <id>copy-resources</id>
                       <!-- here the phase you need -->
                       <phase>validate</phase>
                       <goals>
                           <goal>copy-resources</goal>
                       </goals>
                       <configuration>
                           <outputDirectory>${basedir}/target/izpack/dist/conf</outputDirectory>
                           <resources>
                               <resource>
                                   <directory>src/main/resources</directory>
                                   <filtering>true</filtering>
                               </resource>
                           </resources>
                       </configuration>
                   </execution>
               </executions>
           </plugin>
           <!-- see http://alexkasko.github.io/windows-service-installer/plugin/installer-mojo.html -->
           <!-- to be run with "mvn windows-service-installer:installer" -->
           <plugin>
               <groupId>com.alexkasko.installer</groupId>
               <artifactId>maven-windows-service-installer-plugin</artifactId>
               <version>1.0.6</version>
               <dependencies>
                   <dependency>
                       <groupId>com.alexkasko.installer</groupId>
                       <artifactId>windows-service-installer-common</artifactId>
                       <version>1.0.6</version>
                   </dependency>
                   <dependency>
                       <groupId>com.google.guava</groupId>
                       <artifactId>guava</artifactId>
                       <version>19.0</version>
                   </dependency>

               </dependencies>
               <configuration>
                   <izpackDefaultInstallDir>D:\your-application</izpackDefaultInstallDir>
<!--                   <izpackAdditionalResourcePaths>file:${basedir}/src/main/resources/logback.xml</izpackAdditionalResourcePaths> -->
                   <!-- <izpackAdditionalResourcePaths>file:${basedir}/src/main/resources/wincc-interface-applix.properties</izpackAdditionalResourcePaths> -->
                   <!-- <izpackAdditionalResourcePaths>file:${basedir}/src/main/resources/ref-37-ECL.json</izpackAdditionalResourcePaths> -->
                   <prunsrvDaemonLauncherClass></prunsrvDaemonLauncherClass>
                   <use64BitJre>true</use64BitJre>
                   <prunsrvDaemonLauncherClass>fr.pdemanget.yourapplication.App</prunsrvDaemonLauncherClass>
                   <prunsrvServiceName>your-applic</prunsrvServiceName>
                   <prunsrvJvmOptions>-Dlogback.configurationFile=d:\your-application\conf\logback.xml</prunsrvJvmOptions>
               </configuration>
               <executions>
                   <execution>
                       <id>build-installer</id>
                       <phase>package</phase>
                       <goals>
                           <goal>installer</goal>
                       </goals>
                   </execution>
               </executions>
           </plugin>

           <!-- ajout de l'installer sous nexus -->
           <plugin>
               <groupId>org.codehaus.mojo</groupId>
               <artifactId>build-helper-maven-plugin</artifactId>
               <version>1.10</version>
               <executions>
                   <execution>
                       <id>attach-artifacts</id>
                       <phase>package</phase>
                       <goals>
                           <goal>attach-artifact</goal>
                       </goals>
                       <configuration>
                           <artifacts>
                               <artifact>
                                   <file>target/${project.artifactId}-${project.version}-installer.zip</file>
                                   <type>zip</type>
                                   <classifier>installer</classifier>
                               </artifact>
                           </artifacts>
                       </configuration>
                   </execution>
               </executions>
           </plugin>
 

Donc voila: on a une dépendance de plus pour la classe main, et 3 plugins:
 - maven-jar-plugin: j'exclue les fichiers de conf que je vais réinclure dans un répertoire séparé pour pouvoir paramétrer mon application
 - maven-resources-plugin: je copie les dépendance dont j'aurais besoin hors classpath (fichiers de configuration, logback.xml)
 - maven-windows-service-installer-plugin: le plugin qui génère le zip installer et qui intègre votre livrable, la JRE utilisée depuis JAVA_HOME et le wrapper de service
 - build-helper-maven-plugin: pour installer le zip (assez gros) sur votre dépot.

Tout la difficulté consiste à bien maitriser les paramètres, le répertoire cible, ce qu'on embarque, et la ligne de lancement. Les paramètres sont visible sur la javadoc:
http://alexkasko.github.io/windows-service-installer/plugin/installer-mojo.html

J'avais fait l'erreur de charger des fichiers de configuration dans le classpath, mais comme on ne maitrise pas le classpath généré, il vaut mieuxx les charger classiquement 
dans le filesystem (le répertoire en cours est la racine d'install, utiliser des chemins relatifs). 
Pour logback, on voit ici l'ajout permettant de spécifier un fichier externe: _<prunsrvJvmOptions>-Dlogback.configurationFile=d:\your-application\conf\logback.xml</prunsrvJvmOptions>_
  
Petit hack, j'utilise le plugin maven-resources-plugin uniquement parce que le paramètre suivant du plugin de service ne semble pas fonctionner: _izpackAdditionalResourcePaths_: 
cela permet de copier des resources dans un dossier "addres" qui ne semble plus utilisé par la suite; bug ou problème de configuration peu importe, j'utilise donc un 
workaround.

2. La classe de lancement
-------------------------

    /**
     * Application Main startup.
     *
     */
    public class App implements DaemonLauncher {
        public static void main(String[] args) {
            new App().startDaemon();
        }
    
        @Override
        public void startDaemon() {
            // votre application, lancement des threads
        }
    
        @Override
        public void stopDaemon() {
            // l'arrêt (qui pourrait ête un poil plus propre)
            System.exit(0);
        }
    }
    



Annexe - un peu de recherche
--------------------
Quel wrapper utiliser pour créer un service? Un peu de recherche m'a conduit à trouver plusieurs wrapper, avec des contraintes de licence pour certains.

    YAJSW : Yet Another Java Service Wrapper
    JSW : Java Service Wrapper https://wrapper.tanukisoftware.com/doc/english/introduction.html (last update 2018-12 ... on svn)
    ACD : Apache Commons Daemon http://commons.apache.org/proper/commons-daemon/index.html (2018-10 ?)
    L4J : Launch4j http://launch4j.sourceforge.net/ (2018-05) W32
    NSSM: http://nssm.cc/  (last update 2017) 

A noter qu'en Spring boot il y a à priori une solution plus simple:
https://dzone.com/articles/spring-boot-as-a-windows-service-in-5-minutes



