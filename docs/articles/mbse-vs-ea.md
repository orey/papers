# Military frameworks, systems engineering and enterprise architecture

![Image illustrating architecture](../images/mbse-archi.jpg)

*(Courtesy of Pixaby on https://www.pexels.com)*

In the world of architecture modeling, the military organizations like the US Department of Defense (DoD), the UK Ministry of Defence (MoD) or the NATO organization created enterprise architecture frameworks adapted to their needs.

On the market today, 3 main frameworks are existing and used in military projects:

  * [DoDAF](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/), the US MoD Architecture Framework, that was historically the first military architecture framework ever (it is originated in the 90s);
  * [MoDAF](https://www.gov.uk/guidance/mod-architecture-framework), the UK MoD architecture framework, which is both an adaptation and an abstraction of DoDAF;
  * [NAF](https://www.nato.int/cps/en/natohq/topics_157575.htm), the NATO Architecture Framework that is also an adaptation and an abstraction of DoDAF and MoDAF.

## Objectives and dimensions of the military frameworks

The main objective searched by military organization is to be able to master a global project of several billions of dollars/euros from the design phase to the support and operational phase. Because those projects/programs can be very large and very complex, the idea was that everyone (military organization and supplier organizations) share the same set of "views" on the program in order to share understanding of what was to be done, how requirements were taken into account, the full lifecycle of the project and the product.

<a name="table1"></a>*Table 1: Structure of military requirements*

| # | Dimension | Details |
| --- | --- | --- |
| 1 | Product definition | Can be an aircraft, weapon, complex system, etc. and all the related IT systems to manage them. The objective is to use a systems engineering approach (model-based in that case), based on requirements. |
| 2 | Product support and operations | The objective of this phase is to detail all the systems that will permit the support of the product. This is generally a wide topic including maintenance, parts procurement, etc. Moreover, the product use must be envisaged in operations preparation and in battle field in coordination with other systems and organizations. |
| 3 | Digital transformation | The objective of this phase is to evaluate and deal with the impacts of the product and product support in the operational organization, processes and IT of the army. |
| 4 | Project plan | The objective is to be able to describe the the plan to deliver the product conforming to the requirements (phases, milestones and so on), to permit project steering, and product support procurement. |

We can classify the military enterprise architecture frameworks as pursuing 4 objectives, as shown in table 1.

## Modeling domains

Those 4 objectives are traditionally modeled with 3 different modeling techniques:

  * Systems engineering for the product definition,
  * Enterprise architecture for:
    * Product support,
    * Digital transformation,
  * Project modeling tools for project management.

<a name="figure1"></a>*Figure 1: The 3 domains Military framework concerns in the industrial V-model*

![The 3 modeling domains of military frameworks](../yed/mbse-ea-pm.png)

The figure 1 shows the 3 modeling modeling domains and the 4 areas of concerns that they are traditionally covering.

In terms of modeling, we could say that the core objective of the military frameworks is to have, in a single repository, the [systems engineering](https://sebokwiki.org) (MBE/MBSE, the [enterprise architecture](https://en.wikipedia.org/wiki/Enterprise_architecture) and the project management *gathered together*.

## Positioning in the V-model

Those 4 areas of concern can be mapped on an industrial [V-model](https://en.wikipedia.org/wiki/V-Model) as shown in Figure 2.

<a name="figure2"></a>*Figure 2: Military framework concerns in the industrial V-model*

![Military framework in V-model](../yed/v-cycle.png)

The first dimension, product definition, is in the left part of the V and corresponds to the product architecture, from its operational conditions, requirements to its system design. The second dimension is corresponding to product support (we often speak about "support concept"). The two last dimensions are running all along the project, being at the project/program level or at the digital transformation level (integrate the new product into the current organizations).

We can see in Figure 2 how an integrated modeling of those two highest branches of the V-model can be important for the military customer:

  * It ensures a full lifecycle modeling of the product,
  * It enables simulation scenarios linked to the requirement phase,
  * It enables to anticipate the impact of the new project on army's existing organizations,
  * It enables to manage the project/program.

Most of all, on top of being a common modeling language, it enables complex tradeoffs, including performance, finance, supportability, etc.

## MBSE/MBE

### The RFLP process

In manufacturing, the objective is to create products. The starting point of a product manufacturing is generally a set of requirements. To go from the requirements to the product is generally a long process involving the following phases:

  * <u>Requirements engineering</u>: The objective of this phase is to work on requirements in order to make them non ambiguous, to sort them by importance and to remove inconsistency between them; In this phase, all the operational conditions of the product are described, which is a crucial phase of the process;
  * <u>Functional analysis</u>: This phase objective is to determine the functions of the product, the information flows and dependencies between functions; Generally, the functions are worked at different levels of granularity (functions, sub-functions, sub-sub-functions and so on);
  * <u>Logical system analysis</u>: Once the various functions at various levels are known, the assignment of functions to logical elements can be done; The objective of this phase is to create the appropriate logical systems to get the nearest possible from a possible industrial split of the realization of the product; When the logical analysis is finished, we have the detailed specification of each system ;
  * <u>Physical design</u>: Once the product has been split on several components, several teams can work in parallel on component design (at the level of granularity of the component); The product architecture will ensure that all detailed components fit together conforming to the specifications.

This view is, for sure, simplified and some industries (or specific businesses inside the industries like embedded software, electronics, or mechatronics) are often using more complex processes, with dedicated sub-processes for every discipline.

However, seen from a high level standpoint, the various phases of the MBSE are the 4 we mentioned, leading some people to call the MBSE process a "RFLP" process (RFLP standing for Requirements, Functional, Logical, Physical).

Currently, we find more and more people skipping the "S" of MBSE to talk about MBE, for model-based engineering. The term becomes larger because it does not have this embedded system connotation anymore.

### Maintaining the digital thread

For sure, a RFLP process aims to create a digital "thread" or "link" between the various entities, at least between the requirements, the functions and the systems (plus all the connectivity semantics). The system entities are a solution matching the requirements, and so is their "physical" description; but this solution is the result of various levels of trade-off analysis. In other terms, solutions can (and will) evolve with time.

The full digital thread of information will have to be maintained through changes. Changes in requirements (or operational conditions) will lead to changes in systems and changes in systems (like obsolescence) must be compliant with requirements.

### RFLP processes with many variable dimensions

The RFLP processes that we can find in the industry are generally describing many parameters attached to the various elements (requirements, functions, systems, etc.): the performance, the price, the various criteria of manufacturability, the respect of regulation and standards are among the most important of parameters (the weight also in aerospace).

Those parameters are crucial because, during the various design phases:

  * They permit to use requirement quantification (with values and ranges) and not only requirement qualification;
  * They enable to simulate the various elements working together (functional simulation, system simulation, or full product simulation in some known conditions);
  * They enable complex trade-offs that lead to design the best product "under a certain set of constraints".

### Modeling in MBSE

The topic is quite vast but we will, once again, try a simplification. Modeling can be done mainly with 3 different approaches:

  * The first one is to do "manual" systems engineering with Office documents (Word and Excel mainly); This way of doing things is still very present in the industry; It is error prone, and very painful for the engineering teams;
  * The second one is to use "standard MBSE modeling language" like [SysML](http://www.omgsysml.org/) or [Capella](https://www.polarsys.org/capella/) to run the "RFL" part of the MBSE process (the "P" part will be done with specific tools like 3D design tools or electricity engineering tools); The objective is to model graphically the "RFL" part of the process and to keep links with the "P" parts;
  * The third one is to use a simulation/optimization-oriented domain-specific language (DSL, the domain being systems engineering) for requirements and systems like [PMM](https://hal.archives-ouvertes.fr/hal-01273973/document) or [Form-L](http://www.ep.liu.se/ecp/096/130/ecp14096130.pdf).

In the first style of systems engineering, the digital thread is extremely difficult to maintain or trace, and generally, to be able to do it, a lot of manual and painful efforts are required. Most of the time, the requirements are vague, not measurable, and the trade-offs analysis are not recorded.

With time, we see a growing consciousness of the advantages of the third solution to be able to do complex trade-offs very early in the product design phase (see the system engineering book of knowledge [here](https://sebokwiki.org)).

### MBE/MBSE seen from the military

The MBE/MBSE modeling techniques are a way for military organizations to ensure that their requirements are correctly understood and are refined the right way. Especially, the requirements being tightly coupled with operational conditions (often called CONOPS for CONcept of OPerationS), the graphical modeling in a unified language is an enabler for common understanding, sharing of decisions in complex trade-offs and sharing of information.

For sure, this is being true for the design phase of the system.

## About the complexity of modeling hybrid systems

The fact is systems engineering is very adapted to design the early phases of a product and do the right structuring trade-offs.

But the "products" of today are much more complex than the products of yesterday. If we take the sample of aerospace, the "ground segment", or the set of software that enable to manage the machines from the ground is much bigger and much more complex than before.

Let us take a sample in a non military domain: the constellations of satellites. To be able to operate a constellation of more than 100 satellites in a crowded space, the ground segment complexity is very high.

The thing is it is not easy to design the product (the satellite) as the set of software required to operate many instances of this very satellite. More and more military systems are facing the same kind of problems: they must be tightly coupled together.

How to ensure that all the requirements are taken in charge by all sub-systems in the global system, above all when the way of model management software systems is more related to IT techniques such as enterprise architecture, IT architecture or software architecture?

## Modeling enterprise architecture

The enterprise architecture domain is very wide and our objective is not here to describe it extensively. We will just mention that this domain is mainly split in 2 concerns:

  * What *methodology* should be used to create a good IT architecture serving the business process transformation according to the strategic intentions?
  * What are the relevant views and artifacts to use to *model* the digital transformation, starting with the strategy, going through the business layer, the application layer and the infrastructure layer?

There are many enterprise architecture methodology frameworks, but the most used nowadays is [TOGAF](https://www.opengroup.org/togaf).

The most used enterprise architecture modeling language is Archimate (see our [introductory article](archimate-intro.md) and our recommended [recipes](archimate-recipes.md)). This language is particularly adapted to model most of the other dimensions of interest of the military project, especially the organizations, strategy, processes and IT systems, whatever the complexity.

It proposes 13 basic viewpoints (see [here](https://pubs.opengroup.org/architecture/archimate3-doc/apdxc.html)) but its global metamodel makes it adapted for many complex representations.

Traditionally enterprise architecture is information systems oriented and aims at reintroducing the business common sense in IT. In order to tackle the strategic intentions of a company that wants to transform, process and IT transformation must be considered *together as a system* in order to avoid the 2 common traps:

  * The biased process-driven project able to change the company processes but without any efficiency for the company (for instance by bringing more Excel spreadsheets, more blocking steps, multiple keying and bureaucracy than the company already has);
  * The biased IT-driven project able to change the IT systems without being synchronized with new processes (and generating more troubles, data inconsistencies, process problems, double keying, etc.).

Samples of those traps are numerous. For the first case, transformation projects led by process experts often lead to a huge loss of money because they create more Excel tools and often add layers of procedures to already overly complex environments. For the second case, a typical example is the "tool project approach": when users have a need, let's by a tool and deploy it. Those two sample lead to the same result: inefficient, error prone and expensive processes, and inefficient, error prone and expensive IT systems.

Enterprise architecture, by its way of considering the processes and IT systems together enables to perform the proper tradeoffs in projects and to plan a real digital transformation, meaning a process and IT systems joint transformation targeting a better efficiency (cost reduction or productivity enhancement).

## Various solutions for military projects

Considering the military requirements of [table 1](#table1), the various frameworks we mentioned propose several methodological and modeling solutions.

### The best of breed solutions

If we look at the market and take the best of breed modeling solutions adapted to the requirements of [table 1](#table1), we could propose the solutions presented in Table 2.

<a name="table2"></a>*Table 2: Best of breed solutions for military programs*

| # | Dimension | Solution |
| --- | --- | --- |
| 1 | Product definition | [SysML](http://www.omgsysml.org/) systems engineering modeling language |
| 2 | Product support and operations | [Archimate](archimate-intro.md) enterprise architecture modeling language |
| 3 | Digital transformation | Archimate enterprise architecture modeling language |
| 4 | Project plan | Complex planning tools for programs (set of projects with dependencies) + Archimate with the implementation and migration package |

As we can see in the table 2, we have 3 ways of modeling the full program: SysML, Archimate and a planning tool.

The 3 metamodels not being integrated together, we may have problems at the "interfaces" of each domain.

SysML proposes 9 kinds of diagrams and Archimate 13 basic viewpoints, what corresponds to approximately 22 types of diagrams. If we had 2 or 3 viewpoints for planning, we would end up with a solution presenting around 25 viewpoints.

### The military frameworks

#### DoDAF

The military frameworks, for decades, defined a set of artifacts and views to have it all covered.

The Figure 3 shows the structure of views of DoDAF version 2.

<a name="figure3"></a>Figure 3: [DoDAF viewpoint structure](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/dodaf20_viewpoints/dodaf20_services.aspx) (52 viewpoints)

![DoDAF viewpoint structure](../images/dodaf.gif) 

#### MoDAF

The Figure 4 shows the structure of views of MoDAF.

<a name="figure4"></a>Figure 4: [MoDAF viewpoint structure](https://www.gov.uk/guidance/mod-architecture-framework#viewpoints-and-views) (46 viewpoints)

![MoDAF viewpoint structure](../images/modaf.png)

#### NAF

The Figure 5 shows the structure of views in NAF v4.

<a name="figure5"></a>Figure 5: [NAF viewpoint structure](https://www.nato.int/cps/en/natohq/topics_157575.htm) (46 viewpoints)

![NAF viewpoint structure](../images/naf-v4.png) 

#### UAF

An attempt of "unification" of those three frameworks was done by the [OMG](https://www.omg.org) with the so-called Unified Architecture Framework ([UAF](https://www.omg.org/spec/UAF/1.0)).

The Figure 6 shows the structure of views in UAF v1.

<a name="figure6"></a>Figure 6: [UAF viewpoint structure](https://www.omg.org/spec/UAF/1.0) (+70 viewpoints)

![UAF viewpoint structure](../images/uaf-v1.png) 

#### Views and metamodel

All frameworks propose a metamodel that is often very rich, and also very complex. With time, the metamodels got more abstract which makes their use quite difficult.

### Genericity, specialization and taxonomy

The core advantage - and the core problem - of those frameworks is that they are *generic*. With the same semantics (or almost), it is possible to describe a project for a new military aircraft, or a project for a new military device or a project for a new IT application.

The fact is that, in every of those projects, some notions can be called the same even if they don't cover the same reality.

Let us take the sample of "service" (which is very emblematic of those frameworks). Some of those framework describe it as being a "service in the broadest sense of the term".

An aircraft can provide a service, so is a military device, so is an application. For each of those "products", the notion of service will represent a different reality: the aircraft can provide a high level service to the army, the device a service to other devices and the IT application a service to a set of users. The connectivity between those services will depend on the context and on what we are talking about.

If we imagine a more complex project such as an aircraft, its ground segment and all support processes, it will be very complex to represent all those various objects and their interconnectivity with generic concepts.

To address this problem of "specialization" of very general concepts (or meta-concepts), the military frameworks propose the "taxonomy" approach. By defining for the various kind of views the appropriate taxonomy, the architects define the content of the views which removes the ambiguity.

In this spirit, each project will "instantiate" the military architecture framework according to its needs: the taxonomy of artifacts will clarify the meaning of abstract artifacts in the context of the project. This way of working is very common in military projects where a "guidance conference" at project start defines the various implementation options that are taken by the project.

This way of working can be quite easy in a simple project but can quickly become very complicated when the project is suppose to build several "products" of several kinds (which is the case in big military programs).

For instance, to be able to create meaningful and useful views in a new aircraft project containing the aircraft, the ground segment and the support system, complex and *different* conventions will have to be taken for each big "chunk" of the program. But, if we specialize each part of the program with a specific *meaning* of artifacts per program part, what not using domain-specific modeling languages such as presented in the "best of breed" part above?

### Bridging several semantic domains together

The advantage of having an integrated framework is the bridges between various domains. In a best of breed solution, the bridging are almost impossible unless the modeling tool is unifying several modeling languages.

Bridges can be very important in the lifecycle of a program, because they can link the two parts of the V-model (as shown in [figure 2](#figure2)). Samples are numerous and at the heart of many industrial projects:

  * Interlinking product support to product definition enables a better product maturity;
  * Interlinking all phases with an integrated planning is very interesting (product-based planning) especially if the product is an assembly of other subproducts;
  * Interlinking digital transformation to the two branches of the V-model enables to prepare the efficient changes required in the organizations, their processes and their IT systems;
  * Etc.

<a name="linknote1"></a>When the modeling language and its metamodel enables to create those connections, the complexity of big programs can be described with many details [[1](#note1)].

### A problem of semantics

The problem, as we saw it in [figure 2](#figure2), is that, under the military frameworks are "concrete" semantic domains underlying. We identified 4 semantic areas in [table 1](#table1) and [figure 1](#figure1) and [2](#figure2):

  * Product definition,
  * Product support and operations,
  * Digital transformation,
  * Project management.

We can add that the target of military frameworks is to support a certain kind of projects that are belonging to a limited number of categories: full device, partial device and IT systems, more or less.

In those conditions, the advantages brought by the chosen framework must be balanced with its drawbacks. Among them we can name:

  * A non natural way of modeling of already standardized semantic domains, which will make the information understanding and sharing quite difficult, even for experienced professionals;
  * A complexity in the use of taxonomies and a risk of heterogeneity of framework interpretation, between various projects but also *within* the same project;
  * The risk of introducing ambiguities that will have a negative impact on the project;
  * The problem of finding appropriate skills to manipulate the complexity of the framework and its various interpretations;
  * The cost of training people outside the domain-specific standards;
  * The requirement of creating a tool implementing the metamodel of the framework (and maintaining it over time).

## Syncretism or unification?

### Evolutions and work-arounds

It is important to note that, with time, the military frameworks opened to some modeling standards, while keeping their own core metamodel, which does not appear as fully totally consistent.

### Using Archimate for everything

For instance, NAF v4 indicates that Archimate and UAF can be used for modeling.

<a name="linknote2"></a>Clearly, Archimate can be used for product support and digital transformation (lines 2 and 3 of table1) but it seems a bit light to model product definition (even with the physical package introduced in version 3). Concerning the project management Archimate has basic artifacts but that cannot enable the management of a complex program, in the way NAF or other military frameworks picture it. That means that Archimate can be used in NAF for certain kinds of projects, but *cannot cover all* that NAF intends to cover [[2](#note2)].

[Figure 7](#figure7) shows the classic use of Archimate which deliverables are processes and IT systems.

### Using SysML for everything

Another option in the market is to consider that SysML can be used for everything. We propose to look at figure 7 a comparison between Archimate and SysML on an abstract RFLP process, declined respectively in a product definition process for SysML and on a set of processes and IT systems definition process for Archimate.

<a name="figure7"></a>*Figure 7: SysML and Archimate comparison*

![SysML and Archimate comparison](../yed/mbse-vs-ea.png)

As we said earlier, the systems engineering area is introducing now more and more executable domain specific languages (DSL) to be able to simulate, optimize and perform early tradeoffs for system architecture. That is showing that SysML will never be the only systems engineering modeling language.

Second of all, if we compare to Archimate, we can see basically that the two modeling languages are not targeting the same problem. As we said in the best of breed solution, each project which scope encompasses a physical product plus processes and IT would definitely need both approaches.

### Using UAF for everything

UAF on the other hand pretends to cover it all. Its metamodel being an extension of SySML, it seems well suited  for product definition. As the meta-model integrates many more artifacts, the coverage seems one of the most extensive of the market.

The problem of NAF is, for us, the one we already described and that is attached to every military framework: in order to use it concretely, you have to instantiate it with the precise taxonomy of elements you will use. This is the way the military are doing things, but this way may not be adapted for every company.

### Using a custom architecture framework for everything

Some companies are inventing their own modeling frameworks, quite often by sticking various semantically incompatible metamodels together, or by redefining from scratch a large set of artifacts in a brand new metamodel. In 25 years, we never saw this approach work: worse, we always saw this approach end badly.

The drawbacks of this approach are numerous:

  * The new framework is generally not documented enough, so architects are interpreting it in a chaotic and non consistent way; This implies that generally diagrams made by one architect are not understandable by another, which generates errors, misunderstanding and inconsistency in the rest of the chain;
  * The new framework knowledge is concentrated in methodology *gurus* who *know better*; They are on the critical path of everything and have, most of the time, *no real experience in modeling on large scale projects* (or they would not create a new metamodel on their own); They love methodology and metamodels but are not realizing that the quality of a metamodel is its semantic non ambiguity; They generally won't listen to any comment from operational people;
  * The learning curve on the new framework is very long and complex, because there is not enough document, because the gurus are not reachable and because, as time passes, some errors in the metamodel are being corrected, which makes the old models incompatible with the new version of the framework;
  * The new framework is generally based on a tool implementation with the metamodel; Generally, not everyone has access to the tool, which makes the adoption of the framework difficult for many users;
  * There will always be experienced people that saw that the new framework is not working well (generally bringing semantic confusion) and that will keep on using standard  methodologies and tools, that proved to be efficient and *helpful* in projects.

This word is very important: helpful. The modeling aims to *help* architects to build better systems, not to glorify the ego of the gurus.

The path of creating a new framework with a new metamodel is very dangerous and always ends badly, so we do not recommend it at all. It is a waste of time, energy and brains.

That's why standardization groups were created: to put a lot of people with skills and large experience to define frameworks that work in many contexts and projects. You can look at our [article](archimate-intro.md) on Archimate that explains why Archimate *works*.

### One or many?

We have to says that we don't believe in unification, in the single modeling approach that covers any use case, in the "one size fits all" universal modeling language. That means syncretism: taking modeling languages for what they do best.

The problem of interlinking domains remains.

This problem is generally solved by two approaches:

  * A tool based approach, integrating several metamodels together (with the risk of creating many semantic ambiguities by sticking together metamodels that have semantic overlap);
  * A semantic approach where each modeling universe shares some concepts with other modeling universes, in an interoperability way.

<a name="figure8"></a>*Figure 8: Sharing concepts between two modeling languages*

![Sharing concepts](../yed/modeling-spaces.png)

The second approach is shown in figure 8. Doing the exercise of concept sharing between different modeling languages is very healthy, because it will define what we want to really pilot at the project level. As the modeling languages are domain specific, they will be used at specific moments of the project and so the interfaces between the various modeling activities can be formalized. With the help of the common semantic concepts and relationships, we can define quite easily a maturity process of exchanges between the various poles of expertise of the project.

## Using military frameworks in the industry

Military frameworks are tuned to be used on the customer side: they rely on the hypothesis that the army is the customer and the industrial company (or companies) is (or are) the supplier(s). [Table 1](#table1) explains the foundations of the military concerns. Military preoccupations are very concrete: features and performance, money, schedule, operational model.

Those concerns are not the ones of the supplier company, as shown in [Figure 2](#figure2) in the V-model. The supplier company would target an integration at other levels to be able to perform other tradeoffs than the military.

Even for UAF, we have to be cautious about the real intentions behind a modeling and methodology framework, because those intentions are materialized inside the framework itself which is the result of a set of constraints: if the set of constraints is not the same, the result will probably won't be the same either.

The industrial world become more and more complex, some industrial companies are searching to define or reuse big modeling frameworks to ensure that every aspect of theirs problems is covered. Currently, there seem to be nothing obviously applicable for those industries on the market.

For the industry currently and unfortunately, syncretism of modeling languages seems the only solution for now.

## Notes

<a name="note1"></a>[1] On the other hand, concerning the product lifecycle and specifically the links between engineering and support, some other industry-specific standards are covering the process aspect of such a challenge: the [ASD standards](http://www.sx000i.org/). [Back to text](#linknote1).

<a name="note2"></a>[2] See the first NAF to Archimate mapping in the [online article](https://bizzdesign.com/blog/nato-architecture-framework-archimate/) of Mark Lankhorst. [Back to text](#linknote2).

(*November 2019*)
