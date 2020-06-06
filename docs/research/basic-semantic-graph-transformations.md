# Basic semantic graph transformations

This page is following [Basic graph transformations](basic-graph-transformations.md) but with a semantic graph perspective.

## Rich/poor level of information

A single triple is a "poor piece of information", but other triples with the same subjects can build a rich set of information.

Poor piece of information: `s p o .`

Rich piece of information:

```
s p o ;
  a S .
o a O .
```

## Time management

Rich piece of information: adding time information:

```
s p_23DEC2018 o ;
  a S .
o a O .
p_23DEC2018 a P .
P a Time_Predicate .
```

This is practical because `s P o .` can be deduced easily even if `s p_23DEC2018 o .` is more precise.

The statement `P a Time-Predicate .` indicates that P is a time-enabled predicate.

## Version management

We can have a variation of what we saw with version tagging.

```
s p_V2 o ;
  a S .
o a O .
p_V2 a P .
P a Version_Predicate .
```

## Managing life-cycle

Case of subject modification and history keeping.

Step 1. We have:

```
s1 p o .
```

Step 2: s1 becomes s2. We have:

```
s1 p o .
s2 previous s1 .
s2 p o . // "Rewiring"
```

This is ambiguous because the 3rd statement was made after the first. Let's use a time predicate.

```
s1 p_12DEC2018 o .
p_12DEC2018 a P .
P a Time_Predicate .
s2 previous s1 .
s2 p_23DEC2018 o . // "Rewiring"
p_23DEC2018 a P .
```

We can look at the graph at various moments.

Indeed, we still have:

```
s1 P o .
s2 previous s1 .
s2 P o . // "Rewiring"
```

But we also encoded a more precise information.

We could think about removing `s1 p o .` after `s2` is created but as the semantic web is a cumulative system, this does not seem very interesting.

## Shortcuts

Let's consider the pattern:

```
q = p(1) o p(2) o ... o p(n)
```

with `p(i)` a set of predicates.

```
s q a .
if
x(n) p(n) a .
and x(n-1) p(n-1) x(n) .
and ..
and s p(1) x(2) . 
```

`q` id just a new "predicate name".

This can be very useful to present the same reality in another perspective/point of view.

## Filters
 
If we have: `s p o ; q a .`

We can define a subgraph by "removing" the  `q`  predicate:

```
graph(s , depth=1) \ {q} => s p o .
```

## Classical inferences

The use of classical inferences is very important also.

## Temporal inferences

If we have:

```
s p(t1) a .
s p(t2) b .
p(t1) a P .
p(t2) a P .
P a Time_Predicate .
```

and a and b were not existing before the predicates were created, we could deduce:

```
a before b .
```

Not sure it is useful.

Simpler like that:

```
a2 previous a1 .
a3 previous a2 .
=> a3 previous a1 .
```

Some predicates can have special transitivity features.

## Special predicates

  * Transitive predicates: `a r b .` and `b r c .` => `a r c .` 
  * Commutative predicates: `a r b .` => `b r a .`
  * Semantic inversion (very used in Owl): `p` is the inverse of `r`, so if `a r b .` => `b p a .`

## To do

  * Re-analyze the list notion in the RDF standard
  * Re-analyze the Gruf temporal display
  * Formalization of grammar in table parsing => grammar being a semantic graph
  * List graph transformations in Sparql-like

