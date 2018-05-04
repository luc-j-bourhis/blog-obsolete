---
title: Étude d'une Inégalité de Bell
author: Luc J. Bourhis
kind: article
category: physique
bibliography:
    Aspect:1982:
        authors:
            - Aspect, Alain
            - Dalibard, Jean
            - Roger, Gérard
        title: Experimental Test of Bell's Inequalities Using Time-Varying Analyzers
        journal: Phys. Rev. Lett.
        volume: 49
        year: 1982
        pages: 1804--1807
    Bell:1964:
        authors:
            - Bell, John S.
        title: On the Einstein Podolsky Rosen paradox
        journal: Physics
        volume: 1
        year: 1964
        pages: 195--200
    Braunstein:1992:
        authors:
            - Braunstein, Samuel L.
            - Mann, A.
            - Revzen, M.
        title: Maximal violation of Bell inequalities for mixed states
        journal: Phys. Rev. Lett.
        volume: 68
        year: 1992
        pages: 3259--3261
    Cirelson:1980:
        authors:
            - Cirel'son, B. S.
        title: Quantum generalizations of Bell's inequality
        journal: Letters in Mathematical Physics
        volume: 4
        year: 1980
        pages: 93--100
    Clauser:1974:
        authors:
            - Clauser, John F.
            - Horne, Michael A.
        title: Experimental consequences of objective local theories
        journal: Phys. Rev. D
        volume: 10
        year: 1974
        pages: 526--535
    Clauser:1969:
        authors:
            - Clauser, John F.
            - Horne, Michael A.
            - Shimony, Abner
            - Holt, Richard A.
        title: Proposed Experiment to Test Local Hidden-Variable Theories
        journal: Phys. Rev. Lett.
        volume: 23
        year: 1969
        pages: 880--884
    Einstein:1935aa:
        authors:
            - Einstein, A.
            - Podolsky, B.
            - Rosen, N.
        title: Can Quantum-Mechanical Description of Physical Reality Be Considered Complete?
        journal: Phys. Rev.
        volume: 47
        year: 1935
        pages: 777--780
    Gisin:1992aa:
        authors:
            - Gisin, N.
            - Peres, A.
        title: Maximal violation of Bell's inequality for arbitrarily large spin
        journal: Physics Letters A
        volume: 162
        year: 1992
        pages: 15 - 17
    Hensen:2015:
        authors:
            - Hensen, B.
            - Bernien, H.
            - Dreau, A. E.
            - Reiserer, A.
            - Kalb, N.
            - Blok, M. S.
            - Ruitenberg, J.
            - Vermeulen, R. F. L.
            - Schouten, R. N.
            - Abellan, C.
            - Amaya, W.
            - Pruneri, V.
            - Mitchell, M. W.
            - Markham, M.
            - Twitchen, D. J.
            - Elkouss, D.
            - Wehner, S.
            - Taminiau, T. H.
            - Hanson, R.
        title: Loophole-free Bell inequality violation using electron spins separated by 1.3 kilometres
        journal: Nature
        volume: 526
        year: 2015
        pages: 682--686
    Rowe:2001:
        authors:
            - Rowe, M. A.
            - Kielpinski, D.
            - Meyer, V.
            - Sackett, C. A.
            - Itano, W. M.
            - Monroe, C.
            - Wineland, D. J.
        title: Experimental violation of a Bell's inequality with efficient detection
        journal: Nature
        volume: 409
        year: 2001
        pages: 791--794
    Weihs:1998:
        authors:
            - Weihs, Gregor
            - Jennewein, Thomas
            - Simon, Christoph
            - Weinfurter, Harald
            - Zeilinger, Anton
        title: Violation of Bell's Inequality under Strict Einstein Locality Conditions
        journal: Phys. Rev. Lett.
        volume: 81
        year: 1998
        pages: 5039--5043

tex_macros:
    Hsingle:    \mathcal{S}
    Hpair:      \mathcal{P}
    vec:        \mathrm{Vec}\left(#1\right)
---

~~~~
Les inégalités de Bell sont un moyen de tester certains principes implicites en mécanique classique, où le mot "classique" est ici entendu par opposition à "quantique". Partant de deux de ces principes, localité et réalisme, que je définis clairement dans cet article, je vais démontrer que certains résultats expérimentaux doivent satisfaire des inégalités, dite de Bell, en l'honneur du chercheur qui démontra la première d'entre elles. De nombreuses expériences différentes ont été réalisées, dont je donnerais un aperçu, menant à une double conclusion: d'une part, leurs résultats violent ces inégalités, et par conséquent falsifient ces hypothèses de localité et de réalisme; d'autre part, ils sont en accord avec les prédictions de la mécanique quantique.
~~~~

## 1. L'expérience

Je vais présenter une expérience idéalisée. Il ne s'agit pas d'une pure expérience de pensée car des expériences réelles furent réalisées sur les mêmes principes mais l'analyse rigoureuses de ces dernières est trop complexe pour le but pédagogique que je me suis fixé pour cet article. Je me conteterais de faire quelques liens qualitatifs avec ces expériences réelles.

Il y a en premier lieu une source qui émet une à une des paires de particules -- en pratique des photons, des ions ou des électrons. Pour chaque paire, l'une des particules, notée 1, va vers un appareil de mesure I tandis que l'autre, notée 2, va vers un appareil de mesure II. Ces deux appareils sont identiques mais chacun peut avoir des réglages différents, respectivement $$a$$ et $$b$$. En pratique, on mesurera la polarisation d'un photon ou le spin d'un ion, et le réglage sera la direction dans laquelle on mesurera cette grandeur. Je vais appeler $$A$$ l'observable de la particule 1 mesurée par l'appareil I et $$B$$ celle mesurée sur  la particule 2. Ces observables dépendent donc des réglages $$a$$ et $$b$$.

Nous allons faire l'hypothèse que $$A$$ et $$B$$ ne peuvent prendre que les valeurs 1 et -1, ce qui est vrai en pratique comme nous le verrons quand j'aborderais le traitement quantique. L'expérience consiste alors à mesurer $$A$$ et $$B$$ pour un grand nombre $$N$$ de paires et à calculer

$$ D_N(a,b) = \frac{N_\text{identique}(a,b)-N_\text{différente}(a,b)}{N} \label{countingRatios},$$

où $$N_\text{identique}(a,b)$$ (resp. $$N_\text{différente}(a,b)$$) est le nombre de paires pour lesquelles $$A$$ et $$B$$ ont la même valeur (resp. des valeurs différentes). Ces comptages dépendent à priori des réglages $$a$$ et $$b$$, ce que j'ai rendu explicite dans cette équation. Comme $$A$$ et $$B$$ ne peuvent prendre que les valeurs +1 et -1, $$D_N(a,b)$$ est la moyenne du produit $$AB$$ sur les $$N$$ paires mesurées, c'est à dire ce que l'on appelle la corrélation entre $$A$$ et $$B$$.
L'astuce est alors de répéter l'expérience avec des réglages différents, de combiner ces différentes corrélations, et de les comparer avec les prédictions du modèle réaliste et locale, que nous allons maintenant étudier.

## 2. Le modèle

L'information contenue dans chaque paire, ou du moins celle qui aura une influence sur les mesures, sera notée $$\lambda$$, qui est aussi appelée l'état de la paire à cause de l'influence du vocabulaire de la mécanique quantique. Le point fondamental est qu'une partie de cette information ne nous est pas connue: ce sont les fameuses variables cachées. En pratique, $$\lambda$$ comprend donc au moins la polarisation des photons, ou le spin des électrons ou des ions. Mais il comprend peut-être aussi des élements d'information dont nous n'avons pas la moindre idée. En fait, [[Einstein:1935aa]] ont argumenté de la nécessité de tels éléments d'information en plus de ce que la mécanique quantique prend en compete, et cet argument fut la motivation de [[Bell:1964]], comme le montre clairement le titre de l'article.

Je voudrais insister sur deux points importants:

- $$\lambda$$ varie aléatoirement d'une paire à l'autre et $$\lambda$$ évolue peut-être aussi stochastiquement pendant le temps de vol des particules d'une même paire. Cela ne signifie pas que l'on renie le déterminisme de la mécanique classique mais simplement que l'on doit se contenter de traiter statistiquement des processus dont tous les détails ne nous sont pas connus;
- on ne suppose pas que l'information $$\lambda$$ au sujet de la paire est un simple juxtaposition d'informations indépendantes $$\lambda_1$$ et $$\lambda_2$$ au sujet de respectivement la première et la deuxième particule de la paire -- cette supposition est ce que l'on peut appeler un critère de séparabilité. On laisse donc la porte ouverte à des corrélations entre les états des deux particules -- au minimum des corrélations entre les spins ou les polarisations en pratique. L'idée est que ces corrélations sont causées par le mécanisme de production de la paire, dont malheureusement nous ne connaissons pas tous les détails.

Toutes les inégalités de Bell résulte des deux hypothèses fondamentales de localité et de réalisme (en anglais Objective Local Theory, parfois abrégé en OLT). Nous allons maintenant les présenter en détails. Tout l'enjeu est de décrire précisément de quoi dépendent les mesures de $$A$$ et $$B$$.

### a. Le critère de réalisme

Une théorie "réaliste" suppose l'existence d'une réalité indépendente de l'observateur et déterministe, ce qui constitue un des piliers de la mécanique classique. Une telle théorie introduit des probabilités, comme en physique statistique, uniquement parce que l'on ne peut pas décrire complètement les détails microscopiques des systèmes en jeu. Plus précisément, une telle théorie fait l'hypothèse que *l'état de la paire $$\lambda$$ est entièrement suffisant pour déterminer, conjointement avec les réglages des appareils, le résultat des mesures* mais que l'état de chaque paire ne pouvant être connu, il nous faut introduire une mesure de probabilité $$\rho$$ sur l'ensemble $$\Lambda$$ des valeurs pouvant être prises par $$\lambda$$. Par conséquent, cette mesure ne dépend que du mécanisme de production des paires et donc pas des réglages des appareils de mesure, un point très important pour démontrer les inégalités de Bell. Notons que nous n'avons à priori aucune idée de la forme que peut prendre $$\rho$$, et que cette information n'est pas nécessaire pour démontrer les inégalités de Bell.

### b. Le critère de localité

Ce critère s'exprime ainsi: *l'appareil de mesure I fonctionne indépendamment de l'appareil de mesure II*. On pourrait imaginer à l'inverse que des facteurs extérieurs influencent les deux appareils, créant ainsi une corrélation entre les mesures, ou bien qu'un des appareils envoit, juste après avoir fait sa mesure, une information à l'autre, juste avant que ce dernier ne fasse sa mesure, influençant ainsi celle-ci. La conséquence essentielle de ce postulat est que, combiné avec le critère de réalisme, la mesure $$A$$ par l'appareil I ne peut dépendre que du réglage $$a$$ de cet appareil et de l'état de la pair $$\lambda$$. On notera donc $$A(\lambda)$$ en laissant la dépendence en $$a$$ implicite. Et de même pour l'autre mesure, $$B(\lambda)$$, qui ne dépend que de $$\lambda$$ et du réglage $$b$$ de l'appareil II.

On pourrait être tenté d'aller plus loin et de dire que $$A$$ ne peut dépendre que de l'état de la particule 1 mais comme cet état peut être corrélé avec celui de la particule 2, cette hypothèse est en générale fausse. Le critère de localité, qui s'applique aux analyseurs, n'est donc pas équivalent au critère de séparabilité, comme nous l'avions déjà mentionné plus haut.

## 3. Démonstration des inégalités de Bell

La quantité mesurée étant la corrélation entre les mesures sur les membres d'une paire comme nous l'avons expliqué plus haut, le point de départ est donc l'expression de cette corrélation dans notre modèle,

$$ P(A,B) = \int_{\Lambda} A(\lambda) B(\lambda) d\rho(\lambda). $$

Avec un suffisament grand nombre $$N$$ de paires, on aura alors $$D_N(a,b) \approx P(A,B)$$. On voit que la moyenne qui apparaît dans $$D_N(a,b)$$ devient naturellement une moyenne prenant en compte la distribution de l'états de la paire de particule.

On considère maintenant deux réglages $$a$$ et $$a'$$ de l'appareil I et deux réglages $$b$$ et $$b'$$ de l'appareil II et on introduit les observables associées $$A$$, $$A'$$, $$B$$ et $$B'$$. Nous allons démontré une inégalité due à  (Clauser, Horne, Shimony et Holt (1969))[[Clauser:1969]], et donc appelée inégalité CHSH,

$$\underbrace{|P(A',B) - P(A,B) + P(A',B') + P(A,B')|}_{\displaystyle R(A, A', B, B')} \le 2$$

quelques soient les réglages.

La démonstration est très simple. On commence par majorer la valeur absolue de l'intégrale par l'intégrale de la valeur absolue,

$$ \begin{aligned}
R(A, A', B, B')
    &\le \int_\Lambda \big|[A'(\lambda) - A(\lambda)] B(\lambda)\\
    &+ [A'(\lambda) + A(\lambda)]B'(\lambda) \big| d\rho(\lambda).
\end{aligned}\notag $$

Comme $$A$$ et $$A'$$ prennent seulement les valeurs $$\pm 1$$, ou bien $$A'(\lambda) \ne A(\lambda)$$, auquel cas le premier crochet vaut $$\pm 2$$ et le second crochet 0, ou bien  $$A'(\lambda) = A(\lambda)$$, auquel cas le premier crochet vaut 0 et le second crochet vaut $$\pm 2$$. Comme $$B$$ et $$B'$$ ne prennent que les valeurs +1 et -1, dans les deux cas, l'intégrande est majoré par 2, ce qui finit la preuve puisque par définition d'une mesure de probabilité, $$\int_\Lambda d\rho(\lambda)=1$$.

Un test expérimental consistera alors à mesurer

$$R(a,a',b,b') = D_N(a',b) - D_N(a,b) + D_N(a',b') + D_N(a,b')$$

et à chercher des réglages $$a$$, $$a'$$, $$b$$, $$b'$$ des appareils de mesure tels que $$R(a,a',b,b')$$ soit plus grand que 2 en valeur absolue. De telles expériences furent réalisées, et cette borne fut effectivement violée. La conclusion est donc que l'une ou l'autre des deux hypothèses de réalisme ou de localité est falsifiée. L'étape suivante est alors d'étudier les prédictions des théories qui ne contiennent pas ces hypothèses, et de comparer leur prédictions pour les bornes de $$R(a,a',b,b')$$. En premier lieu, vient la mécanique quantique, pour laquelle les deux hypothèses sont fausses, mais il est aussi intéressant de chercher si il est possible de déveloper une théorie conservant l'une des deux.

## 4. Violation des inégalités de Bell en mécanique quantique

Nous allons maintenant étudier la violation des inégalités de Bell prédite par la mécanique quantique.

### a. Le cadre quantique

Il faut trouver des réglages tels que la mécanique quantique prédise que $$R(A, A', B, B')$$ soit plus grand que 2, et le plus grand possible afin d'augmenter le poids statistique du résultat. Pour cela, il me faut d'abord introduire la machinerie quantique. Je noterais $$\Hsingle$$ l'espace de Hilbert des états non-corrélés de la particule 1 prise isolément, et comme les deux particules sont identiques, il s'agit aussi de l'espace de Hilbert pour la particule 2 prise isolément. L'espace de Hilbert pour une paire est alors le produit tensoriel $$\Hpair=\Hsingle\otimes\Hsingle$$. Ensuite, les observables $$A$$, $$A'$$, $$B$$ et $$B'$$ deviennent tout d'abord des opérateurs hermitiens de $$\Hsingle$$ opérant sur la première particule pour les deux premiers, et la seconde particule pour les deux derniers, dans les deux cas sur une particule isolée. La propriété que les observables prennent seulement les valeurs $$\pm 1$$ se traduit par le fait que les valeurs propres de $$A$$, $$A'$$, $$B$$ et $$B'$$ sont $$\pm 1$$.

Ensuite, les observables $$AB$$, $$A'B$$, etc deviennent les produits tensoriels des opérateurs correspondants, $$A\otimes B$$, $$A'\otimes B$$, etc. Enfin, les espérances doivent maintenant s'entendre au sens quantique, i.e. pour tout opérator $$O$$,

$$\expect{O} = \bra\psi O \ket\psi,$$

où $$\ket\psi$$ est l'état quantique dans lequelle toutes les paires sont préparées.

L'expression $$R(A, A', B, B')$$ bornée par les inégalités de Bell s'écrit alors comme la valeur absolue

$$ R(A, A', B, B') = \left| \expect{S} \right| \label{Rexpect} $$

de l'espérance de l'opérateur

$$S = A'\otimes B - A\otimes B + A'\otimes B' + A\otimes B'.$$

### b. Une condition nécessaire: la non-séparabilité

Ceci étant posé, le premier résultat important que:

{{Théorème 1}} L'espérance de $$S$$ pour un ket séparable $$\ket\psi=\ket\phi\ket\xi$$ ne viole pas les inégalités CHSH.

Dans ce cas,

$$\expect{S}=\left[\expect{A'} - \expect{A}\right]\expect{B} + \left[\expect{A'} + \expect{A}\right]\expect{B'}, \notag$$

où les espérances sont pour $$\ket\phi$$ dans le cas de $$A$$ et $$A'$$ et pour $$\ket\xi$$ dans le cas de $$B$$ et $$B'$$. Le théorème résulte alors du lemme suivant.

{{Lemme 1}} Si $$u$$, $$v$$, $$x$$, et $$y$$ sont dans $$[-1, 1]$$, alors

$$-2 \le u(x-y)+v(x+y) \le 2.$$

Posons $$X=(x+y)/2$$ et $$Y=(x-y)/2$$. Le domaine de $$(x,y)$$ devient pour $$(X,Y)$$:

$$\begin{align}
&-1 < X + Y < 1,\\
&-1 < X - Y < 1,
\end{align}$$

Donc, du fait du domaine autorisé pour $$u$$ et $$v$$, si $$X \ge 0$$ et $$Y \ge 0$$, alors $$uX + vY \le X+Y \le 1$$. De même, si $$X \ge 0$$ et $$Y < 0$$, alors $$uX + vY \le X-Y \le 1$$. On finit en traitant de manière similaire toutes les possibilités restantes de signes de $$X$$ et $$Y$$.

CQFD.

### c. La non-séparabilité: une condition suffisante {#section-c}

Je vais dans cette section et les suivantes considérer le cas de particule de spin 1/2, pour des raisons pédagogiques de simplicité mais les résultats que je vais démontrer peuvent être prouver pour d'autres systèmes quantiques. La dimension de $$\Hsingle$$ est donc 2 et l'on y définit les opérateurs de spin habituels $$S_x, S_y, S_z$$, à une normalisation de $$\hbar/2$$ près, de manière à avoir des valeurs propres $$\pm 1$$. On peut alors se donner une base $$\mathcal{B}$$ où les matrices de ces opérateurs sont les matrices de Pauli $$\sigma_x$$, $$\sigma_y$$, et $$\sigma_z$$.

Ensuite, je vais avoir besoin d'un représentation simple et générale d'un état non-séparable de la paire: une décomposition de Schmidt. Tout ket $$\ket\psi$$ peut se décomposer en

$$\ket\psi = c_1 \ket{\phi_1}\ket{\theta_1} + c_2 \ket{\phi_2}\ket{\theta_2},\notag$$

où $$\mathcal{B}_1=(\ket{\phi_1}, \ket{\phi_2})$$ et $$\mathcal{B}_2=(\ket{\theta_1}, \ket{\theta_2})$$ sont deux bases orthonormées de $$\Hsingle$$, et $$c_1$$ et $$c_2$$ sont deux nombres réels positifs. Ils doivent satisfaire $$c_1^2+c_2^2=1$$ pour normaliser $$\ket\psi$$, et donc il existe $$\varphi\in[0,\pi/2]$$ tel que

$$\ket\psi = \cos\varphi \ket{\phi_1}\ket{\theta_1} + \sin\varphi \ket{\phi_2}\ket{\theta_2}.$$

On peut maintenant établir la condition suivante.

{{Théorème 2}}
$$\ket\psi$$ est non-séparable si et seulement si $$\sin2\varphi \ne 0.$$

En effet, si $$\ket\psi$$ est séparable, alors

$$\ket\psi = \ket\xi\ket\eta,$$

mais il existe alors des nombres complexes $$u_1$$, $$u_2$$, $$v_1$$, et $$v_2$$ tels que

$$\begin{align*}
\ket\xi &= u_1\ket\phi_1 + u_2\ket\phi_2,\\
\ket\eta &= v_1\ket\theta_1 + v_2\ket\theta_2,
\end{align*}$$

et on a donc

$$\begin{align*}
&\cos\varphi \ket{\phi_1}\ket{\theta_1} + \sin\varphi \ket{\phi_2}\ket{\theta_2} \\
&= u_1v_1\ket\phi_1 +u_2v_2\ket\phi_2\ket\theta_2 + u_1v_2\ket\phi_1\ket\theta_2 + u_2v_1\ket\phi_2\ket\theta_1.
\end{align*}$$

Par conséquent, $$u_1v_2=u_2v_1=0$$ et donc $$\cos\varphi=u_1v_1=0$$ ou $$\sin\varphi=u_2v_2=0$$. À l'inverse, si $$\sin2\varphi=0$$, alors $$\ket\psi=\ket{\phi_1}\ket{\theta_1}$$ ou $$\ket{\phi_2}\ket{\theta_2}$$. Ceci démontre le théorème par contraposée.

CQFD.

Je vais maintenant choisir les opérateurs suivants

$$\begin{aligned}
&A = S_{1,x},\\
&A' = S_{1,z},\\
&B = S_{1,x}\sin b + S_{1,z}\cos b,\\
&B' = -S_{1,x}\sin b + S_{1,z}\cos b,
\end{aligned}\label{pauliDecomposition}$$

où $$S_{1,x}$$ et $$S_{1,z}$$ ont les matrices respectives $$\sigma_x$$ et $$\sigma_z$$ dans $$\mathcal{B}_1$$ tandis que $$S_{2,x}$$ et $$S_{2,z}$$ ont les matrices respectives $$\sigma_x$$ et $$\sigma_z$$ dans $$\mathcal{B}_2$$. Le protocole expérimental est typiquement le suivant: les particules s'éloignent de la source en directions opposées le long de l'axe des $$y$$. On mesure alors la projection du spin de chacune dans une direction qui est dans le plan $$x-z$$. Ceci pourrait être réalisé avec deux appareils de Stern et Gerlach.

En utilisant alors le fait que

$$\bra{\phi_i}\bra{\theta_i}S_{1,e}\otimes S_{2,f}\ket{\phi_j}\ket{\theta_j} = \bra{\phi_i}S_{1,e}\ket{\phi_j}\bra{\theta_i}S_{2,f}\ket{\theta_j}=\left(\sigma_e\right)_{ij}\left(\sigma_f\right)_{ij},$$

on trouve facilement, en notant que les termes $$S_x\otimes S_z$$ et $$S_z\otimes S_x$$ donnent des contributions nulles, que

$$\begin{align*}
\expect{A'\otimes B} &= \expect{A'\otimes B'} = \cos b,\\
\expect{A\otimes B} &= \sin2\varphi\sin b = -\expect{A\otimes B'},
\end{align*}$$

et donc que

$$\expect{S} = 2\cos b(1 - \sin 2\varphi\tan b).$$

En choisissant

$$\tan b = -\sin 2\varphi, \label{choice:of:b:for:max:violation}$$

on a

$$\expect{S} = 2(1 + \sin^2 2\varphi)^\frac{1}{2},$$

qui est en dehors de l'intervalle $$[-2,2]$$ pour toutes les valeurs de $$\varphi\in]0,\pi/2[$$, c'est à dire pour toutes les kets non-séparables. Cette démonstration est un simplification dans un cas spécial simple de celle beaucoup plus générale de [[Gisin:1992aa]].

### d. Violation maximale

Le dernier résultat de la section précédente montre que la valeur maximum de $$\expect{S}$$ est égale à $$2\sqrt2$$, obtenue pour $$\varphi=\pi/4$$. On peut alors se demander si il est possible de faire mieux. La réponse est non. Cette borne supérieure fut démontré pour la première fois par [[Cirelson:1980]] -- son nom est aussi orthographié Tsirelson parfois mais nous allons ici utiliser la démonstration de [[Braunstein:1992]].

Elle dépend du résultat suivant:

$$ S^2 = 4I - \comm{A}{A'} \otimes \comm{B}{B'}. \label{Sfundamental} $$

Nous allons en effet voir que cette propriété est pleine de conséquences pour les bornes de $$R(A,A',B,B')$$ mais nous allons tout d'abord la démontrer. Tout d'abord, comme les opérateurs hermitiens $$A$$, $$A'$$, $$B$$ et $$B'$$ ont toute leur valeur propre égale à $$\pm 1$$, nécessairement

$$ A^2 = A'^2 = B^2 = B'^2 = I. $$

Ensuite, dans les termes de $$S^2$$, les multiplications de produits tensoriels deviennent des produits tensoriels de multiplications, dans lesquelles on peut alors éliminer tous ces carrés. Cela donne

$$  \begin{split}
    S^2  &= I - A'\otimes A + B\otimes B' + A'A\otimes  BB' \\
                     & -A\otimes A' + I - AA'\otimes BB' - B\otimes B' \\
                     & + B'\otimes B - A'A\otimes B'B + I + A'\otimes A \\
                     & + AA'\otimes B'B - B'\otimes B + A\otimes A' + I  \\
    \end{split}
$$

CQFD

Passons maintenant à l'exploitation de (\ref{Rexpect}) et (\ref{Sfundamental}). Comme un commutateur a une trace nulle, les valeurs propres de l'opérateur hermitien $$i \comm{A}{A'}$$ sont $$\alpha$$ et $$-\alpha$$ pour un certain nombre réel $$\alpha \ge 0$$. Soient $$\ket\alpha$$ et $$\ket{-\alpha}$$ les vecteurs propres associés. Avec le même raisonnement, les valeurs propres de $$i \comm{B}{B'}$$ sont $$\beta$$ et $$-\beta$$ pour un certain nombre réel $$\beta \ge 0$$ et les vecteurs propres associés seront notés $$\ket\beta$$ et $$\ket{-\beta}$$. Il est alors immédiat que $$S^2$$ a deux valeurs propres dégénérées, $$4 + \alpha\beta$$ et $$4 -\alpha\beta$$, qui sont nécessairement positives puisque $$S^2$$ est positif, et que les espaces propres associés sont respectivement $$\mathcal{U} = \vec{\ket\alpha\ket\beta, \ket{-\alpha}\ket{-\beta}}$$ et $$\mathcal{V} = \vec{\ket{-\alpha}\ket\beta, \ket\alpha\ket{-\beta}}$$.
Par conséquent, les valeurs propres de $$S$$ s'écrivent ou bien $$\pm\sqrt{4+\alpha\beta}$$ ou bien $$\pm\sqrt{4-\alpha\beta}$$. Les premières (resp. les secondes) ont leurs vecteurs propres dans $$U$$ (resp. $$V$$).

On voit donc que si $$A$$ commute avec $$A'$$ ou bien si $$B$$ commute avec $$B'$$, les valeurs propres de $$S$$ sont égales à $$\pm2$$, et par conséquent $$R(A,A',B,B')$$ est toujours entre -2 et 2: la borne de l'inégalité de Bell n'est violée pour aucun réglage et pour aucun état quantique de la paire $$\ket\psi$$. Rappellons en effet que pour un opérateur hermitien tel que $$S$$, la borne supérieure de l'espérance $$\bra\psi S\ket\psi$$, quand $$\ket\psi$$ décrit l'ensemble des kets tels que $$\braket{\psi}{\psi}=1$$, est la plus grande des valeurs propres de $$S$$.

Si au contraire aucune de ces paires d'opérateurs ne commute, alors $$\alpha\beta > 0$$. Dans ce cas, les valeurs propres $$\pm\sqrt{4+\alpha\beta}$$ sont en dehors de l'intervalle $$[-2,2]$$.
Quelle violation maximale peut-on obtenir? Comme $$\matnorm{\comm{A}{A'}} \le 2 \matnorm{A} \matnorm{A'}$$, nécessairement $$-2 \le \alpha \le 2$$ puisque $$\matnorm{A}=\matnorm{A'}=1$$. De même, $$-2 \le \beta \le 2$$. Cela démontre que la borne maximale est $$2\sqrt{2}$$ comme annoncé plus haut mais nous voyons aussi que cette borne est réalisée quand $$\alpha = \beta = \pm 2$$.

Il est facile de voir que l'exemple étudié en [section c](#section-c) rentre dans ce théorème. En effet, nous avons vu que la violation maximale est obtenue pour $$\varphi=\pi/4$$, et donc avec l'équation (\ref{choice:of:b:for:max:violation}), on a $$b=-\pi/4$$, et donc les équations (\ref{pauliDecomposition}) impliquent que $$\comm{A}{A'}$$ et $$\comm{B}{B'}$$ admettent comme matrice $$-2\sigma_y$$ dans les bases respectives $$\mathcal{B}_1$$ et $$\mathcal{B}_2$$. Comme les valeurs propres de $$\sigma_y$$ sont $$\pm 1$$, CQFD.
