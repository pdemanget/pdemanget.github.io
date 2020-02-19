
Principles
==========


grands principes objets
------
 - SOLID
  o SRP
  o OCP
  o Liskov substitution principle (pas de cast)
  o ISP (Interface Segregation Principle)
  o Dependency Inversion principale
- POLA Principle of least astonishment
- KISS
  o simple but not simpler
- DRY
- demeter
- SoC Separation of Concern 

Principes DB
 - ATOMIC

Principes archi
---

 - coupling violates encapsulation

Parallélisme
---
- Loi d'Amdahl
-

 -trolls involontaires

 http://www.makeuseof.com/tag/3-types-lists-will-help-productive/
 "All that front-end programming these days is is learning the new k3wl framework to do a project and then learning the next one after that"


 - technos
 Automates programmables


 -docker, container
 http://blog.octo.com/containerus-bellum-ou-la-chronique-des-hostilites-dans-lecosysteme-docker/

# Tests
The Joel test


 -changelog
 http://keepachangelog.com/fr/0.3.0/

 - recruiters

Dice
Remix jobs
Talent.io
LinkedIn
Hired.com
Indeed
Monster


Participated in online coding or data science competitions (e.g. HackerRank, CodeChef, TopCoder, Kaggle)


Enquete SO

Congratulations! You’ve just been put in charge of technical recruiting at Globex, a multinational high-tech firm. This job comes with a corner office, and you have an experienced staff of recruiters at your disposal. They want to know what they should prioritize when recruiting software developers. How important should each of the following be in Globex's hiring process?
 	Not at all important	Not very important	Somewhat important	Important	Very important
Track record of getting things done
Previous companies worked at
Contributions to open source projects
Educational credentials (e.g. schools attended, specific field of study, grades earned)
Previous job titles held
Experience with specific tools (libraries, frameworks, etc.) used by the employer
Knowledge of algorithms and data structures
Stack Overflow reputation
Experience with specific project management tools & techniques
Communication skills Not at all important



35 Outside of your formal schooling and education, which of the following have you done? Please select all that apply.

Taken an online course in programming or software development (e.g. a MOOC)

Taught yourself a new language, framework, or tool without taking a formal course

Taken a part-time/evening face-to-face course in programming or software development

Participated in a hackathon

Completed an industry certification program (e.g. MCPD)

Received on-the-job training in software development

Contributed to open source software

Participated in a full-time, intensive developer training program (aka “bootcamp”)

Participated in online coding or data science competitions (e.g. HackerRank, CodeChef, TopCoder, Kaggle)

-alternative recruiters
..


Johanna ROJAS

### HTML print
data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIA...


Architecture Layers
===================
"archi-layers"
https://www.petrikainulainen.net/software-development/design/understanding-spring-web-application-architecture-the-classic-way/
https://softwareengineering.stackexchange.com/questions/258196/java-application-structure-horizontal-vs-vertical-split/258197#258197

Database
========
Une bonne conception passe par un bon diagramme à jour, le plus simple (pour moi) est de réverser la base, seulement les outils qui fonctionnent bien dépendent de la base:
- mySql
l'outil phare  de mySQL: mySQL Workbench permet le reverse, ça marche très bien

- postgres
pgAdmin ne permet pas (plus) le reverse, il faut chercher d'autres outils
https://stackoverflow.com/questions/9692913/create-an-er-diagram-in-pgadmin
Datamodel designer for PostgreSQL: uniquement sous Linux.
https://pgmodeler.io/support/installation permet le reverse, mais il faut le compiler... ou acheter le binaire.


- oracle
Oracle SQL Developer peut-être tweaké pour faire apparaitre la gestion des ERD

- DB2 ?


- Outils génériques basés sur du jdbc:
 - dbVisualiser: non testé
 - 

 
Semantic Versioning 2.0.0
--------------------------
Summary

Given a version number MAJOR.MINOR.PATCH, increment the:

    MAJOR version when you make incompatible API changes,
    MINOR version when you add functionality in a backwards compatible manner, and
    PATCH version when you make backwards compatible bug fixes.

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

### My versionning
Not compatible with semver, but more similar to many products: (breaking change between maven 3.6 & 3.5, Windows 8.1&8, their are plenty of)
Why semver classical could fail: 
 - Commercial/direction team impose you the major version for communication (Developpers: don't let you impose the minor and patch version, it is yours!)
 - Major version increment too much because of an instable API: the "version 42" in semver documentation . The API are imposed by your planning, your team or whatever factor, the "dont do it" is not a solution here (cause sometime we have to) 


- MAJOR is political: strategy to sell new software, architecture strategies with or without breaking changes
- MINOR is technical , new functionnality OR breaking change, incompatible API Change
- PATCH, MUST be backward compatible, it MAY include new functionnalities but shouldn't.

It resolve the problem of "version 42" when API change frequently: 
it will be a CommercialVersion.42.patch instead
 example: 8.42.3 if you stick to java version. Then 11.0.0 since change jdk version is a big architectural change.
 
 I think it is a good compromise: 
 - The major version is for the direction: the direction can manage the main process of a global version and its implication potentially external
 - The minor version is for the development: the project manager can manage and follow his compatible/incompatible version internally
 - The patch version is for the maintenance: no need to ask anyone to fix a bug, but absolutely forbidden to break anything. 

It is a "simpler" solution, to keep it simple but not simpler, the development should 
have an action on every major.minor.patch version.

REX
===
Decoupling Webservice/REST/bus/ESB :
 + réduit le couplage de compilation (évite les plats de spagetthi)
 - ça reste un couplage, qui est moins traçable => utiliser une lib d'api commune pour 
   tracer le couplage dans les dépendances maven.

