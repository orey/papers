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

## New beliefs and arguments: Big data and processing power

The development and explosion of machine learning beginning of the 2000s was funded on new beliefs that overpass the previous arguments and mathematical reality.

The first idea (which is an engineer's idea) is that if we have a huge number of data (i.e. a lot of couples of the form (X<sub>k</sub>, Y<sub>m</sub>)) to feed the algorithm, we will be able to generate many hyper-points in the `f` hyper-surface.

This will imply that the `f` function will be more "dense" in R<sub>1</sub> x R<sub>2</sub> x ... x R<sub>p</sub> and so we will "reduce" the risk of potential well.

This idea is, from an engineering standpoint, of good sense, but mathematically, being able to generate one thousand points or one billion points will not change the mathematical reality of potential wells, especially when we talk about functions of many variables.

Let's take the example of the image classifier. First of all, we have to create a program to "encode" whatever image in the X<sub>k</sub> form. Then, in supervised learning, we will associate to an image representation X<sub>k</sub> a value Y<sub>m</sub> representing the result, for instance a number. Let us suppose the number is `12` and it represents the banana.

The `f` function that will be generated by the algorithm will be the result of "training" of many images associated with the result we expect. Then, when a new image will come, we will transform if into a X<sub>i</sub>, *hoping* that f(X<sub>i</sub>) will be meaningful.

![Image: The chain of image recognition](../yed/encoding.png)

*Figure 3: The banana disappears. Taken from [Brown et al. 2017](https://arxiv.org/pdf/1712.09665.pdf)*

The fact is, it is a hope. What is funny is that *it works* in many cases. And when it doesn't, some various techniques are existing to try to make it work anyway.

We can note that, in that process, the encoding function may be quite important. In a certain way, it can hide a structural analysis of the problem, as it is representing the reality.

## But the banana disappears...

![Image: The banana experiment](../images/banana.png)

*Figure 4: The banana disappears. Taken from [Brown et al. 2017](https://arxiv.org/pdf/1712.09665.pdf)*

Without any surprise, Brown et al. demonstrated in their [article](https://arxiv.org/pdf/1712.09665.pdf) *Adversarial patch* (see Figure 4) that it was possible to mislead a neural network training to recognize some images. It may be even worse, because they claim it is possible to structurally mislead all neural networks that were used as image classifiers.

For us, despite the interest of the article, we are only rediscovering the structural mathematical problem of this technique.

## New beliefs contradicting the scientific method

The scientific method is what built the technical foundations of our world. Science is a method and is aiming at being exact or at mastering the margin of error. With machine learning, the scientific is completely violated.

### Belief 1: Big data and brute force can solve mathematical problems

This a way to reformulate the big data belief: If we inject billions of images to create an image classifier with an artificial neural network, we will overcome the mathematical problem. For sure, to be able to do that, we need an enormous processing power.

We saw that this approach was not working.

Without despising engineering (the author himself is an engineer ;), we see here an engineering reasoning: find all recipes to *make it work* for the maximum number of cases. Unfortunately, mathematics cannot be solved by brute force.

Another issue that we see with big data is that no data set is completely neutral. Data sets are coming from somewhere and they have inherent bias attached to them. This is natural when we consider [the real nature of data](../articles/data-interop.md).

### Belief 2: Programs can make mistakes like humans

The second idea (also an engineer's idea) is to say that *better have the neural network than nothing*. At least, "most of the time", the extrapolation does work and provides relevant results.

That is a fundamental regression compared to the objectives that computer science targeted from the beginning of the discipline. Computers, as they were automating human tasks were trustable because they were exact. In a certain sense, we can delegate tasks to computers *provided* they make no mistake and we can trust them, better than if the tasks were performed by humans.

We even created the notion of "bug" to name a problem to be fixed in a program, for the computer to to exact, and so reliable.

The argumentation is that, as humans make mistakes, it is acceptable that computers do too...

If computer make errors in a structural way (which is the case of artificial neural networks), we change the complete computer science paradigm.

Computers could be at the source of serious administrative mistakes, medical mistakes, justice mistakes... Even is statistically, those mistakes happen 1% of the time, how to trust computer programs anymore?

If we accept to generalize techniques that make errors, we enter into a non certain world, that looks like the Brazil movie.

### Belief 3: The marvelous ubiquitous set of tools for functionally unskilled people

In the hype of machine learning, another element is crucial. It is possible to learn the data crunching techniques separately from any other functional knowledge, and to pretend being able to apply them to whatever functional domain. In a sense, machine learning is the *ubiquitous set of tools*.

More: We don't need to be functionally skilled, meaning *in the business area where we do data science*. Our skills in machine learning will be enough.

We tried to explain, in our article [the real nature of data](../articles/data-interop.md), why data was a complex *output product*, result of the intersection of a semantic domain and some use cases.

With machine learning, we take a reverse approach: Data becomes the *input* and you can discover things from it with generic tools without even knowing their limitations!

We can note that if the analyzed data are the fruit of a highly semantically standardized process (which is the case in many areas where the regulator or standards structured a business domain), machine learning can "rediscover" elements of this standardization, alimenting the illusion that it found sense in data - whereas it only uncovered a part of the semantic standardization that help created the data!











One interesting question that we can ask considering this article is: Is the second image with the sticker in the "neighborhood" of the first one? We can see, asking this question, that the very notion of neighborhood seems not defined in the "space of images". It seems only defined in the space of (X<sub>i</sub>) which are the results of the encoding of the images.

In a certain way, we lack of a mathematical theory to define properly the notion of continuity in our input space. Intuitively the second image is close to the first one in many areas (even identical) but it is radically different in others. So maybe by changing the encoder, we could obtain better results. For instance, an encoder that would encode various zones would train the neural network with a specific structure, fruit of a functional analysis.

We begin to see this approach in some articles, especially when machine learning is associated with structured data. Provided the input is structured data and the encoder is "well defined", then the machine learning algorithm can create an interpolation function that will rely on encoded structured data as its input.

This does not solve the structural problem of mathematical potential wells, but it can enhance this imperfect technology. Note that, to enhance it, we have to get back to a representation of reality that is the fruit of functional analysis and so, we have to come back to standard science: Analysis of reality, creation of a model for reality, testing the model versus the reality, enhancing the model to fit better to reality.











## This is not intelligence, this is even not science

For sure, artificial neural networks are not intelligence, far from it. It is not science, because science always took the same method:

* First, observe what is;
* Second, try to model what is, with laws and operational models implementing those laws;
* Third, iterate and compare the laws of your model and the reality and align your laws on the reality.

Neural networks are a complete perversion of the scientific method because:

* There is no thinking about a law; instead, this is replaced by an algorithm generating a function based on data;
* The only way to enrich your model when you don't understand what it is doing is to retrain it with all the samples that were in error, hoping that the new model will be better because it was trained on more data; That means you can't enrich your laws but just throw your model and create a new one with more data, without any indication that this new model will be better than the previous one or will not show flows where the previous one didn't have those.

Indeed, you don't enhance knowledge, because the create model is not the fruit of intelligence, observation, modeling and tuning; it is the fruit of an algorithm working on data.

There is no understanding on what's going on at all. There is no progress of science. On the contrary, by taking output products as input products, we can be in incredibly absurd situations. A good image would be to try to understand how Emacs works on a PC with the database of all electrical currents in a computer. Data are an output product, and they were generated in a very specific semantic context with very specific business rules.

**Reprendre ici**


## Semantic representation of reality

In software and regulation

Two main components:

* Semantic meta-model, enables the structuration of real data
* Business rules, based on logic

## Many representations of reality

representation is not unique = bridge on subsets

## Reasoning on data with semantic understanding

## Rough notes

Je n'avais pas vu cette vidéo avant aujourd'hui. C'est intéressant. Des chercheurs qui se mettent à penser comme des ingénieurs, en couplant le machine learning avec de la logique. J'avoue que ça ressemble un peu à une tentative de surfer sur la vague ML. C'est bête que la science soit soumise à la mode à ce point.
Si je comprends l'objectif, relativement au monde de la recherche qui est décrit, je reste toujours un peu sur ma faim par rapport à ce que je vis au quotidien depuis près de 30 ans. Toute l'industrie au sens large (industrie et tertiaire) lutte depuis les débuts de l'IT pour définir des sémantiques communes, ou autrement dit des façons communes de représenter les choses (et quand ce n'est pas possibles des façons communes d'échanger les données). Ainsi, beaucoup de métiers ont été "standardisés" dans leur modélisation, que ce soit au travers de groupes de travail internationaux, ou au travers de progiciels ayant structuré la représentation sémantique, ou au travers des régulateurs. Avec le temps, les modèles sémantiques s'enrichissent. C'est ce que je tente d'expliquer dans https://orey.github.io/papers/articles/data-interop/ .
Or, avoir des méta-modèles, même imparfaits, est immensément plus pertinent que de faire confiance à du ML bourrin, s'appuyant qui plus est sur des données venant d'on ne sait où. On peut générer des règles depuis un méta-modèle sémantique et donc raisonner sur ce méta-modèle, et donc raisonner sur les données qui sont instanciées depuis ce méta-modèle. Je pense qu'avec un ensemble de règles logiques basiques, on peut arriver à des résultats très intéressants.

Mais considérer les données dans l'absolu et balancer un moteur de ML dessus, c'est vraiment le degré zéro de la pensée sémantique :) Note que pas mal de gens sont séduits par l'approche dans les entreprises, parce que cela évite de réfléchir. Sans rien comprendre aux données et aux règles de gestion qui leur sont associées, ils font du ML en espérant "trouver des choses"... Evidemment, ça ne donne rien.
Je ne sais pas si ce monsieur est représentatif, mais la recherche semble vouloir étudier les modèles de raisonnements "dans l'absolu" (ce qui ouvre sur des complexités folles selon les opérateurs concernés) ou s'appuyer sur du ML qui n'est rien d'autre qu'un algo de construction de fonction d'interpolation, mais qui est stupide sémantiquement. C'est un peu les deux extrêmes. 

Et, comme souvent dans ce domaine, quand un exemple concret est pris, les gens regardent des sites web du même domaine et déterminent des règles a posteriori alors que le métier considéré est hyper réglementé par un méta modèle sémantique que le régulateur ou l'industrie considérée a mis des dizaines d'années à construire. Heureusement que l'on arrive à déterminer des règles, qui sont pour moi la conséquence du modèle sémantique sous-jacent, et que ces règles fonctionnent ! Car le métier, lui, fonctionne. Je trouve toujours cette façon de faire un peu étrange.

Ce qui serait utile à l'industrie, ce serait de partir des modèles sémantiques et d'introduire des règles de raisonnement ou de transformation sur ces modèles. On aurait alors de vraies IA qui travaillent sur des méta-modèles sémantiques leur permettant de comprendre les données sémantiquement structurées.

En fait, je trouve que le hype du ML est à l'image de notre monde. Sans que les gens ne s'en rendent compte, ils ont réduit leurs ambitions qui sont devenues minuscules, ou sont inversées par rapport à ce qu'il faudrait faire (il y a quelque chose de diabolique là-dedans ;) :On ne cherche plus à comprendre, on cherche des résultats, sans savoir ce qu'on cherche. On cherche des règles sur des données qui sont la fin d'un processus, alors que ces données ont été créées selon un processus sémantiquement riche avec des règles connues en amont !!! C'est comme tenter de comprendre fonctionne les apps Android en mesurant les courants de tous les fils internes du téléphone.En fait, on ne travaille pas, on ne fait pas d'efforts, on fait des trucs qui n'ont aucun sens, tellement on a peur de réfléchir... ou d'apprendre. On ne veut plus faire de la science. La science, c'est un modèle qui représente la réalité et qui nous permet de comprendre les lois de la nature. La logique est dans la science, mais le ML est dans la pensée magique.
On divinise un outil à deux balles, le "réseau de neurones", qui est un algo de construction d'une fonction d'interpolation que l'on utilise en mode extrapolation. Et on s'étonne que la banane disparaisse en mettant un sticker ! Cela montre juste que l'on ne maîtrise rien de la fonction multidimensionnelle générée. Ce serait rigolo si cela ne traduisait pas une profonde incompréhension des mathématiques les plus basiques.
Philosophiquement, le ML est un vrai aveu d'échec à donner du sens au monde, en prenant les choses par la fin, par la data, par le produit fini, par l'infrastructure informatique. C'est ne pas comprendre la chaîne des causes et des conséquences : c'est commencer par la conséquence et la considérer comme une cause. Pas étonnant que Google mette aux nues cette technique. C'est à leur image : bourrin et très bête :)
Là où le monsieur me fait un peu peur (mais c'est sans doute juste une posture pour obtenir des crédits de recherche), c'est qu'il donne du crédit au ML. Je ne comprends pas comment un logicien peut donner du crédit à cela.

Pour moi, l'histoire de l'informatique recherche un autre objectif que toute cette tendance : elle cherche à faire marcher des choses, à informatiser des métiers et donc à les connaître, les modéliser, les comprendre intimement que ce soit dans la structure de leur connaissance ou dans leurs règles de gestion (basées sur des règles logiques).
