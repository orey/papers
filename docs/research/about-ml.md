# Reflections on artificial neural networks and machine learning

![Photo of a toy robot from the 50s](../images/robot.jpg)

*Photo by [oliver brandt](https://freeimages.com/photographer/ollinger-36628) from [FreeImages](https://freeimages.com)*

Machine learning based on artificial neural networks attracted much attention and credits those last decades (after a long "winter of AI") up to the point that, boosted by marketing, an anti-scientific approach is sold as being the solution to all problems.

In this article, we will try to recall the simple mathematical foundation behind artificial neural networks, and why this technology is not reliable, even if it attracks massive investments. We will also analyze the philosophical side of the neural networks.

Note: We will focus on supervised learning artificial neural networks and  will not talk now about other variants such as unsupervised learning.

## What is a neural network?

Basically, an artificial neural network is:

* A mathematical function `f` of several variable;
* A complex function construction algorithm:
    * Using a representation of neurons and axons that was used to create the function `f`,
    * Based on a list of inputs of the form (x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub>), matching with outputs of the form (y<sub>1</sub>, y<sub>2</sub>, ..., y<sub>p</sub>).

![Image of a neural network](../yed/ann.png)

*Figure 1: A simple artificial neural network*

The Figure 1 shows a sample of an artificial neural network.

There are many techniques to build the function `f`, hence the variety of machine learning algorithms.

## An interpolation function

Let us go a bit more into the details. Let us note :

> X<sub>k</sub> = (x<sub>k1</sub>, x<sub>k2</sub>, ..., x<sub>kn</sub>)

> And Y<sub>m</sub> = (y<sub>m1</sub>, y<sub>m2</sub>, ..., y<sub>mp</sub>).

Let us suppose we have a set of known inputs and related known outputs, (X<sub>k</sub>, Y<sub>m</sub>) for (k,m) known.

Considering a predefined neural network with nodes and edges in layers, we can use an algorithm to define characteristics of nodes and edges so that we define a function `f` like following:

> f : D<sub>1</sub> x D<sub>2</sub> x ... X D<sub>n</sub> &rarr; R<sub>1</sub> x R<sub>2</sub> x ... x R<sub>p</sub>

> (x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub>) &rarr; (y<sub>1</sub>, y<sub>2</sub>, ..., y<sub>p</sub>)

To create this function, the algorithm used tried, more of less, to satisfy the following hypothesis:

> f(X<sub>k</sub>) = Y<sub>m</sub>

This process is called "training the network".

The resulting function `f` is an *interpolation* function, defined by an algorithm. Once defined, `f` is a function of many variables that has the following characteristics:

* It is probable that f(X<sub>k</sub>) = Y<sub>m</sub> or | f(X<sub>k</sub>) - Y<sub>m</sub> | < &epsi; with "|" a norm in the R<sub>1</sub> x R<sub>2</sub> x ... x R<sub>p</sub> space;
* The determined global function is not globally mathematically known, which implies it can have singular points, often called "potential wells".

## An interpolation function working in extrapolation mode

The idea of neural networks is to assume that `f` is a continuous function at least in the neighborhood of the known hyper-points X<sub>i</sub>. That means that:

> If we take X<sub>i</sub> so that | X<sub>k</sub> - X<sub>i</sub> | < &epsi;

> Then | f(X<sub>k</sub>) - f(X<sub>i</sub>) | < &epsi;'

Said differently, any point in the neighborhood of X<sub>k</sub> will have its image by `f` in the neighborhood of f(X<sub>k</sub>).

When `f` matches this assertion, we can use `f` as an extrapolation function and consider that its evaluation on X<sub>i</sub> is valid.

The problem is that we have no ways of *knowing* that `f` is really continuous in a neighborhood of an hyper-point.

Let us consider the Figure 2.

![Alt text](../images/potential-well.gif)

*Figure 2: Two potential wells in a surface. Image from [wired.com](https://www.wired.com/wp-content/uploads/2014/06/63-plaster-logarithmics.gif)*

The Figure 2 is an artist representation of two singularities in a 3D curve:

* One where `z` tends to +&infin;,
* One where `z` tends to -&infin;.

That means, for the first singularity, that we have the following situation:

> For a X<sub>i</sub> so that | X<sub>k</sub> - X<sub>i</sub> | < &epsi;

> | f(X<sub>k</sub>) - f(X<sub>i</sub>) | >> &epsi;'

The presence of potential wells in neural networks was a well known phenomenon in the 80s, and one of the reasons of the AI winter. Because neural networks were considered as non reliable "by construction", those techniques were temporarily abandoned.

Mathematically speaking, the situation is quite simple: An interpolation function should not be used as an extrapolation function.

## Big data and processing power

The development and explosion of machine learning beginning of the 2000s was funded on new beliefs that overpass the previous arguments and mathematical reality.

The first idea (which is an engineer's idea) is that if we have a huge number of data (i.e. a lot of couples of the form (X<sub>k</sub>, Y<sub>m</sub>)) to feed the algorithm, we will be able to generate many hyper-points in the `f` hyper-surface.

This will imply that the `f` function will be more "dense" in R<sub>1</sub> x R<sub>2</sub> x ... x R<sub>p</sub> and so we will "reduce" the risk of potential well.

This idea is, from an engineering standpoint, of good sense, but mathematically, being able to generate one thousand points or one billion points will not change the mathematical reality of potential wells, especially when we talk about functions of many variables.

Let's take the example of the image classifier. First of all, we have to create a program to "encode" whatever image in the X<sub>k</sub> form. Then, in supervised learning, we will associate to an image representation X<sub>k</sub> a value Y<sub>m</sub> representing the result, for instance a number. Let us suppose the number is `12` and it represents the banana.

The `f` function that will be generated by the algorithm will be the result of "training" of many images associated with the result we expect. Then, when a new image will come, we will transform if into a X<sub>i</sub>, *hoping* that f(X<sub>i</sub>) will be meaningful.

![Image: The chain of image recognition](../yed/encoding.png)

<a name="Figure3"></a>*Figure 3: The chain of image recognition*

The fact is, it is a hope. What is funny is that *it works* in many cases. And when it doesn't, some various techniques are existing to try to make it work anyway.

We can note that, in that process, the encoding function may be quite important. In a certain way, it can hide a structural analysis of the problem, as it is representing the reality.

## But the banana disappears...

![Image: The banana experiment](../images/banana.png)

<a name="Figure4"></a>**Figure 4: The banana disappears. Taken from [Brown et al. 2017](https://arxiv.org/pdf/1712.09665.pdf)*

Without any surprise, Brown et al. demonstrated in their [article](https://arxiv.org/pdf/1712.09665.pdf) *Adversarial patch* (see Figure 4) that it was possible to mislead a neural network training to recognize some images. It may be even worse, because they claim it is possible to structurally mislead all neural networks that were used as image classifiers.

For us, despite the interest of the article, we are only rediscovering the structural mathematical problem of this technique.

See also our [note on encoder](#note1).

## New beliefs brought by the machine learning era

The machine learning trend brought new beliefs among IT people, some of them being totally the opposite of the usual computer science paradigm. We will list some of them.

## Belief 1: Big data and brute force can solve mathematical problems

This a way to reformulate the big data belief: If we inject billions of images to create an image classifier with an artificial neural network, we will overcome the mathematical problem. For sure, to be able to do that, we need an enormous processing power.

We saw that this approach was not working.

Without despising engineering (the author himself is an engineer ;), we see here an engineering reasoning: find all recipes to *make it work* for the maximum number of cases. Unfortunately, mathematics cannot be overcome by brute force.

Another issue that we see with big data is that no data set is completely neutral. Data sets are coming from somewhere and they have inherent bias attached to them. This is natural when we consider [the real nature of data](../articles/data-interop.md). data is an output product that is the result of the intersection of a semantic field, business rules and use cases.

## Belief 2: Programs can make mistakes like humans

The second idea (also an engineer's idea) is to say that *better have the neural network than nothing*. At least, "most of the time", the extrapolation does work and provides relevant results.

That is a fundamental regression compared to the objectives that computer science targeted from the beginning of the discipline. Computers, as they were automating human tasks were trustable because they were exact. In a certain sense, we can delegate tasks to computers *provided* they make no mistake and we can trust them, better than if the tasks were performed by humans.

We even created the notion of "bug" to name a problem to be fixed in a program, for the computer to to exact, and so reliable.

The argumentation is that, as humans make mistakes, it is acceptable that computers do too...

If computer make errors in a structural way (which is the case of artificial neural networks), we change the complete computer science paradigm.

Computers could be at the source of serious administrative mistakes, medical mistakes, justice mistakes... Even is statistically, those mistakes happen 1% of the time, how to trust computer programs anymore?

If we accept to generalize techniques that make errors, we enter into a non certain world, that looks like the Brazil movie.

## Belief 3: The marvelous ubiquitous set of tools for functionally unskilled people

In the hype of machine learning, another element is crucial. It is possible to learn the data crunching techniques *separately* from any other functional knowledge, and to pretend being able to apply them to whatever functional domain. In a sense, machine learning is the *ubiquitous set of tools*.

More: We don't need to be functionally skilled, meaning *in the business area where we do data science*. Our skills in machine learning will be enough.

## Belief 4: Finding meaning in data without knowing the business domain

We tried to explain, in our article [the real nature of data](../articles/data-interop.md), why data was a complex *output product*, result of the intersection of a semantic domain, some business rules and some use cases.

With machine learning, we take a reverse approach: Data becomes the *input* and you are suppose to be able to "discover" things from it, with generic tools, without, most of the time realizing those tools have limitations.

In the case where the analyzed data are the fruit of a highly semantically standardized business domain (which is the case in many areas where the regulator or standards structured a particular business domain like accounting, aerospace, travel, etc.), machine learning can "rediscover" elements of this underlying structure, feeding the illusion that it found sense in data.

For sure, the reasoning is bad: Data was, at the beginning, the fruit of a structured and standardized business, and machine learning will just find back some dimensions already present in the data in the first place. Generally, those discovery will established very challenge-able correlations that can be analyzed as relevant or not, only by the ones knowing the business domain.

## Belief 5: The average wins

If we need billions of data to determine an interpolation function, we will create an interpolation function with a good score on the particular data that were used for the training. But that phenomenon will have an "averaging" effect. Indeed, statistically, the interpolation function can be quite efficient on many data but maybe not so efficient on marginal data.

In a certain way, the model could erase the specificity and the particular cases. If some singular points are clearly errors of the algorithm itself, we risk creating the reverse phenomenon: Erase the margin cases under billions of average cases.

## Philosophical aspects on science

The scientific method is what built the technical foundations of our world. Science is a method and is aiming at being exact or at mastering the margin of error.

Science always took the same approach:

* First, we observe the reality as it is;
* Second, we try to model what is, with laws and operational models implementing those laws;
* Third, we iterate, comparing the laws of our model to the reality and aligning our laws to it. In that process, we are able to measure the differences between our laws and the reality, and put some quantifier in them.

Neural networks are a complete perversion of the scientific method because:

* To create the magic interpolation function, machine learning takes as "reality" a set of data, which are output products as we saw.
* There is no intelligent construction of a operational model based on laws. Instead, a generic approach is taken to determine an operative function, without thinking of a law or without understanding why the function should be as it is. In a certain way, the model is "hidden" inside the interpolation function.
* The iterative process is not perfecting a model, because this model is hidden. Indeed, if we want to reconsider the model, we have to re-do the full process of training (interpolation function determination) with a bigger data set, data set containing the new samples that probably were badly treated or recognized in the first attempts.
* When the model is wrong, there is no real possibility of estimation: How often is it wrong? To what extent? We cannot say. And, as the process of creating the interpolation function is based on data, who knows if introducing new data will not create a completely different interpolation function that does not have the same qualities or the same drawbacks that the one previously generated. In a certain way, the model being data-driven, there is no possibility of enhancing its fundamental laws.

So, machine learning is like Canada Dry: It looks like science, it says it is science, it claims many usages in many domains, which is true and really frightening, but machine learning is absolutely not science.

There is no understanding on what's going on at all. There is no progress of science. On the contrary, by taking output products as input products, we can be in incredibly absurd situations.

A good image would be to try to understand how Emacs works on a PC with all the data of all electrical currents in a computer. Data are an output product, and they were generated in a very specific semantic context with very specific business rules.

In a way, machine learning is nearer from the magical thinking than from science.

## Conclusion

Machine learning is a technique that must be used with caution for all the points that we have detailed in this article.

Data being output products, they embed a lot of semantic prerequisites, or in their structure or in their values. It would be probably much more efficient to work on the semantic modeling of data, to interpret a certain set of data based on their semantic content and then reason on those data with logical paradigms.

But relying on machine learning may only provide quick wins in some cases, with the everlasting risk of being completely wrong, without having a real technique to better things.

-----

## Note on image encoder

<a name="note1"></a>One interesting question that we can ask considering the [article of Brown et al.](https://arxiv.org/pdf/1712.09665.pdf) is: Is the second image with the sticker in the "neighborhood" of the first one?

We can see, asking this question, that the very notion of "neighborhood" seems not defined in the "space of images". This is normal because we are entering the world of mathematics and function building *only after the encoding of the image* (see [Figure 3](#Figure3)). Indeed, the notion of neighborhood is only defined in the space of (X<sub>i</sub>) which are the results of the encoding of the images. We need to define a mathematical notion of topology in the space of images.

This problem is currently addressed by various techniques of image labelling, decomposing the image in parts.

We see that, in order to make the function more relevant, we tend to add complex pre-processing based on business rules and possibly complex post-processing based also on business rules. The neural network part is decreased at the benefit of more traditional approaches.

*(Last update: August 2021)*