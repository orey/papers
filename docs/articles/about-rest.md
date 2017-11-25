# Considerations About Rest And Web Services

It's been a very long time since I've been explaining this to a lot of people and maybe today I should try to put the full explanation on paper.

## A Bit Of History

When the REST concept was published, sometimes around 2001, I was in a middleware team in a big software company. In that team, we were accustomed to use business services for more than a decade.

Indeed, the term "web service" or "SOA" was not existing at the time. But, in many business domains such as airline commercial business, banking, insurance, etc., many people knew what was RPC and were using it extensively to communicate between systems.

RPC means Remote Procedure Call. RPC concept was introduced to me with the DCE \([Distributed Computing Environment](http://pubs.opengroup.org/onlinepubs/9629399/)\). DCE was a very powerful standard that were never completely used, as far as I know, but it explained in great details the basis of interoperability between systems. For sure, the standard was only making a synthesis of ideas that were much older.

## What Is RPC?

Fundamentally RPC is, like it is said in its name, a remote procedure call.

To understand the concept, let's imagine 2 programs that want to communicate, first program being A and second being B. B will publish an API in order to be called. In most procedural programming languages \(like C\), if the two programs are located on the same machine, A can call the API of B \(see the top of Figure 1\).

![](../yed/RPC.png)Figure 1: Local Procedure Call and Remote Procedure Call

The idea of interoperability in RPC is that, if B is located in a remote machine \(or a remote process\), B should not change when invoked by A. On the other side, A should not change in its invocation of B interface. So A will call a B interface locally to its system, this interface hiding a client stub that will wrap/serialize data in a certain format to be sent on the wire; on the machine hosting B, there will be a server stub unwraping/unserializing data to call locally the B interface.

For sure, in order to work in a complex network, the message sent from A will have to fond is route to the machine hosting B. We have here all the elements of the client-server architecture.

## The Notion Of "Verb"

Well, RPC is a bit more than that. Because, when calling a remote procedure \(or function\), semantically, we call a remote system asking it to do something \(the B API\) with the input data that we provide \(the request\). We expect data back \(the response\).

This is/was called a "verb". A says to B: "perform B-interface contract with my input data and give me back the contract expected output data".

Trends passed on many parameters:

* The protocols used changed,

* The addressing schemes changed,

* The format of the data changed \(from many proprietary formats or Edifact, to XML to JSON\).

But the fact is, in most businesses proposing a certain degree of business complexity, RPC is still there. Most often, verbs are expressing an "action" semantic and requests are proposing data trees, so as responses.

## The Corba Failed Attempt

In the 90s, the objet-oriented programming (OOP) being trendy, the intention behind [Corba](https://en.wikipedia.org/wiki/Common_Object_Request_Broker_Architecture) was born. The idea was to generalize the object notions to a distributed world. The logic consequence was to imagine a client-server protocol for objects to communicate between one another.

The principle is simple: an object `A` calls locally a method `m` on an object `B`. If we imagine the `B` instance as being remote,


[To be continued]


