# What is a PLM?

![gears](../images/engrenages.jpg)

This article is intended to be a description of the basic functions a PLM is supposed to provide, and of the basic logic a PLM is supposed to implement. As the industry is beginning to look towards IT a bit more seriously that what was done in the last decades, it may be important for IT people inside and outside the industry:

* To understand what the PLM is all about;
* To have some perspective about the reasons why things are as they are;
* To have points of comparison with other kinds of IT systems that are met frequently outside of the industry (in the so-called "tertiary" sector).

I hope this article will manage to bring some light on those points.

## The PLM, the elementary parts and the assemblies

PLM means Product Lifecycle Management. This acronym generally describe systems that are used to manage the lifecycle of a manufacturing product (we will come back on the lifecycle notion).

Indeed, a complex manufacturing product is composed of several parts that will evolve during its production life. The PLM is supposed to enable the management of product data all along its lifetime and for several stakeholders concerned by it (engineering for the product design, industry for the product manufacturing and support for the product support).

## A graph of business objects

A PLM is an IT system that is essentially manipulating a graph of business objects.

We can define a business class as a conceptual entity with:

* A type (for instance "Part");
* A set of characteristics (also called attributes or fields):
  * Those attributes can be typed data (strings, numerical values, currencies, date, etc.) but also documents such as Office documents, 2D or 3D drawings, raw data resulting from simulation testing, etc.);
* A set of sets of authorized links towards other classes.

Parameterizing a class inside a PLM enables to create instances of the class, what is called "objects". Each business object will be of a certain class type and will have different values for its attributes (see Figure 1).

<a name="figure1"></a>*Figure 1: Structural view of a business class*

![A graph of business objects](../yed/plm01.png)

The basic functions of the PLM will be to enable the management of one product graph by a more or less large team of people from different organizations.

## The lifecycle of a business object

The notion of lifecycle is often not clear for IT people that come from other areas than industry. The reason is the tertiary sector is not really using this term and prefers to speak about "states" or "state machines".

In the manufacturing industry, it is important to understand the lifecycle of data. We can say that every data, for instance data associated to a part, will have 2 different states:

* It can be "in work": people are working on a part but as the work is not finished, the data are not available for the rest of the community;
* It can be "released": the data is considered as stable and is published to the rest of the community.

Indeed, many versions of the same business objects can be stored in an "in work" status before being released. Also, if a part evolves, several of its version will be released with time (which opens the topic of "applicability" that we will see later on).

In other works, industrial data is managed as IT people manage software source code, and not really as IT people manage data.

In the tertiary sector, the "management data" are generally stored with other purposes:

* It is required to be able to access to the data that are valid today;
* It is required to be able to access to important previous versions of data for auditing purposes (for instance before a contract modification);
* But it is not generally required to secure every change on data.

Note that the current way of managing data in the IT world is generating technical debt and graph-oriented techniques enable to solve that issue (see [here](https://orey.github.io/papers/research/index-research/)).

Coming back to the industry, industrial data being inside a graph, every change on a "node" of this graph (a business object) may have impacts on the linked objects.

Let us consider Figure 2.

<a name="figure2"></a>*Figure 2: Basic evolution of a graph of objects*

![Basic evolution of a graph object](../yed/plm02.png)

Originally, all objects of the graph are considered as being in version 1. The instance `A1` of `A` changes to version 2. `A1` V2 can have different values in its attributes but the change implies questions about the links `A1` maintains with `B1`, `B2` and `C1`. Are they still valid? Maybe, on an industrial standpoint, some tests must be done (or digitally, or physically) to assess this point.

Let's consider Figure 3 now where `B1` is evolving.

<a name="figure3"></a>*Figure 3: Evolution of a linked object*

![Evolution of a linked object](../yed/plm03.png)

Must `A1` evolve too? If `B1` V1 was an error, maybe `A1` V1 should be transformed in `A1` V2 pointing to `B1` V2, and `A1` V1 should be made not usable by anybody...

## The notion of change

In Figure 3, we can see that it would probably make sense to make a new version of `A1` in order to take into account the change in `B1`. Let us name `Change1` the change that transforms `B1` V1 into `B1` V2.

`Change1` is an instance of the the `Change` class, which is a business object. When defining it in the first step, `Change1` will be in version 1.

But if, due to `Change1`, we have to change `A1` V1 into `A1` V2, then this change should also be associated to `Change1`.

The Figure 4 is showing the change of `B1` and then the change of `A1`.

<a name="figure4"></a>*Figure 4: The change business object*

![The change business object](../yed/plm04.png)

The `Change1` change is referencing in a first step only the previous and present version of `B1` and in a second step the previous and current version of `A1`. Note that we could have created 2 versions of the `Change1` depending on our change policy.

In the industry, the change object is crucial and often embeds documents. There are many reasons for that, to begin with the costs.

If a manufacturing product is changed, that will have costly impacts on the production line and on the support of the product. In some industries like aerospace, the product may be "certified" (airworthiness for instance). Any change to the product will imply a certification impact assessment that could result in costly re-certification. One other reason is also to be able to find back in the past what reason caused a change that resulted in product performance regression.

Generally, the change object is at the core of a special process, often named change board, where many teams gather in order to determine if the change is worth doing.



-----

Generally, a manufacturing product can be seen as made of "parts". There are  conceptually 2 kinds of parts:

* The elementary parts: The ones that cannot be split into smaller parts;
* The assemblies: The parts that are containing other parts.

This notion is very important because:

* Defining properly the level of elementary parts is defining the scale at which a certain business will manage its data lifecycle;
* Different businesses are often seeing the product at different levels (in terms of "elementary" parts).

The industry often refers as "part" something that can be or an elementary part or an assembly. This is often confusing and leads to misunderstanding with IT people. In the rest of the article, we will talk about the "elementary part" or the "part" as being the agreed lowest level of data managed in lifecycle, and we will talk about assemblies if the object managed is a container for other objects.


----


As time goes on, the product lifecycle management (PLM) area proposes more and more functionality, linked together, in platforms that tend to be bigger with time.

The increasing size of the PLM platforms is answering to a simplistic dream of users to have "everything linked together in the same place". In this article, we are going to analyze that dream that is, to our point of view, conveniently forgetting some of the most basic principles of large IT systems.

## The three business domains of the industry

An industrial company is generally architectured on 3 business domains:

* Engineering Office: Where the products are designed, and certified in some industries;
* Industry: Where the products are built;
* Support: Where the products are supported.

Those three domains, while working on the same data, have very distinct constraints and their optimal interfacing is a the center of many marketing speeches.








