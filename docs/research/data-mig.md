# Semantic data migration project

## Presentation

You can read the following article :

  * [Using semantic web technologies for aerospace industrial data migration, Madics 2019](semantic/data-migration.md)

## Elements

### Why?

Arguments for using the semantic graph technology to complex data conversion:

  * It is relatively easy to turn whatever table into sets of triples.
  * The semantic of each column must be named and reused as a "semantic dictionary" between the multiples sources. This step is much easier to accomplish than in standard data lakes where the complete big definitions must be set in one single movement.
  * The design actions, that were at the heart of the problems in [GraphApps](graphapps.md), are less important and can be limited to a correct understanding of the data.
  * The semantic databases (For instance AllegroGraph or Apache Jena) are working in an incremental way: if a triple already exists, the attempt to import it again will do nothing, which "by design" eliminates redundant information.
  * Sparql enables easy graph transformations, first of all to visualize data (Gruff on AllegroGraph is a good triplestore visualization tool), and then to transform them.

### Timed of life-cycled data

Data versions (being time-based versions or life-cycle versions) can be managed with a link timestamp or a link version stamp. The timestamp relation will have to be a ```rdfs:SubClassOf``` the theoretical link type.

### Basic semantic graph transformation (in work)

In the context of [graph transformations](graph-transfo.md), the page [Basic semantic graph transformations](basic-semantic-graph-transformations.md) aims at defining a set of basic graph transformations.

### Industry data

The page [Graphs and semantic data in industry](industry-data.md) talks about the opportunity of using RDF approaches to convert efficiently industrial data.

*(Last update: June 2020)*

