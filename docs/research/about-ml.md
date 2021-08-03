# Reflections on neural networks and machine learning

![Robot](../images/robot.jpg)

*Photo by [oliver brandt](https://freeimages.com/photographer/ollinger-36628) from [FreeImages](https://freeimages.com)*

Machine learning based on neural networks attracted much attention and credits those last decades (after a long "winter of AI") up to the point that, boosted by marketing, an anti-scientific approach is sold as being the solution to all problems.

In this article, we will try to recall the simple mathematical foundation behind neural networks.

## What is a neural network?

Basically, a built neural network in "supervised learning" is:

* A mathematical function `f` of several variable;
* A complex function construction algorithm:
    * Using a representation of neurons and axons that was used to create the function `f`,
    * Based on a list of inputs of the form (x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub>), matching with outputs of the form (y<sub>1</sub>, y<sub>2</sub>, ..., y<sub>p</sub>).

There are many techniques to build the function `f`, hence the variety of machine learning algorithms.

We will not talk now on unsupervised learning.

## An interpolation function

Let us note :

> X<sub>k</sub> = (x<sub>k1</sub>, x<sub>k2</sub>, ..., x<sub>kn</sub>)

> And Y<sub>m</sub> = (y<sub>m1</sub>, y<sub>m2</sub>, ..., y<sub>mp</sub>).

Let us suppose we have a set of known inputs and related known outputs, (X<sub>k</sub>, Y<sub>m</sub>) for (k,m) known.

Considering a predefined neural network with nodes and edges in layers, we can use an algorithm to define characteristics of nodes and edges so that we define a function f like following:

> f : D<sub>1</sub> x D<sub>2</sub> x ... X D<sub>n</sub> &rarr; R<sub>1</sub> x R<sub>2</sub> x ... x R<sub>p</sub>

> (x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub>) &rarr; (y<sub>1</sub>, y<sub>2</sub>, ..., y<sub>p</sub>)

To create this function, the algorithm used tried, more of less, to satisfy the following hypothesis:

> f(X<sub>k</sub>) = Y<sub>m</sub>

This is called "training the network".

`f` is an interpolation function, defined by an algorithm. Once defined, `f` is a function of many variables that has the following characteristics:

* It is probable that | f(X<sub>k</sub>) - Y<sub>m</sub> | < &epsi; if not f(X<sub>k</sub>) = Y<sub>m</sub>
* The determined global function is not mathematically known: So, it can have singular points.

## An interpolation function working in extrapolation mode

The idea of neural networks is to assume that `f` is a continuous function at least in the neighborhood of the known hyper-points X<sub>i</sub>, which means that:

> Let X<sub>i</sub> so that | X<sub>k</sub> - X<sub>i</sub> | < &epsi;

> This implies that | f(X<sub>k</sub>) - f(X<sub>i</sub>) | < &epsi;'

When `f` matches this assertion, that means that we can use `f` as an extrapolation function and consider that its evaluation on X<sub>i</sub> is valid.

But the problem is that we have no ways of *knowing* that `f` is really continuous in a neighborhood of an hyperpoint.

![Alt text](../images/potential-well.gif)

*Figure 1: Two potential wells in a surface. Image from [wired.com](https://www.wired.com/wp-content/uploads/2014/06/63-plaster-logarithmics.gif)*

In the Figure 1, we can see an artist representation of two singularities in a 3D curve:

* One where `z` tends to +&infin;,
* One where `z` tends to -&infin;.

That means, for the first singularity, that we have the following situation:

> For a X<sub>i</sub> so that | X<sub>k</sub> - X<sub>i</sub> | < &epsi;

> | f(X<sub>k</sub>) - f(X<sub>i</sub>) | >> &epsi;'

Even if this case is a bit simplistic, this simple sample shows that the hyper-surface created by the neural network construction algorithm is *unknown*.

Indeed, it shows what every mathematician knows for ages: That an interpolation function should not be used as an extrapolation function.

## The strange idea to compensate by big data

Well, then why so many people are relying on machine learning algorithms? First of all because they don't understand what they do, and secondly because they believe that big data will solve it all.

The first idea (which is an engineer's idea) is that if we have many many data to feed the algorithm with, we will have many hyper-points in the `f(X)` hyper-surface. This will imply that the `f(X)` will generate a reliable function to be used in extrapolation mode.

For sure, even if the idea is not stupid, in the general case, it is just a wish.

The second idea (also an engineer's idea) is to say that better have the neural network than nothing. At least, "most of the time", the extrapolation does work and provides relevant results.

This second idea is backed by a very worrying corollary that is that humans make mistakes, and so it is acceptable that computers do too...

We can note three philosophical points that are shifting from the past:

* There is a belief that brute force can compensate bad mathematics;
* There is a new definition of "good" which is no more "exact", but "exact most of the time", which is an acceptation of a significant error level;
* It becomes acceptable that the computer makes errors, as an human would have done.

## But the banana disappears

![The banana experiment](../images/banana.png)

*Figure 2: The banana disappears. Taken from [Brown et al. 2017](https://arxiv.org/pdf/1712.09665.pdf)*

Without any surprise, Brown et al. demonstrated in their article *Adversarial patch* that it was possible to mislead a neural network training to recognize some images. What they claim is even worse, because they claim it was possible to structurally mislead all neural networks that were used as image classifiers.

That is showing the structural flows of this technique. For sure, there are flaws but in many processes where the artificial neural networks are used, do we really know where are the flaws?

## The marvelous ubiquitous tool for unskilled people

In the hype of machine learning, another element is crucial. It is possible to learn all those data crunching techniques and to pretend being able to apply them to whatever domain. In a sense, machine learning is the *ubiquitous tool*.

More: We don't need to be skilled, meaning *in the business area where we do data science*. Our skills in machine learning will be enough.

We tried to explain, in our article [the real nature of data](../articles/data-interop.md), why data was a complex output product, result of the intersection of a semantic domain and some use cases.

With machine learning, we take a reverse approach: Data becomes the input and you can discover things from it with generic tools without even knowing their limitations!

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
