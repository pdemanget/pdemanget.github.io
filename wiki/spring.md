Spring tips
===========
Tips about Spring and Spring boot

Configuration
--------------
Change file name: --spring.config.name=myproject

JPA
---
spring.jpa.properties.hibernate.dialect=...
spring.jpa.properties.hibernate.default_schema=...


Swagger
-------
https://www.baeldung.com/swagger-2-documentation-for-spring-rest-api

### for olds JEE
JerseyJaxrsConfig: need scan.all.resources=true to work! (lol)
the old version of swager (not v3) have some constaints:
ApiListingResource: uses a specific version of swagger



Spring boot as dependency and not parent
----------------------------------------
it is useful to have your own parent pom for a big application build, so here is how to remove Spring parent constraint.
First we only add dependencies, the properties, then if needed the Spring boot maven plugin. 
Here is how to do it:

add this dependencyManagement (remove parent tag), and theses properties

    <properties>
        <maven.compiler.source>11</maven.compiler.source>
        <maven.compiler.target>11</maven.compiler.target>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
    </properties>
    <dependencyManagement>
        <dependencies>
            <dependency>
                <!-- Import dependency management from Spring Boot -->
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-dependencies</artifactId>
                <version>2.2.0.RELEASE</version>
                <type>pom</type>
                <scope>import</scope>
            </dependency>
        </dependencies>
    </dependencyManagement>


The property `java.version` is not used anymore, you have to specify the defaults for encoding, language.
The compile works, but we do not gave a uberjar anymore.

If you need the uberjar, add this


            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
                <executions>
                    <execution>
                        <goals>
                            <goal>repackage</goal>
                        </goals>
                        <configuration>
                            <mainClass>
                                com.company.project.ProjectApplication
                            </mainClass>
                        </configuration>
                    </execution>
                </executions>
            </plugin>

Now you have migrate to remove the parent constraint so you can use your own!

source : 
<https://docs.spring.io/spring-boot/docs/current/reference/html/using-spring-boot.html#using-boot-maven-without-a-parent>
<https://stackoverflow.com/questions/52750248/spring-boot-application-is-not-creating-fat-uber-jar>


