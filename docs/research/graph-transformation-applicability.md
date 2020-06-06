# Graph transformation applicability

The note [about the DSL](DSL-for-graph-topology-checks.md) opens the problem of GT applicability. This is a theoretical problem but rather interesting.

We are in the context of GTs that are attached to root nodes.

## Dictionary of applicable GTs per type

It is possible to record in a dictionary the list of GTs applicable from a certain root node type. Once recorded, we can find the rules that enable to determine if each of the GT, that is potentially applicable is really applicable.

## Position of the applicability code

When a GT is created and then forked, we can consider we have 2 versions of the GT: `GTv1` and `GTv2` for instance. `GTv1` will be at the beginning applicable forever until it is forked.

There seem to be 3 cases:

  * The forking of the GT is necessary when there is a topological change, and in that case, the `GTv2` will not apply to the samle topology than `GTv1`. In a way, the applicability information is encoded into the graph topology itself.
  * There are unfortunately many cases where `GTv2` exists because the rule changes but not the topology. We identified this case as being difficult, because there is no real standard rule to decide if we had to fork or not. If we did, the 2 versions of the GT may apply at the same time, if we consider their topology checks only (that are the same in that case). The 2 cases are the following:
    * We encode the applicability knowledge into the GT,
	* Or we encode the applicability knowledge outside the GT.
	
The first case will require a possible modification of the `GTv1` when `GTv2` appears, because it will need to chack its version or a certain date of applicability from which it becomes not applicable.

In the second case, we can imagine a controler that knows what rule to apply considering, for instance, the age of data we are looking for. In that case, that would be, for instance, the age of the root node that would be a good first indicator to determine what version is applicable.

## Heterogeneous encoding of knowledge

The core problem of the graph-oriented programming works was the placement of the rules in transient structures representing the graph. Here also, we have the same problem. It is not easy to encode a certain knowledge right inside the various artifacts that we have. Quite often, this is a design choice, which implies that we cannot find a rule that answers to all cases. 

Knowledge adequate/optimized/relevant encoding is very complex.

Maybe the GT should be analyzed in semantic graphs that are simpler than directed multi-labeled graphs.
