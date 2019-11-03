# Military frameworks, systems engineering and enterprise architecture

![Image illustrating architecture](../images/mbse-archi.jpg)

*(Courtesy of Pixaby on https://www.pexels.com)*

In the world of architecture modeling, the military frameworks like [DoDAF](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/) (US Department of Defense Architecture Framework), [MoDAF](https://www.gov.uk/guidance/mod-architecture-framework) (UK Ministry of Defence) or [NAF](https://www.nato.int/cps/en/natohq/topics_157575.htm) (NATO Architecture Framework) are trying to define a common modeling language for a set of purposes.

| # | Dimension | Details |
| --- | --- | --- |
| 1 | Product definition | Can be an aircraft, weapon, complex system, etc. and all the related IT systems to manage them. The objective is to use a systems engineering approach (model-based in that case), based on requirements. |
| 2 | Product support | The objective of this phase is to detail all the systems that will permit the support of the product. This is generally a wide topic including maintenance, parts procurement, plus the product integration into existing military organizations. |
| 3 | Product operational use | The product use must be envisaged in operations preparation and in battle field in coordination with other systems and organizations. |
| 4| Project plan | The objective is to be able to describe the the plan to deliver the product conforming to the requirements (phases, milestones and so on) and to permit project steering. |

*Table 1: Structure of military requirements*

The objective searched by military organization is to be able to master a global project of several billions of dollars/euros from the design phase to the support and operational phase. Because those projects/programs can be very large and very complex, the idea was that everyone (military organization and supplier organizations) share the same set of "views" on the program in order to share understanding of what was to be done, how requirements were taken into account, the full lifecycle of the project and the product.

In a certain way, the objective of military frameworks is to have, in a single repository, the [systems engineering](https://sebokwiki.org) (MBE/MBSE) and [enterprise architecture](https://en.wikipedia.org/wiki/Enterprise_architecture) *gathered together*.


## 1 MBSE/MBE

### 1.1 The RFLP process

In manufacturing, the objective is to create products. The starting point of a product manufacturing is generally a set of requirements. To go from the requirements to the product is generally a long process involving the following phases:

  * <u>Requirements engineering</u>: The objective of this phase is to work on requirements in order to make them non ambiguous, to sort them by importance and to remove inconsistency between them; In this phase, all the operational conditions of the product are described, which is a crucial phase of the process;
  * <u>Functional analysis</u>: This phase objective is to determine the functions of the product, the information flows and dependencies between functions; Generally, the functions are worked at different levels of granularity (functions, sub-functions, sub-sub-functions and so on);
  * <u>Logical system analysis</u>: Once the various functions at various levels are known, the assignment of functions to logical elements can be done; The objective of this phase is to create the appropriate logical systems to get the nearest possible from a possible industrial split of the realization of the product; When the logical analysis is finished, we have the detailed specification of each system ;
  * <u>Physical design</u>: Once the product has been split on several components, several teams can work in parallel on component design (at the level of granularity of the component); The product architecture will ensure that all detailed components fit together conforming to the specifications.

This view is, for sure, simplified and some industries (or specific businesses inside the industries like embedded software, electronics, or mechatronics) are often using more complex processes, with dedicated sub-processes for every discipline.

However, seen from a high level standpoint, the various phases of the MBSE are the 4 we mentioned, leading some people to call the MBSE process a "RFLP" process (RFLP standing for Requirements, Functional, Logical, Physical).

Currently, we find more and more people skipping the "S" of MBSE to talk about MBE, for model-based engineering. The term becomes larger because it does not have this embedded system connotation anymore.

### 1.2 Maintaining the digital thread

For sure, a RFLP process aims to create a digital "thread" or "link" between the various entities, at least between the requirements, the functions and the systems (plus all the connectivity semantics). The system entities are a solution matching the requirements, and so is their "physical" description; but this solution is the result of various levels of trade-off analysis. In other terms, solutions can (and will) evolve with time.

The full digital thread of information will have to be maintained through changes. Changes in requirements (or operational conditions) will lead to changes in systems and changes in systems (like obsolescence) must be compliant with requirements.

### 1.3 RFLP processes with many variable dimensions

The RFLP processes that we can find in the industry are generally describing many parameters attached to the various elements (requirements, functions, systems, etc.): the performance, the price, the various criteria of manufacturability, the respect of regulation and standards are among the most important of parameters (the weight also in aerospace).

Those parameters are crucial because, during the various design phases:

  * They permit to use requirement quantification (with values and ranges) and not only requirement qualification;
  * They enable to simulate the various elements working together (functional simulation, system simulation, or full product simulation in some known conditions);
  * They enable complex trade-offs that lead to design the best product "under a certain set of constraints".

### 1.4 Modeling in MBSE

The topic is quite vast but we will, once again, try a simplification. Modeling can be done mainly with 3 different approaches:

  * The first one is to do "manual" systems engineering with Office documents (Word and Excel mainly); This way of doing things is still very present in the industry; It is error prone, and very painful for the engineering teams;
  * The second one is to use "standard MBSE modeling language" like [SysML](http://www.omgsysml.org/) or [Capella](https://www.polarsys.org/capella/) to run the "RFL" part of the MBSE process (the "P" part will be done with specific tools like 3D design tools or electricity engineering tools); The objective is to model graphically the "RFL" part of the process and to keep links with the "P" parts;
  * The third one is to use a simulation/optimization-oriented domain-specific language (DSL, the domain being systems engineering) for requirements and systems like [PMM](https://hal.archives-ouvertes.fr/hal-01273973/document) or [Form-L](http://www.ep.liu.se/ecp/096/130/ecp14096130.pdf).

In the first style of systems engineering, the digital thread is extremely difficult to maintain or trace, and generally, to be able to do it, a lot of manual and painful efforts are required. Most of the time, the requirements are vague, not measurable, and the trade-offs analysis are not recorded.

With time, we see a growing consciousness of the advantages of the third solution to be able to do complex trade-offs very early in the product design phase (see the system engineering book of knowledge [here](https://sebokwiki.org)).

### 1.5 MBE/MBSE seen from the military

The MBE/MBSE modeling techniques are a way for military organizations to ensure that their requirements are correctly understood and are refined the right way. Especially, the requirements being tightly coupled with operational conditions (often called CONOPS for CONcept of OPerationS), the graphical modeling in a unified language is an enabler for common understanding, sharing of decisions in complex trade-offs and sharing of information.

For sure, this is being true for the design phase of the system.

## 2 About the complexity of modeling hybrid systems

The fact is systems engineering is very adapted to design the early phases of a product and do the right structuring trade-offs.

But the "products" of today are much more complex than the products of yesterday. If we take the sample of aerospace, the "ground segment", or the set of software that enable to manage the machines from the ground is much bigger and much more complex than before.

Let us take a sample in a non military domain: the constellations of satellites. To be able to operate a constellation of more than 100 satellites in a crowded space, the ground segment complexity is very high.

The thing is it is not easy to design the product (the satellite) as the set of software required to operate many instances of this very satellite. More and more military systems are facing the same kind of problems: they must be tightly coupled together.

How to ensure that all the requirements are taken in charge by all sub-systems in the global system, above all when the way of model management software systems is more related to IT techniques such as enterprise architecture, IT architecture or software architecture?

## 3 Modeling enterprise architecture

The enterprise architecture domain is very wide and our objective is not here to describe it extensively. We will just mention that this domain is mainly split in 2 concerns:

  * What methodology to create a good IT architecture serving the business process transformation according to the strategic intentions?
  * What are the relevant views and artifacts to use to model the digital transformation, starting with the strategy, going through the business layer, the application layer and the infrastructure layer?

The most used enterprise architecture language is Archimate (see our [introductory article](archimate-intro.md)). This language is particularly adapted to model most of the other dimensions of interest of the military project, especially the organizations, strategy, processes and IT systems, whatever the complexity.

## 4 Solutions for military projects

### 4.1 The best of breed solutions

If we look at the market and take the best of breed solutions, considering the requirements of the Table 1, we can end up having the analysis of the Table 2.

| # | Dimension | Solution |
| --- | --- | --- |
| 1 | Product definition | [SysML](http://www.omgsysml.org/) systems engineering modeling language |
| 2 | Product support | [Archimate](archimate-intro.md) enterprise language |
| 3 | Product operational use | Mix of SysML (environment requirements) and Archimate |
| 4 | Project plan | Complex planning tools for programs (set of projects with dependencies) + Archimate with the implementation and migration package |

*Table 2: Best of breed solutions for military programs*

As we can see in the table 2, we have 3 ways of modeling the full program: SysML, Archimate and a planning tool. The 3 metamodels not being integrated can bring problems at the "interfaces" of each domain.

### 4.2 The military frameworks

The military frameworks, for decades, defined a set of artifacts and views to have it all covered.

The Figure 1 shows the structure of views of DoDAF version 2.

![DoDAF viewpoint structure](../images/dodaf.gif)

Figure 1: [DoDAF viewpoint structure](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/dodaf20_viewpoints/dodaf20_services.aspx)

The Figure 2 shows the structure of views of MoDAF.

![MoDAF viewpoint structure](../images/modaf.png)

Figure 2: [MoDAF viewpoint structure](https://www.gov.uk/guidance/mod-architecture-framework#viewpoints-and-views)

The Figure 3 shows the structure of views in NAF v4.

![NAF viewpoint structure](../images/naf-v4.png)

Figure 3: [NAF viewpoint structure](https://www.nato.int/cps/en/natohq/topics_157575.htm)

An attempt of "unification" of those three frameworks was done by the [OMG](https://www.omg.org) with the so-called Unified Architecture Framework ([UAF](https://www.omg.org/spec/UAF/1.0)).

The Figure 4 shows the structure of views in UAF v1.

![UAF viewpoint structure](../images/uaf-v1.png)

Figure 4: [UAF viewpoint structure](https://www.omg.org/spec/UAF/1.0)



(*November 2019*)
