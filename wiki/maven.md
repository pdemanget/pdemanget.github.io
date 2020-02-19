Les phases standards
----
built-in build lifecycles: default, clean and site


* __validate__ - validate the project is correct and all necessary information is available
* __compile__ - compile the source code of the project
* __test__ - test the compiled source code using a suitable unit testing framework. These tests should not require the code be packaged or deployed
* __package__ - take the compiled code and package it in its distributable format, such as a JAR.
* __verify__ - run any checks on results of integration tests to ensure quality criteria are met
* __install__ - install the package into the local repository, for use as a dependency in other projects locally
* __deploy__ - done in the build environment, copies the final package to the remote repository for sharing with other developers and projects.

complete list:
<https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html#Lifecycle_Reference>

La structure:
<https://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html>


Avoir un timestamp pour le suivi des release
----
Ajouter cette ligne:

    <Build-Time>${maven.build.timestamp}</Build-Time>

Dans son contexte:

     <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-jar-plugin</artifactId>
        <version>2.6</version>
        <configuration>
            <archive>
                <manifest>
                    <mainClass>fr.incore_systemes.lineavision.recettage.Recettage</mainClass>
                    <addClasspath>true</addClasspath>
                    <addDefaultImplementationEntries>true</addDefaultImplementationEntries>
                    <addDefaultSpecificationEntries>true</addDefaultSpecificationEntries>
                    <classpathPrefix>lib</classpathPrefix>
                    <useUniqueVersions>true</useUniqueVersions>
                </manifest>
                <manifestEntries>
                    <Class-Path>/conf</Class-Path>
                    <Build-Time>${maven.build.timestamp}</Build-Time>
                </manifestEntries>
                <manifestFile />
            </archive>


Pour l'afficher :

	  private String getManifestField (String name) {
	    URLClassLoader cl = (URLClassLoader) getClass().getClassLoader();
	    try {
	      URL url = cl.findResource("META-INF/MANIFEST.MF");
	      Manifest manifest = new Manifest(url.openStream());
	      // do stuff with it
	      String version = manifest.getMainAttributes ().getValue (name);
	      logger.trace ("version "+version);
	      return version;
	    } catch (IOException e) {
	      throw new UnsupportedOperationException (e);
	    }
	  }

	  public String computeDate () {
	    return getManifestField("Build-Time");
	  }

Les variables
=============
	${project.basedir} la racine du projet
    ${project.build.directory} results in the path to your "target" directory, this is the same as ${pom.project.build.directory}
    ${project.build.outputDirectory} results in the path to your "target/classes" directory
    ${project.name} refers to the name of the project (deprecated: ${pom.name} ).
    ${project.version} refers to the version of the project (deprecated: ${pom.version}).
    ${project.build.finalName}


    ${env.M2_HOME} returns the Maven2 installation path.
    ${java.home} specifies the path to the current JRE_HOME environment use with relative paths


${basedir} represents the directory containing pom.xml
${version} equivalent to ${project.version} (deprecated: ${pom.version})

${basedir}/src/main/resources
est équivalent à 
${project.build.resources[0].directory}

Tweak - bug
====
créer des hook prébuild:


	if exist "%HOME%\mavenrc_pre.bat" call "%HOME%\mavenrc_pre.bat"
	if exist "%HOME%\mavenrc_pre.cmd" call "%HOME%\mavenrc_pre.cmd"


	  if [ -f /etc/mavenrc ] ; then
	    . /etc/mavenrc
	  fi

	  if [ -f "$HOME/.mavenrc" ] ; then
	    . "$HOME/.mavenrc"
	  fi

Bug maven+java8+javadoc
-----
Pour que le build de javadoc passe en java8 il faut ajouter "-Xdoclint:none".

			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-javadoc-plugin</artifactId>
				<version>2.8</version>
				<configuration>
					<additionalparam>-Xdoclint:none</additionalparam>
				</configuration>
				<executions>
					<execution>
						<id>attach-javadocs</id>
						<goals>
							<goal>jar</goal>
						</goals>
					</execution>
				</executions>

			</plugin>

Installer un fichier standalone (javen)
-------------------------------------
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>build-helper-maven-plugin</artifactId>
                <version>1.10</version>
                <executions>
                    <execution>
                        <id>javen</id>
                        <phase>package</phase>
                        <goals>
                            <goal>attach-artifact</goal>
                        </goals>
                        <configuration>
                            <artifacts>
                                <artifact>
                                    <file>javen.yml</file>
                                    <type>yml</type>
                                    <classifier>javen</classifier>
                                </artifact>
                            </artifacts>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
    
plumbing
=========

install manually
---------------

mvn install:install-file -DrepositoryId=java.net -Durl=http://download.java.net/maven/2/ -Dfile=robo-guice-0.4-20091121.174618-1.jar -DpomFile=robo-guice-0.4-20091121.174618-1.pom -DgroupId=robo-guice -DartifactId=robo-guice -Dversion=0.4-SNAPSHOT -Dpackaging=jar

[ERROR] Try downloading the file manually from the project website.
[ERROR]
[ERROR] Then, install it using the command:
[ERROR]     mvn install:install-file -DgroupId=robo-guice -DartifactId=robo-guice -Dversion=0.4-SNAPSHOT -Dpackaging=jar -Dfile=/path/to/file
[ERROR]
[ERROR] Alternatively, if you host your own repository you can deploy the file there:
[ERROR]     mvn deploy:deploy-file -DgroupId=robo-guice -DartifactId=robo-guice -Dversion=0.4-SNAPSHOT -Dpackaging=jar -Dfile=/path/to/file -Durl=[url] -DrepositoryId=[id]


download manually
-----------------
mvn org.apache.maven.plugins:maven-dependency-plugin:2.1:get \
    -DrepoUrl=http://download.java.net/maven/2/ \
    -Dartifact=robo-guice:robo-guice:0.4-SNAPSHOT




Switch to gradle
===

Don't do it
