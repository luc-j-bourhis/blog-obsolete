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
        type: article
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
        type: article
        authors:
            - Mermin, N. David
        title: Simple unified form for the major no-hidden-variables theorems
        journal: Phys. Rev. Lett.
        volume: 65
        year: 1990
        pages: 3373--3376
    Mermin:1981aa:
        type: article
        authors:
            - Mermin, N. D.
        title: "Bringing home the atomic world: Quantum mysteries for anybody"
        journal: American Journal of Physics
        volume: 49
        year: 1981
        pages: 940–943
        note: Une version PDF de l'article était disponible gratuitement [ici](https://www.physics.wisc.edu/undergrads/courses/spring2014/407/experiments/bell/Bell's%20Theorem%20Background%20Papers/Mermin_quantum_mysteries-Am.J.P.49.940.pdf) quand ce billet fut écrit.
    Greenberger:1990aa:
        type: article
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

J'ai trois amis, Alice, Jessica et Paul, à qui je vais proposer le jeu suivant. Je dispose d'un paquet avec de très nombreuses cartes dont ils ne savent pas ce qu'elles représentent. Nous nous installons autour d'une grande table. Chacun de mes trois amis est équipé d'une machine capable de scanner la carte et de répondre à l'une ou l'autre des deux questions suivantes:
- quelle couleur?
- quelle forme?

On ne peut poser qu'une seule de ces questions. Une fois la réponse reçue, on met la carte sur une défausse, toujours sans la regarder. Le jeu consiste à réaliser de multiples tirages qui tous procèdent comme suit. Je tire trois cartes que je pose devant moi, faces cachées. Chacun de mes trois amis décide dans sa tête d'une question à poser à sa machine, en changeant la question au hasard d'un tirage à l'autre. Quand c'est fait, ils font un signe de tête et je leur distribue une des cartes tirées à chacun. Chacun la pose sur sa machine et pose sa question. Ils notent tous soigneusement la question et le résultat. On fait un grand nombre de tirage. Finalement ils me rejoignent et comparent leur liste d'observations. Le but du jeu est pour Paul, Jessica et Alice de deviner la procédure que j'ai suivi pour préparer les cartes.

En regardant chacun séparément leur liste, ils constatent tous qu'à la question sur la couleur, les machines répondent toujours ou bien rouge ou bien bleu. Et ou bien carré ou bien cercle à la question sur la forme. Alice commente aussitôt: «Sur un tellement grand nombre d'observations, on peut conclure que chacune des cartes de Luc a ou bien un cercle, ou bien un carré de dessiner dessus. Et chacune de ces formes peut être ou bien rouge ou bien bleu. Si je regarde seulement les questions de ma liste sur la couleur, je vois que j'ai aléatoirement bleu ou rouge. Même chose pour les questions sur la forme, aléatoirement carré ou cercle. Et je vois que c'est la même chose pour ta liste, Paul, et pour la tienne, Jessica.»

Paul et Jessica acquiesce puis Paul dit «Voyons voir si on peut trouver certaines régularité en combinant nos listes.» Nos trois amis épluchent studieusement les résultats…

Soudain, Paul s'exclame: «À chaque fois que j'ai demandé la forme et vous deux la couleur,
- quand vous avez obtenues les mêmes couleurs, j'ai obtenu un carré, tandis que
- quand vous avez obtenues des couleurs différentes, j'ai obtenu un cercle.»

Après quelques instants, Jessica ajoute: «Je vois la même chose quand c'est moi qui demanda la forme, et vous deux la couleur. Et c'est encore la même chose que c'est Alice qui demanda la forme et nous deux la couleur. À chaque fois, des couleurs identiques impliquent un carré tandis que des couleurs différentes impliquent un cercle.» Alice et Paul acquiescent.

Paul prend alors la parole: «Mais alors, nous avons gagné le jeu! Nous avons trouvé les règles que Luc utilisa pour préparer le paquet!» Alors qu'Alice fait une démonstration bruyante de son approbation, Jessica reste silentieuse et dubitative. Finalement, elle dit: «Il y a quelque chose qui cloche. Avec les règles que l'on vient de mettre en évidence, je peux en prédire une autre: à chaque fois que nous avons tous demandé la forme, nous devrions nécessairement obtenir un nombre pair de cercles, c'est à dire zéro ou deux.» Alice répond aussitôt: «Mais c'est tout l'inverse dans nos listes de résultats: regarde, nous avons au contraire toujours un ou trois cercles quand nous demandons tous la forme!». Paul et Jessica ne peuvent eux aussi que se rendre à l'évidence.

Paul, comme si il pensait à voix haute, dit alors: «Et pourtant, le raisonnement de Jessica est imparable. Avec seulement deux couleurs et trois cartes, il y a toujours au moins deux cartes de la même couleur. La troisième carte est alors nécessairement un carré. Si il y a un autre carré, alors toutes les cartes sont de la même couleur. Par conséquent, il ne peut pas y avoir de cercle et on a nécessairement trois carrés. Conclusion: il y a toujours ou bien un carré, ou bien trois.» Jessica commente alors que c'est exactement le raisonnement qu'elle a fait, et Alice n'y voit rien à redire non plus.

Un long silence s'ensuit que Paul est le premier à briser: «La seule possibilité est que Luc triche. Mais je ne vois pas comment. Nous choississons librement les questions *après* que Luc ait tiré les trois cartes. Il n'a donc aucun moyen de préparer les cartes à l'avance. Il ne peut pas savoir les questions que nous allons poser. Par contre, les scanners pourraient s'échanger des informations. Nous n'appuyons pas tous en même temps sur le bouton correspondant à la question demandée. Mettons que nous soyons dans le cas où l'on a tous les trois choisis de demander la forme. Et supposons l'ordre dans lequel nous appuyons sur le bouton est moi, Alice, Jessica. Si ma machine répond carré, alors elle pourrait envoyer cette information à celles d'Alice et de Jessica. Si Alice demande la forme, alors la machine répond carré, et envoie cette information à celle de Jessica, qui sait alors qu'elle doit répondre cercle. Si au contraire, Alice demande la couleur, alors elle peut envoyer sa réponse à celle de Jessica, qui répond alors la même couleur. Etc. Je ne prétend pas couvrir tous les cas mais je pense que c'est suffisant pour montrer la possibilité d'une telle tricherie!»

Alice: «C'est machiavélique! Je ne suis pas si sûr que l'on peut construire un système de triche qui marche pour tous les cas, un système qui tricherait quand il faut et ne tricherait pas quand il ne faut pas! Mais, en chercher un ne serait guère utile: si nous n'y parvenons pas, il se pourrait simplement que nous manquions d'imagination. Il nous serait très difficile de prouver qu'aucun système de triche ne puisse exister. Non, ce qu'il faut, c'est empêcher les détecteurs de communiquer, car alors la base même de ton idée s'écroule.»

Jessica reste perdu dans ses pensées.

Paul: «Très juste! Et il y a un moyen simple de réaliser cela: la relativité restreinte nous dit que ces signaux échangés par les scanners ne peuvent pas se propager plus vite que la lumière. Il nous suffit donc, toi, moi et Jessica, de nous éloigner suffisamment les uns les autres pour que même un signal lumineux n'ai pas le temps d'aller d'un détecteur à un autre dans l'intervalle entre les observations.»

Alice commente alors: «Très juste! De plus, ton idée est non seulement pratique mais conceptuellement très juste: si on la suit, on s'assure que l'observation de la carte dépend seulement de cette carte et du détecteur, à l'exclusion des autres détecteurs et cartes au moment de leur propre observation. On pourrait appeler cela un principe de localité: nous nous limitons à des expériences qui ne dépendent que de notre voisinage immédiat. Ta proposition de détecteurs tricheurs est une violation possible de ce principe, et elle ouvre ce que l'on pourrait appeler une "lacune de localité", qui permet alors d'échapper au théorème de Jessica.»

Jessica rejoint soudain la discussion: «Voilà comment je mettrais votre idée en pratique pour combler cette "lacune de localité". Chacun de nous se munit d'une horloge très précise. Nous synchronisons ces horloges autour de cette table. Puis nous partons à plusieurs kilomètres les uns des autres. Une fois en place, j'envoie un signal lumineux à Paul: je note l'instant de départ comme indiqué par mon horloge et Paul note l'instant d'arrivée sur son horloge. Quand nous nous réunirons à nouveau plus tard, nous aurons donc une définition du temps qu'un signal lumineux met pour aller de ma position à la tienne Paul. Je fais la même chose avec Alice, et tu fais la même chose avec elle, bien sûr.»

Elle poursuit: «Passons à l'expérience proprement dite maintenant. Quand je pose une question au scanner, je note non seulement le résultat mais le temps indiqué par mon horloge. Chacun de vous fait de même. Pour chaque mesure, nous comparons alors ces temps. Par exemple, disons que nos notes montrent que Paul a fait une de ses mesures une seconde après moi: si il avait fallu plus d'une seconde au signal lumineux pour aller de moi à Paul, alors la mesure de Paul n'aurait pas pu être influencer par mon scanner. Même chose entre moi et Alice et entre Paul et Alice.»

Alice et Paul regardent Jessica avec admiration et explosent de joie: «Superbe! Faisons cette expérience. Si Luc veut se prêter au jeu bien entendu!»

Je dit aussitôt: «Bien entendu».

Nous faisons donc cette nouvelle expérience. Je passe sur les détails pratiquent qui me permettent d'envoyer les cartes à mes trois amis à plusieurs kilomètres de là! Et j'ai toute confiance dans le fait qu'ils respectent la règle du jeu! Lorsque nous nous réunissons tous à nouveau, Paul, Jessica et Alice vérifient les différences entre les temps qu'ils ont notés. Ils constatent qu'ils sont des dizaines de fois plus petites que le temps que met un signal lumineux pour aller de l'un d'entre eux à un autre. Et pourtant, les résultats sont exactement les mêmes que pour l'expérience autour de la table.

Paul: «Bon, et bien mon hypothèse de détecteurs tricheurs est contredite. On peut maintenant considérer que les détecteurs se comportent comme décrit par Luc. Sauf à admettre l'existence de signaux super-luminiques, ce qui serait incompatible avec un très grand nombre d'expériences.»

Nos trois amis deviennent pensifs pendant de long instants. Soudain Alice prend la parole: «J'ai bien une idée mais vous allez me traiter de folle!».

Paul: «Au point où on en est!»

Alice: «Et bien, nous avons supposé que les cartes de Luc avait une couleur et une forme bien définie, du début à la fin des expériences. Et que les détecteurs nous révélaient cette couleur ou cette forme, et nous savons maintenant que ces détecteurs ne peuvent pas tricher. Cette hypothèse est implicite dans l'énoncé des règles que nous avons mises en évidence, et que l'on utilise dans la démonstration du théorème de Jessica.»

Paul: «Je ne vois pas comment il pourrait en être autrement. Et encore moins maintenant que nous savons que les détecteurs ne peuvent pas communiquer entre eux, justement. En effet, nous avons mis en évidence trois cas de corrélations parfaites: l'observation des couleurs par deux d'entre nous permet à tout coup de prédire la forme observée par le troisième. Si aucune communication n'est possible entre les détecteurs, il faut nécessairement que les dessins sur les cartes aient été fixés à l'avance, avec des valeurs bien définies.»

Jessica intervient: «Nous avons fait une autre hypothèse qui avait l'air à priori évidente. Dans ta démonstration de mon théorème, Paul, tu disais par exemple "si il y avait un autre carré, alors…". Ce que tu voulais dire en fait, c'est que si un des deux autres demandaient la forme et obtenait carré, alors… Donc tu étais en train d'imaginer le résultat d'une expérience que nous n'avons pas faite.»

Paul: «Mais on fait cela tout le temps en physique! On considère un élément non mesuré; on en fait une inconnue, et on cherche à déterminer cette inconnue, ou du moins à restreindre l'ensemble de valeurs qu'elle peut prendre. C'est exactement ce que je fais dans le cas de ma démonstration, où je montre que certaines valeurs sont impossibles. Considère l'example classique de la trajectoire d'une petite masse dans un champs de gravitation: mettons que l'on sache qu'elle va d'un point A à un point B et c'est tout: en particulier, on n'a pas mesuré la vitesse au point A. On peut cependant la prendre comme inconnue, et avec les équations du mouvement, on peut la déterminer si on connait le temps écoulé pour aller de A à B.»

Alice dit alors: «Tes deux remarques sont très justes, Paul. Mais il faut se rendre à l'évidence. Cette conception de la réalité physique que tu défends, elle est contredite par l'expérience que nous venons de faire. Donc il nous faut nécessairement explorer de nouvelles avenues. J'ai proposé une piste et Jessica aussi.»

Après un long silence lourd de perplexité, Luc prend la parole: «Mes amis, laissez-moi vous apprendre la mécanique quantique…»

**Épilogue**

Mon historiette est finie! Je voudrais maintenant conclure en la reliant avec des théorèmes de la vraie physique.

Le théorème de Jessica de mon histoire est un théorème de Bell dû à David Mermin. Si je l'avais formalisé mathématiquement, cela aurait été une égalité, ce que l'on peut deviner en observant que le résultat de Jessica est "exact". Je veux dire par là que Jessica ne dit pas par exemple que dans la moitié des cas en moyenne, il y aura ceci ou cela: elle affirme un résultat valable pour toutes les observations. Nombres d'entre vous sont accoutumés à l'expression "inégalités de Bell", inégalités portant sur la probabilité d'observer ceci ou cela, et vous en serez peut-être étonné. Il se trouve que les théorèmes de Bell les mieux à même d'être vérifiés par de vraies expériences, par opposition aux expériences de pensée de ce billet, et bien ce sont des inégalités. Mais d'un point de vue purement conceptuel, rien n'interdit des égalités, ce qui fut publié pour la première fois par [[Greenberger:1990aa]]. L'égalité de Bell proposée par Jessica dans mon histoire fut publiée par [[Mermin:1990ab]]. Mes cartes sont une analogie pour les spin 1/2 utilisé par Mermin: la forme est la composante des spins selon l'axe des x (carré = +1 et cercle = -1) tandis que la couleur est la composante selon l'axe des y (rouge = +1 et bleu = -1 ou l'inverse).

L'argument de Paul, pour justifier que les faces doivent avoir des couleurs bien définie avant leur observation, est le pendant de l'argument classique d'[[Einstein:1935aa]], dit argument EPR: des corrélations parfaites entre des systèmes distants, et qui par conséquent ne peuvent pas interagir, requièrent l'existence d'une cause préalable. Les théorèmes de Bell contredisent précisément ce point.

La "lacune de localité" identifiée par mes protagonistes est un problème auquel les chercheurs réalisant ce genre d'expérience durent faire face, en utilisant une solution conceptuellement similaire à celle de Jessica. Comme les articles scientifiques sont publiés en anglais, le terme universellement utilisé est l'expression "locality loophole".

Pour finir, il existe une longue tradition d'introduction pédagogique aux théorème de Bell. Il est intéressant de noter l'une d'entre elle, [[Mermin:1981aa]] qui utilise une analogie et de l'arithmétique élémentaire pour présenter une inégalité de Bell. Il est étonnant que Mermin n'ai pas publié, à ma connaissance, une telle présentation pour l'égalité de Bell sur laquelle j'ai fondé ce billet.
