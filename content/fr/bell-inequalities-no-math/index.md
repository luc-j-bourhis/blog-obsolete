---
title: Une présentation ludique d'un théorème de Bell
author: Luc J. Bourhis
abstract: |
    Mon but est ici de présenter un théorème de Bell rigoureusement correct, mais de le faire sous la forme d'un dialogue, sans mathématiques, même pas l'arithmétique la plus élémentaire. Je vais imaginer une expérience avec des objets de tous les jours, au lieu des particules microscopiques des vraies expériences quantiques. Puis cette expérience sera analysée comme on le ferait pour ces vraies expériences réalisées en laboratoire. Ces objets de tous les jours vont évidemment se comporter de manière quelque peu magique, pour que l'analogie avec les particules quantiques marche, mais c'est là mon but: faire toucher du doigt les éléments fantastiques de la mécanique quantique qui concourt aux théorèmes de Bell.
kind: article
category: physique
group: théorèmes de Bell
bibliography:
    Einstein:1935aa:
        category: journal
        authors:
            - Einstein, A.
            - Podolsky, B.
            - Rosen, N.
        title: Can Quantum-Mechanical Description of Physical Reality Be Considered Complete?
        journal: Phys. Rev.
        volume: 47
        year: 1935
        pages: 777--780
    Mermin:1990ab:
        category: journal
        authors:
            - Mermin, N. David
        title: Simple unified form for the major no-hidden-variables theorems
        journal: Phys. Rev. Lett.
        volume: 65
        year: 1990
        pages: 3373--3376
    Mermin:1981aa:
        category: journal
        authors:
            - Mermin, N. D.
        title: "Bringing home the atomic world: Quantum mysteries for anybody"
        journal: American Journal of Physics
        volume: 49
        year: 1981
        pages: 940–943
        note: Une version PDF de l'article était disponible gratuitement [ici](https://www.physics.wisc.edu/undergrads/courses/spring2014/407/experiments/bell/Bell's%20Theorem%20Background%20Papers/Mermin_quantum_mysteries-Am.J.P.49.940.pdf) quand ce billet fut écrit.
    Greenberger:1990aa:
        category: journal
        authors:
            - Greenberger, Daniel M.
            - Horne, Michael A.
            - Shimony, Abner
            - Zeilinger, Anton
        title: Bell's theorem without inequalities
        journal: American Journal of Physics
        volume: 58
        year: 1990
        pages: 1131-1143
---

J'ai trois amis, Alice, Jessica et Paul, à qui je vais proposer le jeu suivant. Je dispose de nombreux jetons, avec une face marquée d'un X et l'autre face marqué d'un Y. Le jeu consiste à réaliser plusieurs expériences qui toutes procèdent comme suit. Mes trois amis se séparent et vont chacun prendre place dans un isoloir d'où ils ne peuvent pas voir ce que je fais. J'envoie à chacun d'entre eux un jeton numéroté: le jeton 1 à Paul, le 2 à Alice et le 3 à Jessica. Ils sont plongés dans le noir et ne peuvent donc pas voir le jeton qu'ils reçoivent chacun. Le seul moyen à leur disposition pour l'observer est une machine spéciale (j'en ai donné une à chacun d'entre eux): chaque machine à un réglage à deux positions, X ou Y. Quand on y insère le jeton, la machine révèle la couleur de la face spécifiée par le réglage, puis la machine détruit le jeton. Par conséquent, on peut connaître ou bien la couleur de la face X, ou bien de la face Y, au choix, mais jamais la couleur des deux. Pour chaque expérience, je vais indiqué à chacun, à l'avance, le réglage de la machine et chacun notera alors la couleur révélée. On répète cette procédure un grand nombre de fois en utilisant mon très grand stock de jetons. Finalement ils me rejoignent et comparent leur liste d'observations. Le but du jeu est pour Paul, Jessica et Alice de deviner la procédure que j'ai suivi pour préparer les jetons. Mais attention, c'est moi qui choisis le réglage des appareils!

**Première expérience:** Paul examine la face X; Alice et Jessica examine la face Y.

Chacun d'eux constate que la couleur observée est toujours ou bien noire ou bien blanche. De plus, chacun se rend compte que, sur sa liste, les couleurs se suivent au hasard. Par contre quand ils comparent leur liste, ils découvrent qu'Alice et Jessica aurait pu prédire les résultats observés par Paul. En effet,

- *à chaque fois* qu'Alice et Jessica ont observé deux faces de même couleur, Paul a observé un face blanche; et
- *à chaque fois* qu'Alice et Jessica ont observé des couleurs différentes, Paul a observé une face noire.

Alice commente aussitôt: «Sur un tellement grand nombre d'observations, cela ne peut pas être une coïncidence! Luc a clairement des jetons dont chaque face X ou Y est ou bien blanche ou bien noire, et il a suivi un plan bien précis pour préparer les envois qu'il nous a fait.»

Paul ajoute: «En effet! Il y certes une part de hasard dans la manière dont il a choisi les faces mais il a pris soin de toujours choisir les jetons 2 et 3 avec une face Y de la même couleur s'il avait choisi un jeton 1 avec une face X blanche, et deux faces de couleurs différentes dans le cas contraire. Appelons cela la règle I.»

Je leur propose alors aussitôt une autre expérience…

**Deuxième expérience:** Alice examine la face X; Paul et Jessica la face Y.

Chacun d'eux constate à nouveau une suite aléatoire de faces blanches et noires. Quand ils comparent leur liste, ils se rendent compte que, cette fois, Paul et Jessica auraient pu prédire les observations d'Alice. En effet,

- *à chaque fois* que Paul et Jessica ont observé deux faces de même couleur, Alice a observé une face blanche; et
- *à chaque fois* que Paul et Jessica ont observé des couleurs différentes, Alice a observé une face noire.

Alice lance: «Nous apprenons donc que Luc a encore une fois choisit les jetons partiellement au hasard, en prenant soin de toujours prendre les jetons 1 et 3 avec une face Y de la même couleur s'il avait choisi un jeton 2 avec une face X blanche, et deux faces de couleurs différentes dans le cas contraire. Cette nouvelle contrainte est tout à fait compatible avec celle que nous avons découvert avec la première expérience. Mais nous avons appris quelque chose de plus!».

Paul est d'accord: «Nous progressons en effet: appelons cela la règle II.»

Je leur propose de suite une autre expérience…

**Troisième expérience:** Jessica examine la face X; Paul et Alice la face Y

Sans surprise, trois nouvelles listes de faces noires et blanches sortant au hasard. Et c'est le résultat de Jessica qui s'avère prévisible cette fois:

- *à chaque fois* que Paul et Alice ont observé deux faces de même couleur, Jessica a observé une face blanche; et
- *à chaque fois* que Paul et Alice ont observé des couleurs différentes, Jessica a observé une face noire.

Paul et Alice échangent un regard de connivence, et c'est Paul qui exprime leur idée commune: «Nous avons appris cette fois que Luc a pris soin de toujours choisir les jetons 1 et 2 avec une face Y de la même couleur s'il avait choisi un jeton 3 avec une face X blanche, et deux faces de couleurs différentes dans le cas contraire.»

Alice ajoute: «Et nous avons une règle III. Mieux, les trois règles que nous avons trouvé couvrent tous les cas de choix des faces X. Nous avons la description ultime de la procédure suivie par Luc! Les trois règles sont compatibles. Le jeu est fini, non?»

Jessica, pensante: «Avec ces trois expériences, nous avons juste assez d'information pour atteindre cette conclusion. Je voudrais voir des confirmations redondantes avant de conclure. En fait, j'ai une idée! En effet, on peut prédire le résultat d'une expérience que nous n'avons pas encore faite, ce qui n'était pas possible jusqu'à maintenant. J'affirme que si chacun d'entre nous examine la face X, alors nous observerons toujours ou bien une seule face blanche, ou bien trois faces blanches.»

Paul et Alice cogitent pendant un moment et Alice dit soudain: «Mais oui! Tu as raison!».

Après quelques instants, Paul dit à son tour: «Je vois, en effet. Raisonnons à l'envers. Si la prédiction de Jessica est fausse, alors ou bien il y a une seule face noire, ou bien il y en a trois.

- Ce deuxième cas est le plus facile: d'après notre règle I, les faces Y des jetons 2 et 3 devraient avoir des couleurs différentes; même chose pour les jetons 1 et 3 d'après la règle II; et 1 et 2 d'après la règle III. C'est clairement impossible: il y a toujours au moins deux faces de la même couleur!
- Dans le premier cas, disons pour fixer les idées que le jeton 1 est celui avec une face X noire, et donc que les faces X des jetons 2 et 3 sont blanches. Alors les règles II et III nous disent respectivement que les jetons 1 et 3 ont des faces Y de la même couleur, et que les jetons 1 et 2 ont des faces Y de la même couleur. Par conséquent les trois jetons ont des faces Y de la même couleur, ce qui est impossible puisque les jetons 2 et 3 devraient avoir des faces Y de couleurs différentes selon la règle I. Le raisonnement est le même si le jeton noir est le jeton 2 ou le jeton 3.»

Jessica conclut alors: «Oui, exactement, tu aboutis à une contradiction, et cela veut donc dire que ton point de départ était faux, c'est à dire que ma prédiction était vraie».

Paul: «Appelons cette prédiction, le théorème de Jessica!»

Les yeux d'Alice s'illumine alors: «Bonne idée! Et ce théorème de Jessica, on peut le tester expérimentalement! Le résultat est couru d'avance mais vérifions quand même! Luc, accepterais-tu de déroger à ta règle et de nous laisser le choix de l'expérience cette fois?».

J'accepte. Mes trois amis ne semble pas noter mon sourire narquois…

**Quatrième expérience:** Paul, Alice et Jessica examine chacun le compartiment X

Encore et toujours des faces noires et blanches dans trois suites aléatoires mais quand nos trois amis comparent leur liste, ils restent sans voix. Alice brise le silence finalement: «C'est à ne rien y comprendre: il y a toujours ou bien une face noire, ou bien trois, c'est à dire l'exact opposé du théorème de Jessica!». Paul ressasse le raisonnement qu'il a fait quelques temps auparavant: «Non, je n'y vois rien à redire: le théorème de Jessica devrait être correct. Nous somme d'accord?». Alice hoche de la tête.

Après un long moment, Jessica prend la parole.

«Il y a des choses qui nous avaient parues si évidentes au début que nous les avons acceptées sans y réfléchir. Et mon théorème repose sur ces hypothèses. Maintenant, le résultat de cette dernière expérience nous forcent donc à rejeter ces hypothèses. Le problème est qu'elles ne m’apparaissent pas clairement, ces hypothèses. Mais c'est ce qu'il nous faut faire: les trouver! Et ensuite les tester…»

Un long silence s'ensuit que Paul est le premier à briser: «Les détecteurs! Je veux dire les appareils que Luc nous a fournit et qui nous donne la couleur d'une face ou de l'autre. Nous avons accepté sans sourciller qu'ils fonctionnaient comme Luc nous l'avait décrit. Mais, et si ils trichaient?! Ils se pourraient qu'ils nous aient montré la vraie couleur des faces pour les trois premières expériences mais que pour la quatrième, ils nous aient montré une face blanche quand elle était noire et vice-versa. Cela suffirait à expliquer le résultat: au moins quand chaque détecteur est réglé pour donner la couleur de la face X, ils trichent! Comme nous réglons les détecteurs avant de commencer l'expérience, ils ont largement le temps de s'échanger des informations pour découvris que nous mesurons les faces X!»

Alice: «Pas bête! Mais la parade est aisée: au lieu de faire quatre expériences avec les détecteurs réglés à l'avance, on pourrait faire une seule expérience où chacun d'entre nous choisirait au hasard la face à observer. À la fin, il suffit de sélectionner les combinaisons que Luc avait choisies et ignorer le reste.»

Paul et Alice regarde Jessica mais son regard est perdu dans le vide: à l'évidence, elle les écoutent à peine, toute à ses réflexions. Qu'à cela ne tienne, nos deux compères continuent à peaufiner leur idée.

Paul: «Bonne idée, Alice! D'ailleurs ton protocole nous permet de ne pas avoir à croire Luc sur parole quand il nous dit qu'il ne triche pas car il ne pourrait alors pas savoir quel réglage nous allons choisir.

Le visage de Paul s'obscurcit aussitôt cependant: «Mais il reste un problème. Chacun de nous fait son observation à un instant un petit peu différent des autres. Pour fixer les idées, considérons une observation qui se fait dans l’ordre Alice, Jessica et puis moi. Disons que tu as choisi au hasard de regarder X, Alice, et que ton détecteur t’aies révélé une face blanche, sans tricher. Il envoie alors un signal au détecteur de Jessica et au mien avec ce résultat. Nos détecteurs à tous deux se règlent alors pour montrer une face blanche si le choix se porte d'observer X, quelque soit la couleur réelle. Disons que Jessica fait l'observation avant moi. Alors son détecteur envoie un signal au mien, qui change alors son réglage pour me montrer une face noire si j'observe effectivement X, quelque soit la couleur réelle de cette face X. Et vice-versa si je fais l'observation avant Jessica. Et voilà! Lorsque nous comparerons nos listes, nous aurons une observation avec une seule face noire.»

Alice: «C'est machiavélique! Mais tu as montré comment tricher seulement sur un cas particulier. Je ne suis pas sûr que l'on peut construire un système de triche qui marche pour tous les cas des quatre expériences que nous avons faites, un système qui tricherait quand il faut et ne tricherait pas quand il ne faut pas! Mais, en chercher un ne serait guère utile: si nous n'y parvenons pas, il se pourrait simplement que nous manquions d'imagination. Il nous serait très difficile de prouver qu'aucun système de triche ne puisse exister. Non, ce qu'il faut, c'est empêcher les détecteurs de communiquer, car alors la base même de ton idée s'écroule.»

Paul: «Très juste! Et il y a un moyen simple de réaliser cela: la relativité restreinte nous dit que ces signaux ne peuvent pas se propager plus vite que la lumière. Il nous suffit donc, toi, moi et Jessica, de nous éloigner suffisamment les uns les autres pour que même un signal lumineux n'ai pas le temps d'aller d'un détecteur à un autre dans l'intervalle entre les observations.»

Alice commente alors: «Très juste! De plus, ton idée est non seulement pratique mais conceptuellement très juste: si on la suit, on s'assure que l'observation de la couleur de la face d'un jeton dépend seulement du jeton et du détecteur, à l'exclusion des autres détecteurs et jetons au moment de leur propre observation. On pourrait appeler cela un principe de localité: nous nous limitons à des expériences qui ne dépendent que du voisinage immédiat, disons au plus notre isoloir à chacun. Ta proposition de détecteurs tricheurs est une violation possible de ce principe, et elle ouvre ce que l'on pourrait appeler une "lacune de localité", qui permet alors d'échapper au théorème de Jessica.»

Jessica rejoint soudain la discussion: «Voilà comment je mettrais votre idée en pratique pour combler cette "lacune de localité". Chacun de nous se munit d'une horloge très précise. Nous nous asseyons autour d'une table et nous synchronisons ces horloges. Puis nous partons à plusieurs kilomètres les uns des autres. Une fois en place, j'envoie un signal lumineux à Paul: je note l'instant de départ comme indiqué par mon horloge et Paul note l'instant d'arrivée sur son horloge. Quand nous nous réunirons à nouveau plus tard, nous aurons donc une définition du temps qu'un signal lumineux met pour aller de ma position à la tienne Paul. Je fais la même chose avec Alice, et tu fais la même chose avec elle, bien sûr.»

Elle poursuit: «Passons à l'expérience proprement dite maintenant. Quand je fais une observation, je note non seulement le résultat mais le temps indiqué par mon horloge. Chacun de vous fait de même. Pour chaque mesure, nous comparons alors ces temps. Par exemple, disons que nos notes montrent que Paul a fait une de ses mesures une seconde après moi: si il avait fallu plus d'une seconde au signal lumineux pour aller de moi à Paul, alors la mesure de Paul n'aurait pas pu être influencer par mon détecteur. Même chose entre moi et Alice et entre Paul et Alice.»

Alice et Paul regardent Jessica avec admiration et explosent de joie: «Superbe! Faisons cette expérience. Si Luc veut se prêter au jeu bien entendu!»

Je dit aussitôt: «Bien entendu».

**Cinquième expérience:** Paul, Alice et Jessica choisissent le réglage X ou Y de leur appareil au hasard; ils notent l'heure exacte de chaque observation; et ils ont préalablement mesuré le temps que met un signal lumineux pour aller de l'un d'entre eux à un autre

Les résultats des observations correspondant aux faces XYY, YXY, YYX et XXX (dans l'ordre de numérotation des jetons), sont exactement les mêmes que dans les expériences avec les réglages prédéfinis. Et les différences entre les temps notés par Paul, Alice et Jessica sont des dizaines de fois plus petites que le temps que met un signal lumineux pour aller de l'un d'entre eux à un autre.

Paul: «Bon, et bien mon hypothèse de détecteurs tricheurs est contredite. On peut maintenant considérer que les détecteurs se comportent comme décrit par Luc. Sauf à admettre l'existence de signaux super-luminiques, ce qui serait incompatible avec un très grand nombre d'expériences.»

Nos trois amis deviennent pensifs pendant de long instants. Soudain Alice prend la parole: «J'ai bien une idée mais vous allez me traiter de folle!».

Paul: «Au point où on en est!»

Alice: «Et bien, nous avons supposé que les faces des jetons de Luc avait une couleur bien définie, du début à la fin des expériences, ou bien blanche, ou bien noire. Et que les détecteurs nous révélaient cette couleur, et nous savons maintenant que ces détecteurs ne peuvent pas tricher. Cette hypothèses est implicite dans l'énoncé des règles I à III de Paul, et on l'utilise dans ta démonstration du théorème de Jessica.»

Paul: «Je ne vois pas comment il pourrait en être autrement. Et encore moins maintenant que nous savons que les détecteurs ne peuvent pas communiquer entre eux, justement. En effet, nous avons mis en évidence trois fois des corrélations parfaites: l'observation des faces Y par deux d'entre nous permet à tout coup de prédire la face X observée par le troisième. Si aucune communication n'est possible entre les détecteurs, il faut nécessairement que les couleurs des faces aient été fixées à l'avance. Et donc que les trois pions soient décrits au moins par les couleurs des six faces, chaque face ayant en effet une couleur bien définie quand Luc en a fini de sa préparation.»

Jessica intervient: «Je t'accorde que ton argument semble naturel mais justement, comme Alice vient de te le dire, cette hypothèse que tu viens de défendre mène à une contradiction dans la quatrième expérience. Ou dit autrement, cette hypothèse n'est pas compatible avec les quatre premières expériences prises ensemble. Et incompatible de la même manière avec la cinquième, qui ne fait ni plus ni moins que les quatre premières pour ce qui consiste de cette hypothèse-ci. Leur résultats nous montrent qu'il n'est pas possible d'assigner des couleurs aux faces des jetons avant de les observer. C'est en effet un élément essentiel de mon théorème: la couleur d'une face existe avant son observation et indépendamment de cette dernière. Le détecteur se contente de révéler ce qui existe déjà.»

Alice surenchérit: «Oui, c'est exactement ce que j'avais en tête. Il semblerait donc qu'il nous faille renoncer à cette vision du monde, que l'on pourrait résumer comme l'existence d'une réalité physique indépendante des observateurs.»

Après un long silence lourd de perplexité, Luc prend la parole: «Mes amis, laissez-moi vous apprendre la mécanique quantique…»

**Épilogue**

Mon historiette est finie! Je voudrais maintenant conclure en la reliant avec des théorèmes de la vraie physique.

Le théorème de Jessica de mon histoire est un théorème de Bell dû à David Mermin. Si je l'avais formalisé mathématiquement, cela aurait été une égalité, ce que l'on peut deviner en observant que le résultat de Jessica est "exact". Je veux dire par là que Jessica ne dit pas par exemple que dans la moitié des cas en moyenne, il y aura ceci ou cela: elle affirme un résultat valable pour toutes les observations. Nombres d'entre vous sont accoutumés à l'expression "inégalités de Bell", inégalités portant sur la probabilité d'observer ceci ou cela, et vous en serez peut-être étonné. Il se trouve que les théorèmes de Bell les mieux à même d'être vérifiés par de vraies expériences, par opposition aux expériences de pensée de ce billet, et bien ce sont des inégalités. Mais d'un point de vue purement conceptuel, rien n'interdit des égalités, ce qui fut publié pour la première fois par [[Greenberger:1990aa]]. L'égalité de Bell proposée par Jessica dans mon histoire fut publiée par [[Mermin:1990ab]]. Mes jetons sont une analogie pour les spin 1/2 utilisé par Mermin: c'est pour cela que j'ai appelé les faces X et Y. Elles correspondent à la mesure du spin selon les directions des mêmes noms. Quant aux couleurs, blanc et noir, elles correspondent aux mesures +1/2 et -1/2.

L'argument de Paul, pour justifier que les faces doivent avoir des couleurs bien définie avant leur observation, est le pendant de l'argument classique d'[[Einstein:1935aa]], dit argument EPR: des corrélations parfaites entre des systèmes distants, et qui par conséquent ne peuvent pas interagir, requièrent l'existence d'une cause préalable. Les théorèmes de Bell contredisent précisément ce point.

La "lacune de localité" identifiée par mes protagonistes est un problème auquel les chercheurs réalisant ce genre d'expérience durent faire face, en utilisant une solution conceptuellement similaire à celle de Jessica. Comme les articles scientifiques sont publiés en anglais, le terme universellement utilisé est l'expression "locality loophole".

Pour finir, il existe une longue tradition d'introduction pédagogique aux théorème de Bell. Il est intéressant de noter l'une d'entre elle, [[Mermin:1981aa]] qui utilise une analogie et de l'arithmétique élémentaire pour présenter une inégalité de Bell. Il est étonnant que Mermin n'ai pas publié, à ma connaissance, une telle présentation pour l'égalité de Bell sur laquelle j'ai fondé ce billet.
