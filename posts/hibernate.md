
Draft of all of what  I'm using in Hibernate/JPA


#JPQL TYPE
https://en.wikibooks.org/wiki/Java_Persistence/JPQL#JPQL_special_operators


SELECT p FROM Project p WHERE TYPE(p) = LargeProject


Columns
=======
@Id is a special en mandatory column
on a composite key it's replaced by the couple  @EmbeddedId @Embeddable



Relation
=========
The big thing with hibernate is not only the mapping, but the auto relation, one have to tune this perfectly for our model:
 - define the all the relation with OneToMany, ManyToOne, ManyToMany, OneToOne
 - define the automation on theses relation: fetch and cascade
 - use propely the join in jpql queries


@ManyToOne
----------
child-parent relation

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PARENT_ID")
    private parentModel parent;

@JoinColumn may be facultative with a good naming strategy (see hibernate-easy article)

@OneToOne can be used in the same way

@OneToMany
----------
Parent childe relation, defined by the opposite relation, we define here a bidirectional 
realtion. default fetch is LAZY, it's more optimal in most cas but you might want an 
EAGER

  @OneToMany(mappedBy = "entete", fetch = FetchType.EAGER)
  @Fetch(FetchMode.SELECT)

Advice:
always see the generated queries to observe the optimizations

@Fetch(FetchMode.SUBSELECT) only works on bags (set) but optimize with a second query.
@Fetch(FetchMode.JOIN)      do a SQL JOIN instead of an additional query.

### optimize collection mgt
1. n+1 is a standard problem when you get n query + your initial query (every join are 
  made line by line)
2. pagination can also be done for optimisation, but won't work with join
3. Use "join fetch" in you jpql queries when you have "Fetch lazy" for optimisation 
4. Side effect of join: use distinct to avoid parent duplication, the join is inner, 
   specify left join else.
5. toString(): don't include relation in your toString representation, you might trigger 
   select for a simple log! 
6. Observe the resulting SQL query for a jpql with join, switch tuning parameters, you 
   might have 1 (JOIN), 2 (SUBSELECT), or n+1 (SELECT) queries.   

troubleshooting:
PBM: HHH000104: firstResult/maxResults specified with collection fetch; applying in memory!
Solution : don't use join when you use setmax



  
@ManyToMany
----------
