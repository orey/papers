# Reflections on industry data

## The Graal of the single data model

In the IT world, the idea of interoperability seems OK for a long time. It is largely accepted that many systems have to collaborate around the same data and that a standard neutral shared data format is enabling:

  * Every system to do manage its own business;
  * All system to share a minimal set of semantic data.

In the industry, things are a bit more complicated for the following reasons:

  * Data have complex life-cycles;
  * Data are interconnected to each other;
  * Data may be transformed in order to be used (for instance in simulation).
  
For sure, data outside the industry have also complex lifecycles, but there are specific applications designed to manage them with their own business rules.

Due to the fact that the core element of industrial data was the "part", standard software like PDMs manipulated those parts and made everyone believe that it was easy to have a single representation of things based on parts.

## The Requirements, Functional, Logical and Physical (RFLP) model

The RFLP model, largely accepted now in the industry, showed that many artifacts were required to be able to create and manage the lifecycle of a product, each of them being part of a certain level of representation and being interconnected to another level.

This approach is already largely known in enterprise architecture where different levels of representation of the enterprise enable complex multi-level modelings (cf. Archimate).

## The semantic graphs at the center of the game

At the center of those multiple representation views are the semantic graphs. Those graphs can be seen as a two level semantic universe (see Fig. 1):

  * Each semantic domain owns its own set of artifacts that are interconnected through various kinds of links (predicates);
  * The domains are interconnected together by other kind of predicates (inter-domain predicates). For sure, those predicates are touching source and destination nodes from several semantic domains but enable to attach the various semantic domains through a set of semantic links.

![Semantic spaces in industry data](../yed/industry-data.png)

Figure 1: Semantic spaces in industry data

## Graph transformations

The formalism of graph transformations enables to transform the data inside a semantic space but also outside (see Fig. 2).

![Semantic graph transformations in industry data](../yed/industry-data-gt.png)

Figure 2: Graph transformations in semantic spaces

*(Last update: June 2020)*