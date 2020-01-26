# Data and interoperability, history of a misunderstanding

![Data](../images/data.jpg) 

"Data is the new gold". "Data drives the world". "We are in a data driven world".

All medias, and not especially the IT medias, are obsessed with data and the value they are representing or should represent. The fact is what is obvious for retail (data corresponding to what the customer is used to purchase), is not so obvious in a lot of other businesses, to begin with the industry. That does not mean that data has no value, far from it, but many topics hide behind the "data" topic.

Maybe data is the new gold, but we are often like old miners: looking at a way to extract the value from it. Most of the time, in the IT systems of big companies, data are everywhere, in many places. Many applications store many data  that, most often, represent various temporal states of complex business objects, at a certain moment of their lifecycle.

For some time, the simplistic idea of gathering all data from all sources in a single place, like a "data lake", is in the air. With time, this idea has been declined in several flavors, the most recent one being the semantic data lake: Indeed, with the proper data description (ontologies) and with the Semantic Web technologies, it seems possible to aggregate all sorts of data and link them together. To do what? To get the most out of them, for sure. Like years ago with data warehouses and data marts.

In this article, we will come back on two absolute dimensions to consider, that are a prerequisite to get the most of the data. For some readers, it may be a surprise, but for experienced IT people, it will be just a collection of well-known ideas.

## The real nature of data

### Data is not absolute

The first fact we must keep in mind is that *data is not "absolute"*.

![The relative nature of data](../yed/industry-data.png)

<u>Figure 1</u>: The relative nature of data

Data is the result of 2 main factors:

* A semantic space,
* A viewpoint on that semantic space.

A semantic space is a consistent knowledge space, where we can define a set of interlinked concepts. One of the most difficult problem in IT architecture is to determine the right frontiers between the semantic spaces and to make them communicate (we will come back on that).

The Figure 1 illustrates the semantic spaces and various viewpoints on it that result on data. We can note that there as, on Figure 1, 4 kinds of "data":

* Data type 1 and 2: Those data types are the ones we manipulate every day.
  * The viewpoint 1 and 2 are defined by applications that use a certain data model to manage their data.
* Data type 3: Data common to several viewpoints.
  * In Figure 1, the viewpoints 1 and 2 have a common set of data, each of them being integrated in their larger viewpoint.
  * A typical sample of that would be 2 applications exchanging data by using a common exchange model based on data type 3.
* Data type 4: Data that is not addressed yet by any viewpoint but that resides in the same semantic space
  * A sample of that would be, in the industry, when we begin to measure some physical dimensions that were, previously only seen in a qualitative way. The new measuring methods make those data "visible", whereas they were in the semantic space of the very domain from the beginning, but we had no access to them.

### Sample of data viewpoints

![Data models are relative](../yed/stubs01.png)

<u>Figure 2</u>: Data models are relative

If we consider Figure 2, we can see that data models are relative to the use cases.

The data model of the applications 1 and 2 correspond respectively to the types 1 and 2 of data we saw in Figure 1, and the exchange format to the data type 3. Those 3 different representations of data are equivalent, on a semantic standpoint, but we see that their implementation is quite different:

* The are 4 business objects in the data model of application 1 and only 3 in the data model of application 2;
* In the exchange format, there is no explicit mention of the links between ```A```, ```B```, ```C``` and ```D```, but a grouping of those business objects and a cardinality grammar.

For sure, the data model of applications 1 and 2 are much larger than what we see on Figure 2, probably with concepts that are not known from one another (data of types 1 and 2).

## Data lake or data swamp

### Aggregating data is not obvious

![What data should be in the data lake?](../yed/stubs02.png)

<u>Figure 3</u>: What data should be in the data lake?

Continuing on the example of Figure 2 with Figure 3, if we were to gather all data in the same data lake starting from the data models, we would have twice the ```B``` and ```D``` objects, and once the ```A```, ```C``` and ```A-union-C``` objects. If we suppose that the application 1 is sending its data to application 2 at a certain point in time, we can suppose that the interface will transport "publishable" data, which means that, at a certain point in time, application 1 is likely to have more recent versions of the ```A```, ```B```, ```C``` and ```D``` business objects than the application 2. In the data lake, what would be the reference?

By looking at Figure 3, what to do about the business objects which scope changes with the application 1 to application 2 interface? Must the data lake store ```A```, ```C``` and/or ```A-union-C```? Most often, all will depend on the data that will be connected in application 2.

For sure, with a little knowledge about the applications 1 and 2, their *functional* mechanisms, their very viewpoints on data (especially on data lifecycle), the reasons why they publish data at a certain moment to other applications, we can create a more intelligent data export in a data lake.

The concept of data lake is not bad in itself, but to be useful, the data lake must absolutely be built by people knowing:

* The data in the source systems and their lifecycles (the viewpoints on the semantic space), so their business rules also;
* The links between the many applications in order to figure out what system is master at what point in time.

### Is a data lake an application?

But, if this reasoning is true, that would mean that a data lake is an *application* rather than a *data store*, that it has some data ingestion *business logic* to be able to ingest data that fit in a global data landscape without introducing ambiguities or erroneous data links.

But, if that is the case, that means that the data lake is also creating its own viewpoint on the semantic space, like shown if Figure 4.

![Datalake as an application](../yed/datalake.png)

<u>Figure 4</u>: The data lake as another kind of application


---reprendre ici

For sure, if the data lake is built by people knowing the business, there is a good chance the data correlations will be possible and fruitful. But, if data is considered from a technical point of view, the aggregated data will most probably not provide any



We can note that the problem is difficult in itself and there are no generic solution.



Data was always produced by a certain business process. For that reason, data is the product of the following factors:

  * A semantic space, which corresponds to a set of "business concepts" having semantic meanings and semantic links to one another;
  * A point of view;
  * A specific moment in time.

Some data may be simple to interpret, for instance the list of articles you consulted in a retail website. With those data and the ones of people that bought the same products than you, you can create personalized recommendation algorithms.

But in the industry, that is not because you have the data that you can use them easily, even if you are talking about the exact same thing than your neighbor of the next office (same semantic space): you may look at the same business concepts in another time frame, or your perspective makes you look at the other linked business concepts that are not relevant for the next office.


![The challenges of industry data](../yed/industry-data2.png) 


In other industries, this dream is highly linked to the monolith architecture anti-pattern.




## See Also

 * [About GraphQL](graphql-web-services.md)

## Notes

[1] - In some businesses, like the airline one (standardized by [IATA](https://www.iata.org)), services have big requests and big responses for decades because the business requires it.

(*December 2018*)


