# Basic graph transformations

This page is written in the context of multi-labeled nodes as they are implemented in standard graph databases.

## Node structure

Basic Python structure features:

  * Id with __hash__ and __eq__ function
  * Type
  * Domain
  * Attributes are in a dictionary (real implementation of the multi-labelled graph, knowing that it is also the way Neo represents it)

Questions:

  * Link to a grammar or not
  * Position semantics (in the case for instance we unserialize elements in a CSV file in which the line number is important relatively to the previous or the next one)

## Relationship

  * Attributes dictionary also

To be thought through: a graph based on arrays of neighborhood may be sufficient

## Graph

Node dictionary -> Neighbors dictionary -> Dictionary of attribute links

## Unitary GTs

GT have two modes:

  * Destructive mode
  * Copy mode

Gt1: filter
Remove void attributes/columns

Gt2: a column is a type
Change the type and remove the attribute

Gt3: foreign key column
Remove attribute and create a link

Gt4: references hidden in a label
Remove attribute and create a link

Gt5 : references hidden towards a concept that does not exist

Gt6 : link in the past PREVIOUS

## GT Interface

```
graph, rootnode, options = GT(graph, rootnode, options)
```

`rootnode` is in the graph

```
options = {key : value, etc.}
```

For instance:

  * `Gt1 (graph, None, { "pattern" : "01001110"})`
  * `Gt1 (graph, root, { "depth" : 3, "pattern" : "0100110"})`

GT can forward parameters such as:

```
CloneGt(None, root, params)
Gt6(None, root, params) -> None, root, params
clonegt(Gt6) -> None, root, params
```

By forwarding the rest, we can compose GTs.

Edited: better interface

```
graph2, rootnode2 = GT1(graph1, rootnode1, options1)
graph3, rootnode3 = GT2(*GT1(graph1, rootnode1, options1), option2)

```

This enables to set the options at each stage. For sure, depending on the case, the `graph` or the `rootnode` may be `None`.

Flexible interface:

  * `Graph, None` => Enables to address all nodes issues
  * `Graph, root` => Considers the graph from the root, meaning, we can request any node or relationship in the graph in complement than accessing the graph through the root node
  * `None, root` => Or we consider a GT only touching the node, or the GT will access the graph through the root node only.

## Questions

  * Deal with subgraphs?


