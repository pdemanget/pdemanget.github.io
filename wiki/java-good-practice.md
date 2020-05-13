# Good practice

 - JPA usage of @NamedQuery: use unique name prefixed by class simple name
 - JPA @OneToMany in conjonction with @ManyToOne should use "mappedBy" attribbute instead of redefining @JoinColumn (stay DRY)
 - CamelCase de partout à respecter (lower pour variable, upper pour classes)
 - pas de doublon de classe entre projet: les packages doivent être différent à minima
 - même package pour les clases main et celles de test (permet l'accès protected, et simplement de les retrouver)
 - version maven = version +snapshot (à corriger sur DSY)
 - tags git
 - flyway pour automatiser les projets
 - pas de mélange de version junit (4 et 5)
 
## general std lib
 - SimpleDateFormat : not Threadsafe to avoid and use jsr310 DateTimeFormatter instead
 
# git
 - no binaries in repository
 - no target or generated stuff in repository
 - repository should be kept small, if not check the rules above.

# angular
 - use yarn
 - absolute import <https://medium.com/@adrianfaciu/use-absolute-paths-for-module-imports-6e5ee9e94161>
 - use ng gateway to avoid CORS problem on backend servers 
 - use test data for local


# Spring boot project tooling
this one is an example of needed project tooling and why, could be adapted fore any 
other technologies:
 
- web mvc : REST server
- data+ hibernate: Database access
- slf4j: logger
- flyway: automate db migration for CD
- swagger: auto-documentation of REST

# general coding

- use enum instead of most String/int constants
  