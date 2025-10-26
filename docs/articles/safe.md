# What you should know about SAFe

![safe_blackhole](../images/safe-blackhole.png)

We need methods in IT like in any other engineering disciplines. But there are good and bad methods.

I would like, in this article, to show how the SAFe methodology is damaging the IT systems and limiting the productivity and innovation of many companies. To be able to show it, I will come back to the advantages and drawbacks of the Agile methodology and show how SAFe does not leverage Agile at all but, on the contrary, remove its advantages.

This may be seen as attacking the *SAFe idol*, but people have to realize there are better ways.

## Rational Unified Process (RUP), the roots of SAFe

SAFe has its origin in RUP, another enormous useless methodology. The roots of RUP trace back to the merger of the Objectory AB (founded by Ivar Jacobson) and Rational Software Corporation in the mid-1990s. In June 1998, Rational publishes the Rational Unified Process (RUP) version 5.0.

![../images/RUP1999.jpeg](../images/RUP1999.jpeg)

RUP was developed by a team at Rational (including Philippe Kruchten) and incorporated use-cases, UML, and iterative development practices. It was a very heavyweight process framework (nine disciplines, roles, artifacts, workflows) tailored theoretically for large systems. It aimed to address projects requiring heavy modeling.

Quickly, the software ecosystem observed that RUP was overly complex, documentation heavy and not efficient. In other terms, the market did not adopt it. In a certain way, RUP became iconic of *the methodology that should never be put in place if you wqant to realize a large software*.

## Origin of SAFe

SAFe was developed by Dean Leffingwell (and collaborators) and first publicly described around 2011. The framework draws on lean-agile, systems thinking, and agile development practices.

It was positioned as a solution to "scaling agile" practices across the enterprise (many teams, large programs) rather than single-team agile.

## Linkage between RUP and SAFe

Leffingwell’s earlier works include large-scale systems engineering and process frameworks, including RUP. Indeed, similar defaults that were rejected by the whole IT community in RUP can be found in SAFe.

We are now detailing the points that seem to us the most problematic.

## Reminder: The core dimensions of IT project management

In order to be able to discuss about the problems caused by SAFe, we need to make a little background on the basics of IT project management. Note that we are talking about project management, and not software maintenance.

An IT project has 3 main characteristics:

* A *scope*,
* A workload in men-days, which is equivalent to a *budget* necessary to realize it,
* A timing of realization, also called a *plan*.

The *quality* of the delivery can also be taken into account even if few projects choose to lower the quality as a project hypothesis. However, the result of bad project management is often bad software quality.

Project management frameworks such as [PMP](https://en.wikipedia.org/wiki/Project_Management_Professional) add several other dimensions to a project, but we will primarily focus on the 3 core characteristics.

We'll see later in this article that SAFe, taking the pretext to *scale* the Agile methodology, introduces confusion and inefficiency in all dimensions of the project management.

Note that a project plan has:

* A start,
* An end, which correspond to go-live of the project.

In other terms, when a project is finished, we are entering in a maintenance phase, which is running in different hypothesis than the project hypothesis.

## About the Agile methodology

The [Agile methodology](https://en.wikipedia.org/wiki/Agile_software_development), in a certain way, has few adherence with the project management methodology. In order to avoid the tunnel effect, the development teams develop in sprints of several weeks (generally between 2 and 4) and are capable at the end of each sprint to show something to the client of the software. This ensures that the software follows the client's requirements.

During each sprint, the clients can prioritize their demands and adjust the scope of the next sprint to better match their needs.

In a way, seen from a project management standpoint, Agile is a way to organize the specification and development phases. But all the dimensions of project management, scope, costs, duration, stay the primary focus. Needless to say that the Agile methodology is *software development methodology* having impacts on the *requirements and specification management* process.

For the testing phase, it is a project decision that is unrelated to Agile. The go-live ca be done after all project sprints have been developed, or the project can decide to make multiple go-live. For sure, before each go-live, the testing phase will be a user acceptance phase made of new features testing and non regression testing (if applicable).

## Agile and Waterfall responsibilities

[Waterfall](https://en.wikipedia.org/wiki/Waterfall_model) is the older way: The development team develops all the product and shows it to the clients *at the end of the full development*. For the clients (functional people), it is a bit different compared to Agile because they must make a complete set of requirements at the beginning of the project. During the project, they have no real possibility to change the scope during the development phase (in real life, they have, except that it is more complicated).

In Agile, on the contrary, they can:

* Specify the software progressively,
* Change original requirements during the development phase.

Comparing those 2 development methods, we can see that there is a complete change of responsibilities with Agile.

In Waterfall, the functional team creates a set of requirements/specifications that aims to be complete. The development team can commit on the costs/plan to develop this finite scope. They can even take fixed-price contract commitments (which was a standard way to proceed 20+ years ago). The risk is assumed by the development team that commits on a scope/costs/plan. Hence the capability of taking contractors to realize a project, because they can *commit*.

In Agile, due to the fact that the functional team can reprioritize the backlog at each sprint, there is no real scope, except often a *starting scope*. The development team cannot commit on the scope/plan. Costs announced in the development phase are just the price of each sprint multiplied by the number of sprints supposed to be sufficient to realize the starting scope. As no one is committing on anything, the Agile methodology requires very mature functional people, people that will follow their core scope, and a project management that follows the number of sprints (costs) and ensure that we are progressive towards the objective of delivering a functional software at the end of the last sprint.

Many IT service companies are selling to clients that they are in an *almost-fixed-price* contract in Agile: For sure, they estimated the cost to develop of starting scope, and published a proposition with a number of sprints of a certain team (costs) addressing the requirements (scope) in a particular time frame (plan). But as long as the functional people can alter the backlog at each sprint, as long as they can prioritize nice-to-have features versus core features, or features that were not in the original scope, the full budget of the project can be spent without getting to a functional and usable software. Indeed, in Agile, the only role that guarantees the end product is, strangely, the functional team, meaning the client. The IT service company, in Agile, is taking only a commitment based on resources, so a means commitment and no more a fixed-price contract commitment. That explains why the IT contractors want to work in Agile.

We insisted on the drawbacks of Agile but the advantage is that it can be much better to achieve complex programs, because the scope can be arranged differently that was was originally planned, and to a team A can be able to deliver a dependency to team B to enable team B to progress, even in the last of late dependency identification.

## Management of "IT programs" before SAFe

Before SAFe, to succeed in a complex project, you needed 2 key skills:

* A program manager, able to manage a set of interlinked projects, often managed by their own project manager;
* At least an enterprise architect, knowing the IT landscape and the functional/technical dependencies between applications and project scopes.

Those two set of skills had to work hand in hand: The program manager was gathering the dependencies highlighted by the architect and was creating milestones of synchronization where necessary. The target was to determine *who* was delivering *what* to *whom* and *when*. Each project had its own targets, including the potential need to deliver a certain scope to another project at a certain moment.

With this "program management" approach, massive projects can be realized.

## The customer budget constraints

SAFe makes us recall very basic questions.

Why do we have a project phase and a maintenance phase?

## SAFe confusion of project and maintenance



## Problem #1: Scope management issue and confusion of semantic domains

If we look at SAFe 



## Problem #1: SAFe is hiding project dependencies



With SAFe, the architecture problems are becoming hidden : Even if you may have many more architects working on your "solution", the fact that all stream can depend all streams has a tendency to hide the real dependencies. Everyone is delivering at the end of the Program Increment (PI) in his silo.

This has several annoying consequences:

* Useless dependencies are often created: As everyone can depend on anyone, it is easy to create complexity in the architecture and on the function placement without alerting anybody, quite often for "the sake of reuse";
* The SAFe administrative layer - people that have neither business or functional knowledge nor any IT knowledge - may understand very lately that projects have dependencies;
* You have a tendency to make bad architecture durable - because everyone is in its silo.

## Problem #2: SAFe is slow

By the simple fact that you deliver all projects at the same pace, and that your pace is a PI (quite often several months):

* You ruin every possible optimization in your plan,
* You align every project on the same pace, whereas in the real life, some projects can deliver every 2 weeks and some other every month, or every 3 weeks.

Inside a "train", you could imagine to deliver and manage internal dependencies, but the fact that the "enablers" are grouped in a train often means that you need to wait for the PI delivery to get your dependency.

The inter-train deliveries will inevitably consume much more time that if you had managed a program with dependencies where they really are.

The fun fact is that everyone that have worked in SAFe is feeling this deceleration in deliveries. With SAFe, you just cannot deliver "quickly".

## Problem #3 : SAFe is (very) expensive

You have plenty of new roles in SAFe, administrative roles that are supposed to manage the Agile Release Trains without knowing about their content or architecture. SAFe has an overhead of structure that can be quickly enormous. It introduces a huge bureaucracy, hiding structurally the real IT guys. For many people, it seems like a relief: being able to "pilot" many IT projects with no IT skills.

In the overhead structure, enterprise architects are supposed to be the only role that can make sense of those parallel streams, but indeed, this role is most often useless because of the structure of the whole project. When all silos are progressing in parallel, the architect is often powerless.

## Problem #4: SAFe is hiding the real constraints, especially resource issues and priorities

Let's suppose you have several IT products and a team attached to each of them to perform maintenance and evolutions.

In SAFe, it will be complicated to realize that one team is understaffed and the others are overstaffed if all of them have a filled roadmap, which is generally the case. Because you are managing the trains with people that are *external to the software reality*, you may not see that the overstaffed team is developing only nice to have features, while the understaffed team will take many PIs to get the important features done. In a certain way, SAFe hides the resource allocation topic.

SAFe also hides priorities. Who, in a SAFe management team, is able to assess that one backlog is full of critical feature and one is only filled with nice to have? In large SAFe solutions, you can even see administrative structures that are in charge of recording the requirements. The implementation plan of those requirements is becoming rapidly opaque considering that the size of the scope involved 

Another sign of that problem is the non capability of explaining where we are standing in the project: "The trains are going on". Yes, but what did we deliver as a *complete feature*? What business processes are covered?

All that will lead you to :

* Inevitable delays in your projects: The understaffed team will slow down everyone,
* Useless money consumption: You will develop many nice to have with a money that could have been used elsewhere.

The misuse of money shows how the methodology has perverse effects: It seems Agile, but the scaling effect has a critical anti-Agile effect. It pushes the teams with no real requirements to fill roadmaps with useless features: because your pace of delivery must be the same as the other streams, you have to find something to deliver.

In other words, whatever the size of teams, they will always be occupied 100%. I hope you have a lot of money to pay for all that.

## Problem #5: With SAFe, you master neither your scope, nor your planning, not even your budget

The tour-de-force of this method is that you master none of the traditional IT project parameters. Let's suppose you have a regulatory milestone to respect. In SAFe, *you are sure that you won't make it on time with the right scope*. It's not an accident: You will fail *by design*.

Let me explain. SAFe is by-design incapable of guaranteeing your scope. You can respond that Agile cannot guarantee the scope. True in theory, but wait a second. In a traditional environment, if I have a certain scope to deliver at a fixed date, I will:

* Make a global estimate of all the workloads in all my IT systems;
* Identify the critical path in order to create time margins or plan B scenarios;
* Reorganize momentarily my teams on order to concentrate my workforce on what needs to be deliver;
* Clean and reorganize my backlogs, pause certain application developments;
* Pilot in a close way the various pace of deliveries, integration and acceptance phases to get to the objective.

Indeed, I created a specific (big) projet composed by several subprojects. With a program manager and one good feet-to-the-ground enterprise architect, I can manage many complex topics like this one.

Seen from far away, what I propose may seem close to SAFe, but it isn't.

In SAFe, I will be blocked by my pace of deliveries (The PI is generally one trimester mong), and by the fact that all streams have a full roadmap. It will be very complex to just prioritize what is important because I will drown under the amount of tickets per stream and the amount of streams that are unrelated to my core issue. It will be very complicated to redeploy my workforce and to change the pace of delivery, all the structure will fight against me. So, at the end of the day, I will be bound to accept that a large percentage of my workforce is not working on what is important and that I won't have the required scope of the regulatory date.

In SAFe, end users learn to accept this "descoping" fate, and that's why so many, after a while, take a step back and say: "Guys, there's a problem. We did succeed in the past in such situation. Why with more money, more people, more time, we don't succeed anymore?"

## Problem #6 : SAFe is flourishing on fragmented IT systems

With SAFe, you are in a certain way *hard-coding* the software delivery organization: one Agile team per stream plus all the overhead resources that come on top, knowing that most of them will be administrative resources - which means, in IT language, with neither business understanding nor IT skills.

That means that, the more fragmented your IT systems (small tools inefficciently working together), the greater the SAFe pyramid.

Worst: By hardcoding your software organization, one team per badly scoped small application, you guarantee that you will never better your system. Everyone will continue in their silo and you will generate, with time, more and more interfaces. So, not only you will not reduce complexity, but you will increase it! That's what we could call an *organizational cancer*.

For sure, you need enterprise architects that are able to scope projects in which you reduce the complexity by better serving business processes.

Problem 6 : You will never innovate with SAFe

Considering the previous points, you can see that you hardcode your problems entering into a "super maintenance phase" where everything has the same weight because it is managed administratively.

So, you will never innovate, never reduce the complexity, and you will create silos that the dwellers will protect, like dogs in a niche.

Who likes SAFe?

Non-IT people like SAFe. Adminsitrative and procedural not business oriented people, people that are not responsible for budget spendings.

Most of the time after a while, the métiers learn to hate SAFe because they realize the methodology brings the 3 overheads (costs, delay, scope) and is not really steerable.

Who benefit from SAFe?

Financially, the IT service companies, and only them.

The other beneficiaries are the IT departments in which it is not stressful to manage a SAFe organization. Developers, scope, architecture, all that is far away, hidden by layers of administrative structure. Every project can be absorbed in a SAFe organization, split in parts and never really delivered, eveything becomes recurring costs and runs by itself, so don't need a lot of management.



## UML at the source of inconsistency thinking?

RUP was using extensively [UML](https://en.wikipedia.org/wiki/Unified_Modeling_Language). The biggest problem of UML is a consistency problem. As a modeling language, UML brings several kinds of diagrams to represent several kinds of aspects of the software. For each diagram type, you have a *grammar* with a certain semantics. As those diagrams are not *connectable*, each one being in its own *space* (structural, behavior, state machine, etc.), it is easy to build an inconsistent software model that will lead to crappy software. In a certain way, the consistency work has to be done by the designer/developer himself, and so UML helped a lot good designers/developers to model complex problems.

In the 2000s, tools like Rational Rose were developed to overcome the UML drawbacks, tools trying to connect the various artifacts of the diagrams and check for a little consistency. But as the semantics of those models was really different, those efforts were not very successful.

UML has the same problems as the [Zachman framework](https://en.wikipedia.org/wiki/Zachman_Framework) or the [military frameworks](mbse-vs-ea.md) in the enterprise architecture world: They propose an inconsistent view of the reality built upon multiple viewpoints with different semantics (sometimes even *overlapping* semantics but not interconnected semantics, see [graph-oriented programming](https://orey.github.io/papers/articles/first-article) for a vision of interconnected semantic domains).

About the Zachman Framework, Wikipedia says it *is a structured tool used in enterprise architecture to organize and understand complex business systems. It acts as an ontology, providing a clear and formal way to describe an enterprise through a two-dimensional grid.* The fact is this is false. It proposes 30 disconnected ontologies with semantic overlaps, like UML, and like the other frameworks used by the military programs.

The consequence, for us, is that there is a generation of methodology people that, in IT, have a structural problem to understand that the juxtaposition of various viewpoints does not make a consistent representation.

SAFe can be interpreted as being in line with this kind of thought patterns. Taken individually, some elements seem pertinent, but as a whole, they are creating an inconsistent edifice.

