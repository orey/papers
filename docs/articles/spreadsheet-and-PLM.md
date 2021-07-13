# The four core functions showing a need for PLM

![Four](../images/four.jpg)

Photo by [Nick Fewings](https://unsplash.com/@jannerboy62?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/photos/apdqPYw3z0s)

This article is the third one of a series about PLM, after [PLM and Graph Data](about-plm.md) and [Configuration management of industrial products in PDM/PLM](conf-mgt.md).

This article begins with spreadsheets, numerous, ubiquitous spreadsheets that seem to rule many manufacturing process, all along the product lifecycle, from engineering to manufacturing and support.

Contrary to the tertiary sector where many areas that were using spreadsheets got out of them to use software applications (specific development or off-the-shelf software), it seems difficult, in some areas, to get out of spreadsheets.

In our last two articles on PLM, we explained why the manufacturing area had a special vision of data, special versus the tertiary sector. In a certain way, in manufacturing, all data seem to be managed as the tertiary sector referential data. This vision of data makes it complicated to replace many spreadsheet-based processes because the underlying requirements are more complex than they appear to be in the first place.

## 1. Versioning of business objects

Indeed, even if this function is often done manually by renaming spreadsheets with a version number, the real need that we can see is a versioning of the business object instances that are contained in the spreadsheet.

The business objects can come from various processes of the product lifecyle:

* *System engineering and early maintenance engineering*: Requirements, operational conditions, probability of failure, system, function, connector, trade-off, logical block, etc.
* *Detailed design*: Part, assembly, drawing, 3D, document, standard part, tolerances, change, applicability, compatibility, build, etc.
* *Simulation*: Test scenario, test campaign, business object composing the input data or the output data, configurations, etc.
* *Assembly preparation*: Routing, instruction, part, elementary action, sequence, balancing information, resource, tool, duration, etc.
* *Assembly*: Work order, part, resource, supplier, stock, quantity, tool, station, skills, clocking, warehouse, etc.
* *Maintenance*: Maintenance plan, documentation, data module, spare part list, work order, task, frequency, threshold, cycle, tool, skills, duration, etc.
* Etc.

Most of the time, some PDM/PLM tools manage the detailed design of the product because the 3D models have to be managed in a central place in order to be the bridge between engineering, manufacturing and support. But outside of those expensive and heavy software, we enter the world of spreadsheets.

Versioning of data is the first fundamental function that many spreadsheet users need. Because the business objects that they manipulate evolve in versions, they have to keep track of those versions, even if doing that in a spreadsheet is often a very manual process.

We have to not that, most of the time in the industry, a business object may have many data attached, each of them being the responsibility of a specific actor.

Let's take an example: A part is a business object that will exist in many systems in many states at the same time. It will be manipulated by many people from many organizations at certain moments of the product lifecycle.

## 2. Change process

When a business object change versions, it is often mandatory to track several elements:

* Why the change was done?
* By whom?
* Who validated the change?

The first question is becoming more and more important in the industry. Because, if the "why" is not captured, future modification to the product may violate some hypothesis done during the design. When a product evolves, it can be very useful to track back the reasons of certain modifications, especially the cases that were explored and that did not work.

Each data, potentially each field of a business object, has at least one owner which is a role in the organization. This owner is able to modify the value of the particular filed of the particular business object. In a good data governance environment, the various roles and defined.

The third element is the process of validation of the change: If there is a change, one or several roles in the organizations are here to validate that the change should be done. This must also be tracked because some responsibilities are involved.

In most evolving spreadsheets, a kind of manual change process was put in place to secure the main reasons of changes and possible the decisions taken by the "approvers". This part is often badly done in a spreadsheet environment because it is hard to track if the data manipulated are big.

## 3. Collaboration

As we saw, a business object can be shared by several roles. Even if only one people is able to modify the spreadsheet at a certain moment, this person will be bound to meet with many people to gather all the information, or to exchange many mails to consolidate information coming from many actors.

This collaboration process is generally hidden. Indeed, it is very easy to assign the task of maintaining the spreadsheet to a person and to let the person do what's need to be done to gather all information and keep them up to date.

But the real need would probably be that all involved persons update directly the data in an appropriate place.

## 4. Configuration management

Generally, in spreadsheets this functionality is basic and represented by a column with multiple value, typically:

* Applicable to case 1,
* Applicable to case 2,
* Etc.
* Applicable to all cases.

For sure, those indicators can become quite complex in complex spreadsheets with macros. As we explained in the article about [configuration management in PLMs](conf-mgt.md), the manufacturing area needs to manage more or less complex configurations.

Most of time, in spreadsheets managing some aspect of the lifecycle of some business objects, there is a notion of configuration management implemented in the data.

## A common anti-pattern: Replacing the spreadsheet by a website

If the industrial area can reuse the same approaches used in the tertiary sector for some processes, there are many cases where the basic solutions of the tertiary sector are not applicable.

A classic anti-pattern is the one of the website. The person in charge of the spreadsheet has troubles maintening it















