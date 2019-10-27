# MBSE vs Enterprise Architecture

![Image illustrating architecture](../images/mbse-archi.jpg)

In the world of modeling, two streams, answering to different objectives, evolve in parallel for decades: The model-based system engineering (MBSE) and the enterprise architecture (EA). If most of the company will never see the connection between those two worlds, some use techniques that want to "bridge" the two modeling domains together.

In this article, we will analyze the main differences of the two approaches, their common points and the various approaches that aim to couple them in a single approach.

## MBSE/MBE

### The RFLP process

In manufacturing, the objective is to create products. The starting point of a product manufacturing is generally a set of requirements. To go from the requirements to the product is generally a long process involving the following phases:

  * <u>Requirements engineering</u>: The objective of this phase is to work on requirements in order to make them non ambiguous, to sort them by importance and to remove inconsistency between them; In this phase, all the operational conditions of the product are described, which is a crucial phase of the process;
  * <u>Functional analysis</u>: This phase objective is to determine the functions of the product, the information flows and dependencies between functions; Generally, the functions are worked at different levels of granularity (functions, sub-functions, sub-sub-functions and so on);
  * <u>Logical system analysis</u>: Once the various functions at various levels are known, the assignment of functions to logical elements can be done; The objective of this phase is to create the appropriate logical systems to get the nearest possible from a possible industrial split of the realization of the product; When the logical analysis is finished, we have the detailed specification of each system ;
  * <u>Physical design</u>: Once the product has been split on several components, several teams can work in parallel on component design (at the level of granularity of the component); The product architecture will ensure that all detailed components fit together conforming to the specifications.

This view is, for sure, simplified and some industries (or specific businesses inside the industries like embedded software, electronics, or mechatronics) are often using more complex processes. But, seen from a high level standpoint, the various phases of the MBSE are the 4 we mentioned, leading some people to call the MBSE process a "RFLP" process (RFLP standing for Requirements, Functional, Logical, Physical).

Currently, we find more and more people skipping the "S" of MBSE to talk about MBE, for model-based engineering. The term becomes larger because it does not have this (embedded) system connotation anymore.

### Maintaining the digital thread

For sure, a RFLP process creates a digital "thread" or "link" between the various entities, at least between the requirements, the functions and the systems (plus all the connectivity semantics). The system entities are a solution matching the requirements, and so is their "physical" description; but this solution is the result of various levels of trade-off analysis. In other terms, solutions can (and will) evolve with time.

The full digital thread of information will have to be maintained through changes. Changes in requirements will lead to changes in systems and changes in systems (like obsolescence) must be compliant with requirements.

### RFLP processes with many variable dimensions

The RFLP processes that we can find in the industry are generally describing many parameters attached to the various elements (requirements, functions, systems, etc.): the performance, the price, the various criteria of manufacturability, the respect of regulation and standards are among the most important of parameters (the weight also in aerospace). Those parameters are crucial because, during the various design phases:

  * They permit to use requirement quantification (with values and ranges) and not only requirement qualification;
  * They enable to simulate the various elements working together (functional simulation, system simulation, or full product simulation in some known conditions);
  * They enable complex trade-offs that lead to design the best product "under a certain set of constraints".

### Modeling in MBSE

The topic is quite vast but we will, once again, try a simplification. Modeling can be done mainly with 2 different (and sometimes complementary) approaches:

  * The first one is to use "standard MBSE modeling language" like [SysML](http://www.omgsysml.org/) or [Arcadia](https://www.polarsys.org/capella/) to run the "RFL" part of the MBSE process (the "P" part will be done with specific tools like 3D design tools or electricity engineering tools); The objective is to model graphically the "RFL" part of the process and to keep links with the "P" parts;
  * The second one is to use a simulation-oriented domain-specific language (DSL, the domain being systems engineering) like [PMM](https://hal.archives-ouvertes.fr/hal-01273973/document) or [Form-L](http://www.ep.liu.se/ecp/096/130/ecp14096130.pdf);

A third way of doing is not to do any MBSE approach, or doing it partially: requirements, functions and systems can be described in various tools and office documents, and at a certain point (generally the detailed design point), specific business tools are used to complete the study. In this kind of process, the digital thread is extremely difficult to maintain or trace, and generally, to be able to do it, a lot of manual and painful efforts are required.



(*October 2019*)
