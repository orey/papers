# RDF design patterns

This page describe some design patterns to create application basic structures.

The objective is less ambitious than to create complex ontologies. It aims to be an intermediate between [graph-oriented design](https://orey.github.io/papers/graph/first-article/) (or object-oriented design) and ontology design with tools such as Protégé.

## Sources

The resources listed in the `./resources` are original and interpreted basic semantic web resources. They can be models to understand how the semantic web is really working.

## Classes and instances

The semantic web frontier between classes and instances is not always clear, especially when the set of triples is representing a "grammar", so a set of structures that will be instanciated to create real data triples.

One of the core ambiguity is represented by the `rdf:type` or `a` in Turtle. This relation is defining an instance of the class. The standard defines `rdf:type a rdf:Property .` which indicates that `rdf:type` is a "relation".

However, things can quickly become complicated. Let's take the following sample slightly simplified extracted from the standard:

```
rdf:Property a rdfs:Class ;
	rdfs:comment "The class of RDF properties." ;
	rdfs:subClassOf rdfs:Resource .
	
rdfs:Resource a rdfs:Class ;
	rdfs:label "Resource" ;
	rdfs:comment "The class resource, everything." .
```

`rdf:Property` and `rdfs:Resource` are `rdfs:Class`, but 


```
rdfs:Class a rdfs:Class ;
	rdfs:label "Class" ;
	rdfs:comment "The class of classes." ;
	rdfs:subClassOf rdfs:Resource .
```



