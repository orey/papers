# Why I don't like SAFe

![safe_blackhole](../images/safe-blackhole.png)

We need methods in IT like in any other engineering disciplines. But there are good and bad methods.

I would like, in this article, to show how the SAFe methodology, that is unfortunately trendy in France (I'll come back to the why) is damaging the IT systems and limiting the productivity and innovation of many companies.

It may be seen as attacking an idol, but people have to realize there are better ways.

## Origin of Rational Unified Process (RUP)

SAFe has its origin in RUP, another enormous useless methodology. The roots of RUP trace back to the merger of the Objectory AB (founded by Ivar Jacobson) and Rational Software Corporation in the mid-1990s. In June 1998, Rational publishes the Rational Unified Process (RUP) version 5.0.

![../images/RUP1999.jpeg](../images/RUP1999.jpeg)

RUP was developed by a team at Rational (including Philippe Kruchten) and incorporated use-cases, UML, and iterative development practices. It was a very heavyweight process framework (nine disciplines, roles, artifacts, workflows) tailored theoretically for large systems and heavy modeling.

Quickly, the software ecosystem observed that RUP was overly complex, documentation heavy and not efficient. In other terms, the market did not adopt it.

## Origin of SAFe

SAFe was developed by Dean Leffingwell (and collaborators) and first publicly described around 2011. The framework draws on lean-agile, systems thinking, and agile development practices.

It was positioned as a solution to "scaling agile" practices across the enterprise (many teams, large programs) rather than single-team agile.

## Linkage between RUP and SAFe

Leffingwell’s earlier works include large-scale systems engineering and process frameworks, including RUP. Indeed, similar defaults that were rejected by the whole IT community in RUP can be found in SAFe.

We are now detailing the points that seem to us the most problematic.

## The dimensions of IT project management

In order to be able to discuss about the problems caused by SAFe, we need to make a little background on the basics of IT project management.

An IT project has 4 characteristics:

* A scope,
* A workload in men-days 



## Problem #1: SAFe is hiding project dependencies

Before SAFe, to succeed in a complex project, you needed 2 key skills:

* A program manager, able to manage a set of interlinked projects,
* An enterprise architect, knowing the IT landscape and the functional/technical dependencies between applications and project scopes.

Those two persons had to work hand in hand: The program manager was gathering the dependencies highlighted by the architect and was creating milestones of synchronization where necessary. The target was to determine *who* was delivering *what* to *whom* and *when*.

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


