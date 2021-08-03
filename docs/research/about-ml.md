# Reflections on  machine learning (ML)

![Robot](../images/robot.jpg)

*Photo by [oliver brandt](https://freeimages.com/photographer/ollinger-36628) from [FreeImages](https://freeimages.com)*

Machine learning based on neural networks attracted much attention and credits those last decades, up to the point that, boosted by marketing, an anti-scientific approach is sold as being the solution to all problems.

## An interpolation function working in extrapolation mode

Basically, a neural network is the fruit of an algorithm of multi-variable function construction based on interpolation.

Suppose we have a problem with n dimensions in input and p dimensions in output. For every know assertion that we know:

* An input of the problem (x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub>),
* Its corresponding output (y<sub>1</sub>, y<sub>2</sub>, ..., y<sub>p</sub>) are known.

Let us note :

> X<sub>k</sub> = (x<sub>k1</sub>, x<sub>k2</sub>, ..., x<sub>kn</sub>)

> And Y<sub>m</sub> = (y<sub>m1</sub>, y<sub>m2</sub>, ..., y<sub>mp</sub>).

Let us suppose we have a set of known inputs and related known outputs, (X<sub>k</sub>, Y<sub>m</sub>) for (k,m) known.

Considering a predefined neural network with nodes and edges in layers, we can use an algorithm to define characteristics of nodes and edges so that we define a function f like following:

> f : D<sub>1</sub> x D<sub>2</sub> x ... X D<sub>n</sub> &rarr; R<sub>1</sub> x R<sub>2</sub> x ... x R<sub>p</sub>

> (x<sub>1</sub>, x<sub>2</sub>, ..., x<sub>n</sub>) &rarr; (y<sub>1</sub>, y<sub>2</sub>, ..., y<sub>p</sub>)

For this function: f(X<sub>k</sub>) = Y<sub>m</sub>

f is an interpolation function, defined by an algorithm.

The idea of neural networks is that f is a continuous function and so, if we take X<sub>i</sub> so that | X<sub>k</sub> - X<sub>i</sub> | < &epsi; then we can use f to evaluate f(X<sub>i</sub>).

That means that the f function that is an *interpolation* function can be used, under certain conditions, as an *extrapolation* function.

## The banana disappears


![Alt text](../images/potential-well.gif)

Figure 1: Two potential wells in a surface. *Image from [wired.com](https://www.wired.com/wp-content/uploads/2014/06/63-plaster-logarithmics.gif)*




## A delirium about artificial intelligence

not intelligence

## ML is anti-science

philosophical arguments

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
