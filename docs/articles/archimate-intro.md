# Introduction to the Archimate Revolution

![Archimate logo](..//images/archimate.png) 

In the last decade, a quiet revolution took place in the Enterprise Architecture (EA) domain. This revolution is called [Archimate](http://www.opengroup.org/subjectareas/enterprise/archimate).

This article is the first of a series of articles focusing on some specific aspects of Archimate and practices around the standard.

All Archimate diagrams of this site are done using [Archi](https://www.archimatetool.com/). This tool is free and great. If you use it, consider making a donation.

## A Semantic Modeling Language

Archimate is a modeling language that enables to describe and study several aspects of the enterprise:

  * Its strategy and motivations,
  * Its projects,
  * And the 4 core layers of enterprise description:
    * The business layer,
    * The software layer,
    * The technology layer (infrastructure),
    * The physical layer.

All those aspects propose:

  * Typed artifacts,
  * Authorized typed relationships between artifacts.

Moreover, Archimate defines interlayer relationships which enables to "connect" the various layers together.

This enables  to build a model that is actually a *graph*.

In this graph model, each artifact can be represented with the union of all relationships that this artifact has with other artifacts. 

When you use Archimate, you represent things using the various artifacts that are available to you. Each element you draw on a certain views (there are many types of views) will have a certain type, like "Business Process" or "Application Function". Thus, the resulting model will be a set of views, each of them presenting many interconnected artifacts that all are instances of types that have a specific *meaning*.

## The Many Revolutions of Archimate

### Revolution #1: The Language Just Works

The creation of a semantic language implies to create a meta-model. Many tools are existing to create meta-models (for instance [Eclipse EMF](https://www.eclipse.org/modeling/emf/) with [Sirius](http://www.eclipse.org/sirius/), or [MetaEdit+](https://www.metacase.com/mep/) depending if you want to pay or not).

In the history of enterprise architecture, many languages were aggregated or created to represent the various aspects of the reality, to begin with the [Zachman framework](https://en.wikipedia.org/wiki/Zachman_Framework).

The problem with many enterprise architecture modeling languages is that they propose a way to describe the various parts of the reality but they don't focus on the necessary underlying *consistency*.

This is exactly the same problem for UML modeling. Suppose you made class diagrams and sequence diagrams for a set of classes. You can add a state diagram for a particular process of a specific class `A` of your model. Indeed, in UML, there is no way to know if this state diagram is consistent with the rest of the diagrams that include `A`. This is due to the fact that UML proposes a set of various kinds of views that are not *linked together*.

It is the same for the various views of many meta-model. Indeed, if the quality of the meta-model is high, then the modeling will be good. However, if the meta-model is bad, the modeling will be very bad.

We will perhaps come back in more details on that point but bad meta-models generally propose ambiguous concepts and artifacts, very often concepts that are semantically overlapping.

Archimate:

  1. Reduces the ambiguity in the description of things related to the enterprise,
  1. Proposes a graph approach that is adding consistency to the model.

This is, really, a revolution. In some cases, meta-models induce architects to think badly, to force themselves to think in an inconsistent model where the semantics are confusing. In Archimate, this is not the case.

### Revolution #2: Architects Can Share And Propose Auditable Works

Even if Archimate will not guarantee that 2 enterprise architects will produce the same modeling when representing the same things, using the same standardized language enable each of them to understand the modeling of the other, to challenge it and to debate.

We can forget Visio or Powerpoint schema based modeling, that are very ambiguous at several levels (we will come back on those points in further articles). The works become auditable by other Archimate architects.

### Revolution #3: Managing Complex Representations



### Revolution #4: Aggregate Various Sources of Knowledge


### Revolution #5: Managing Dependencies


### Revolution #6: Modeling Transformation, Modeling Time


### Revolution #7: Using Archimate In Many Software Activities












