
Version dans Spring boot
========================
Ajouter les info de build, version&date dans build-info.properties

    <build>
        <finalName>camel-transporteur-boot</finalName>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
                    <executions>
                        <execution>
                            <goals>
                                <goal>build-info</goal>
                            </goals>
                        </execution>
                    </executions>
            </plugin>
        </plugins>
    </build>




Manifest-Version: 1.0
Created-By: Maven Archiver 3.4.0
Build-Jdk-Spec: 11
Implementation-Title: camel-transporteur-boot
Implementation-Version: 2.0.1
Implementation-Vendor: Azenn
Main-Class: org.springframework.boot.loader.JarLauncher
Start-Class: com.azenn.cameltransporteurboot.CamelTransporteurBootApplic
 ation
Spring-Boot-Version: 2.2.4.RELEASE
Spring-Boot-Classes: BOOT-INF/classes/
Spring-Boot-Lib: BOOT-INF/lib/

