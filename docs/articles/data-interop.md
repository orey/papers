# Data and interoperability, history of a misunderstanding

![Data](../images/data.jpg) 

"Data is the new gold". "Data drives the world". "We are in a data driven world".

All medias, and not especially the IT medias, seem obsessed with data, especially big data, and the value they are representing or should represent.

For decades now, we are running on data, and big data is just another step in a long-term trend that is selling continuously the same promises (datawarehouse, datamart, big data, analytics, etc.).

## Two kinds of approaches

### Big data technologies for real use cases

In some business, the interest of manipulating a huge amount of data is obvious:

* In Internet retail for instance: for big websites, you have a massive amount of data for each customer visiting your website with all information related to the consultations and to the purchases; Those data are being largely used for years;
* In the industry: Most production assembly lines generate a lot of data that are used to monitor the quality of the product and the productivity;
* In public services: Analyzing in details at the country level the various business trends, employment data and so on, can be done now from the real low level real data instead of using representative samples;
* Etc.

What is common between all those samples is that the use cases of those big data are very clear and the big data technologies are just a way to answer them. In a certain way, we are just talking about classical software applications using big data.

### Big data technology for no use cases

The fact is most big data projects are not focusing on real use cases: they do the reverse. They are infrastructure projects to enable future use cases.

Big data vendors are so powerful (as datawarehouse vendors decades ago) and so trendy, that they convince enterprises to put in place big data infrastructure *prior* to having real use cases. In order to realize whatever use case, you need all company data in a data lake. This will enable you to correlate all data as you want and, like old miners, to find hidden gold in your sleeping data.

For sure, as many enterprise applications store many data that, most often, represent various temporal states of complex business objects, at a certain moment of their lifecycle, the idea of putting all that together in a first step, to mine it afterwards and find value in a second, is very seductive to a lot of people:

* End users understand the concept,
* Tech people are thrilled.

Yet, those projects lead, generally, to major under achievements in regard to the expected value, despite millions invested. Why is that?

In this article, we will try to remember what is data and why some approaches are failing. Some ideas expressed here are well-known by a lot of people, but maybe not enough.

## Describing the business

### Business concepts and business processes

In every business domain, we can exhibit business concepts. Those business concepts are linked together with various kinds of relationships. They establish a first *representation* of the business.

Business processes are manipulating those business concepts, creating them, changing their state, linking or unlinking them together. Business processes establish the second dimension of the representation of business.

From this double representation, IT people can do many things:

* Create applications that manipulate those concepts and the concepts life cycles;
* Create databases that store those concepts;
* Create business workflows that will be a way to *assist* the business processes with software.

For each business, we have a set of business processes and business concepts. In this article we will name this set the business *semantic space*.

### Enriching the representations

With time and business digital maturity, the business concepts and business processes are enriched. This phenomenon is a big constant of the IT world.

Let us take an example: accounting. In the 80s, every company that had the financial means had their own accounting system, developed by themselves. The legislation was, often, not very detailed and each company had interpreted it in slightly different ways. With time, the legislation became more detailed and companies found it hard to implement the concepts and processes. Software companies provided generic accounting software that were taking in charge all concepts and processes from the accounting business and that could be parameterized to the very case of each company.

![The evolution of the business concepts and processes](../yed/semantic-space.png)

<u>Figure 1</u>: The evolution of the business concepts and processes

With time and maturity, the considered business discovers progressively how to structure its business processes and business concepts.

The Fig. 1 tries to represent this enrichment. At the beginning, both company 1 and company have implemented this interpretation of the regulation: They cover it but in different ways. At this stage, one company can have a competitive advantage on the other.

Then, the regulation expands: Company 1 covers it but company 2 has a hard time to do it. After a certain time, companies 1 and 2 will use an off-the-shelf software to cover the regulation. Company 2 will still have a specific application connected to the off-the-shelf software. In that case, company 2 may have a better digitization of its business domain than company 1 by covering more of the business semantic space with software.

This maturity cycle is a crucial dynamic process in IT that every IT architect should understand. One sign of the maturation of requirement is *when business concepts appear*.

As long as the business concepts are not known for what they really are, every user can get satisfied with generic multi-purpose tools like Excel. As long as your business concepts are known, they have a structure, they have fields of a certain type, they have links with other concepts and you cannot manage them anymore with Excel. You need a software to manipulate your concepts and you need this software to manage at least a part of your business processes.

### Representations are not absolute




# The real nature of data

### Data is not absolute

The first fact to understand is that *data is not "absolute"*.

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





For some time, the simplistic idea of gathering all data from all sources in a single place, like a "data lake", is in the air. With time, this idea has been declined in several flavors, the most recent one being the semantic data lake: Indeed, with the proper data description (ontologies) and with the Semantic Web technologies, it seems possible to aggregate all sorts of data and link them together. To do what? To get the most out of them, for sure. Like years ago with data warehouses and data marts.











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


