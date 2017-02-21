


String.join
-----------
utiliser StringJoiner et Collectors.joining
http://www.mscharhag.com/java/java-8-string-join


StringFormatter
---

### garbage langage syntax:

#### 2 examples with String and dates:


     String.format("%2$-10.10s %1$td/%<tm/%<ty",new java.util.Date(),"hello")
     for string, format is:
     %s  %2$s %-10.10s or
     %2$-10.10s : 2$ is the index (index from 1!) - is for right align 10.10 is size.precision, used for min.max size on string, %<anything>s for string

     for date format is:
     %1$td/%<tm/%<ty

     %<anything>t<1 letter> : soe use td, tm, ty, or t whatever.... (see doc)

     for time, format is :
     %1$tT or %tT

     for integer, use %d (decimal integer)
     for floating number, use %f
     String.format("< %01$10d < %1$s",12)

#### the grammar is

s-> % POS MINUS? SIZE[.PRECISION] TYPE
POS-> int$
SIZE-> int
PRECISION -> int
MINUS -> '-'
TYPE-> tTIMEARG | OTHERTYPE
OTHERTYPE -> bhscdoxefga%n

## Annotation processor compile time

http://stackoverflow.com/questions/11385628/how-to-write-a-java-annotation-processor

https://github.com/pellaton/spring-configuration-validation-processor



# Du CDI en javaSE
Weld implémente le CDI (voir l'abre de dépendance du CDI: cdi-api 2.0.jar)
doc:
http://docs.jboss.org/weld/reference/latest/en-US/html/environments.html#_java_se
pour utiliser weld:
<dependency>
    <groupId>org.jboss.weld.se</groupId>
    <artifactId>weld-se</artifactId>
    <version>2.4.1.Final</version>
</dependency>







