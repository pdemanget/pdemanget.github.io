Jackson
=======

https://stackoverflow.com/questions/28089484/deserialization-with-jsonsubtypes-for-no-value-missing-property-error/31016173#31016173
http://www.cowtowncoder.com/blog/archives/2011/08/entry_459.html

todo document: 
 - no cycle in beans with @ManagedRef/@BackRef @JsonIgnore @Json
 - Factorisation with addMixinAnnotation
 - mrBean: materialized interfaces :https://github.com/FasterXML/jackson-modules-base/tree/master/mrbean


@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, 
                  property  = "forumAnswerId", 
                  scope     = Long.class)
@JsonIgnoreProperties : mode passoire




Old tips
========

Protocol on URL
-------


Protocol on JEditorPane
-------
"java.protocol.handler.pkgs": it's a system property for HTTP protocol mgt used in old JeditorPane (HTML3.2)
http://stackoverflow.com/questions/9388264/jeditorpane-with-inline-image


Launch web server
-----
http://stackoverflow.com/questions/17947971/ajax-in-jquery-does-not-work-from-local-file
python -m SimpleHTTPServer 8080
npm install -g http-server > cd /path/to/project/folder > http-server

files:
use firefox
or chrome --allow-file-access-from-files


Classloader
===========
les protocoles:
jrt:
jar:
file:

com.airhacks.afterburner.injection.Injector.class.getResource("Injector.class")(java.net.URL) 
jar:file:/C:/Users/philippe.demanget/.m2/repository/com/airhacks/afterburner.fx/1.7.0/afterburner.fx-1.7.0.jar!/com/airhacks/afterburner/injection/Injector.class

String.class.getResource("String.class")(java.net.URL) 
jrt:/java.base/java/lang/String.class

fr.enfrasys.maiv.front.util.FXMLLoaderHelper.class.getResource("/data/httpLines.json")(java.net.URL) 
file:/C:/Users/philippe.demanget/project/ma-iv/front/target/classes/data/httpLines.json


read all
========
ByteArrayOutputStream result = new ByteArrayOutputStream();
byte[] buffer = new byte[1024];
int length;
while ((length = inputStream.read(buffer)) != -1) {
    result.write(buffer, 0, length);
}
// StandardCharsets.UTF_8.name() > JDK 7
return result.toString("UTF-8");

IntegrationTest
===============
https://stackoverflow.com/questions/1399240/how-do-i-get-my-maven-integration-tests-to-run
Nommer ses test d'inté xxxIT.java, puis pour les lancer/tester sous jenkins, utiliser mvn verify

			<plugin>
		        <groupId>org.apache.maven.plugins</groupId>
		        <artifactId>maven-failsafe-plugin</artifactId>
		        <executions>
	                <execution>
	                    <phase>verify</phase>
	                    <goals>
	                        <goal>verify</goal>
	                    </goals>
	                </execution>
	            </executions>
            </plugin> 
	

Search-markdown
===============

Some research on markdown diagrams extension
    
    http://support.typora.io/Draw-Diagrams-With-Markdown/
    
* js-sequence
* flowchart-js
* mermaid

https://www.npmjs.com/package/mermaid

    
https://gist.github.com/rodneyrehm/40e7946c0cff68a31cea
    
    Graphviz
    Pandoc


http://asciiflow.com/


                                                                      +---------------------------------------------------+
    +---------------------+                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     +------------------------------------------->                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    |                     |                                           |                                                   |
    +---------------------+                                           |                                                   |
                                                                      |                                                   |
                                                                      |                                                   |
                                                                      |                                                   |
                                                                      |                                                   |
                                                                      |                                                   |
                                                                      |                                                   |
                                                                      +---------------------------------------------------+
    