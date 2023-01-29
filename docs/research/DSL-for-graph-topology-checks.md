# A DSL for checking the topology of the graph before transforming it

## Two kinds of graph transformations (GT)

  * GTs that start with a root node.
  * GTs that aim at making several modifications in the graph (generally using pattern matching expressions).
  
We are focused on the first kind of GT.

## A DSL to chack the topology

It is possible to create a DSL to check the basic applicability of a GT. The DSL can propose a set of primitives to make assertions on the graph, typically seen as starting at a certain root node (so we have an artefact for root node, let's says it is "root").

For instance `root:A -[:]-> :B -[:R]-> :C` means that the root node which is an instance of A should be connected through whatever relationship to an instance of B which is connected by a relationship of type R to an instance of C.

This syntax is inspired by [Open Cypher](http://www.opencypher.org/ "open cypher").

In this DSL, it is possible to express complex checks like:

```
ASSERT {
    ( RN:A -[:]-> x:B -[:R]-> :C )
    AND (
        ( x:B -[NOT]-> :D) OR
        ( (x:B <-[:]- y:E) AND ( y.att12 == 'foo') )
    )
}
```

The DSL could not manage:

  * Variables,
  * Attribute value checks.
  
It would be a pure graph structure analysis.

But, even if the topology conditions are met, if the DSL is too simple, we have to recode the graph navigation in the GT in order, for instance, to make a check on the instance of C.

## Advantages and drawbacks

This DSL works. However, I am not entirely satisfied about it, in the same way that I am not completely satisfied about the rules description in general.

Being a kind of pseudo-code (even if more generic), the DSL:

  * Is a sort of new programming language;
  * The frontier between what we express in this DSL and what must be in the code is vague;
  * The topology checks are often depending on complex business conditions, which means that in real code, you may have topology conditions that you must code manually and that we cannot express really by this DSL.

So, the DSL is reduced to a kind of "helper" that is addressing many cases in simple applications (or let's say in applications where the rules are simple), but cannot be used as a new "structural way of coding" graph transformations.

## Limitations

This limitation opens the problem of theoretical check of GT applicabilities in case of GT forks (see [the fork concept](https://orey.github.io/papers/graph/staf-icgt2018/).

