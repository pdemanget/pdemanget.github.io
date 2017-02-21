1ere approche de scala:
==

mise en place

SCalaIDE sous eclipse
---
- installer le plugin
- créer des hello world
new ... object puis ajouter le source:

object Main2 {
   def main(args: Array[String]) {
      println("Hello, world!") // prints Hello World
   }
}

object main {
   def main(args: Array[String]) = println("Hi!")
}


SBT
--
'MySQL' n'est pas reconnu en tant que commande interne
ou externe, un programme exécutable ou un fichier de commandes.

²file:build.sbt
name := "hello"

version := "1.0"

scalaVersion := "2.9.1"



set PATH=d:\opt\bin;D:\opt\lib\sbt\bin\;d:\opt\jdk8\bin	