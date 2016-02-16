---
title: Une Inégalité de Bell
kind: article
category: physique
---

# Démonstration d'une <br>inégalité de Bell

## 1. L'expérience

Toutes les expériences réalisées pour tester les inégalités de Bell utilisent la version de ces inégalités dite CHSH car introduites par Clauser, Horne, Shimony et Holt.[^CHSH69] Je vais donc présenter cette version. La discussion des points de physique suit celle de Clauser et Horne,[^CH74] où les auteurs démontrent une autre inégalité de Bell, dite CH, dont je dirais juste qu'elle est plus générale au sens où CHSH peut être démontrée à partir de CH.

Toutes les tests expérimentaux des inégalités de Bell peuvent être idéalisés comme suit. Il y a en premier lieu une source qui émet une à une des paires de particules -- en pratique des photons ou des ions. Pour chaque paire, l'une des particules, notée 1, va vers un appareil de mesure I tandis que l'autre, notée 2, va vers un appareil de mesure II. Ces deux appareils sont identiques mais chacun peut avoir des réglages différents, que je noterais $a$ et $b$ respectivement. L'appareil I va mesurer une observable $A$ de la particule 1 tandis que l'appareil II va mesurer une observable $B$ de la particule 2. Nous allons faire l'hypothèse que $A$ et $B$ ne peuvent prendre que les valeurs 1 et -1. En pratique, $a$ et $b$ sont des vecteurs unitaires et $A$ (resp. $B$) est la projection du spin de la particule 1 (resp. 2) selon la direction $a$ (resp. $b$). De plus, $a$ et $b$ sont assujettis à rester dans des plans fixes et donc, en pratique, ces réglages se résument à un angle pour chaque appareil.

L'expérience consiste alors à mesurer $A$ et $B$ pour un grand nombre de paires et à calculer leur corrélation, en prenant la moyenne du produit $AB$. Il faut s'assurer que les paires sont émises à des intervalles de temps suffisamment grands pour que l'on puisse être certain que les appareils I et II font des mesures sur les membres de la même paire. L'astuce est alors de répéter l'expérience avec des réglages différents, de combiner les résultats, et de les comparer avec les prédictions du modèle, comme nous allons le voir maintenant.

## 2. Le modèle

L'information contenue dans chaque paire, ou du moins celle qui aura une influence sur les mesures, sera notée $\lambda$, qui est aussi appelée l'état de la paire à cause de l'influence du vocabulaire de la mécanique quantique. Le point fondamental est qu'une partie de cette information ne nous est pas connue: ce sont les fameuses variables cachées. En pratique, $\lambda$ comprend donc le spin de chaque particule et peut-être aussi des élements d'information dont nous n'avons pas la moindre idée. On connaît le spin total de chaque paire grâce à ce que l'on connaît du mécanisme de production des paires mais on ignore le spin de chaque particule avant mesure. Je voudrais insister sur deux points importants:

- $\lambda$ varie aléatoirement d'une paire à l'autre et $\lambda$ évolue peut-être aussi stochastiquement pendant le temps de vol des photons d'une même paire. Cela ne signifie pas que l'on renie le déterminisme de la mécanique classique mais simplement que l'on doit se contenter de traiter statistiquement des processus dont tous les détails ne nous sont pas connus;
- on ne suppose pas que l'information $\lambda$ au sujet de la paire est un simple juxtaposition d'informations indépendantes $\lambda_1$ et $\lambda_2$ au sujet de respectivement la première et la deuxième particule de la paire -- cette supposition est ce que l'on peut appeler un critère de séparabilité. Pour enfoncer le clou on laisse la porte ouverte à des corrélations entre les états des deux particules -- au minimum des corrélations entre les spins en pratique. L'idée est que ces corrélations sont causées par le mécanisme de production de la paire, que malheureusement nous ne connaissons pas.

Toutes les inégalités de Bell résulte des deux hypothèses fondamentales de localité et de réalisme (en anglais Objective Local Theory, parfois abrégé en OLT). Nous allons maintenant les présenter en détails. Tout l'enjeu est de décrire précisément de quoi dépendent les mesures $A$ et $B$.

### a. Le critère de réalisme

Une théorie "réaliste" suppose l'existence d'une réalité, au sens de la mécanique classique, c'est à dire déterministe, et introduit des probabilités, comme en physique statistique, uniquement parce que l'on ne peut pas décrire complètement les détails microscopiques des systèmes en jeu. Plus précisément, une telle théorie fait l'hypothèse que **l'état de la paire $\lambda$ est entièrement suffisant pour déterminer, conjointement avec les réglages des appareils, le résultat des mesures** mais que l'état de chaque paire ne pouvant être connu, il nous faut introduire une densité de probabilité $\rho(\lambda)$ sur l'ensemble $\Lambda$ des valeurs pouvant être prises par $\lambda$. Notons que cette densité ne dépend que du mécanisme de production des paires et donc pas des réglages des appareils de mesure, un point très important pour démontrer les inégalités de Bell. Notons aussi que nous n'avons à priori aucune idée de la forme que peut prendre $\rho(\lambda)$, et que cette information n'est pas nécessaire pour démontrer les inégalités de Bell.

### b. Le critère de localité

Ce critère s'exprime ainsi: **l'analyseur 1 fonctionne indépendamment de l'analyseur 2**.

À l'évidence cette hypothèse n'est guère évidente si les deux appareils sont très proches l'un de l'autre. Elle devient plus naturelle si ils sont distants mais cela reste subjectif. Cependant, la relativité restreinte permet de rendre ce critère quantitatif, puisque aucune information ne peut passer d'un analyseur à l'autre plus vite que la lumière. L'implémentation expérimentale de cette idée n'est pas aisée malheureusement. La seconde expérience de Aspect et al.[^Aspect82] fut une la première à tenter de fermet cette faille potentielle, appelée "timing loophole" dans la littérature car on fait varier les réglages des polariseurs pendant le vol des photons de la source aux détecteurs avec un timing suffisamment rapide pour s'assurer du critère de localité. Ce "timing loophole" fut finalement fermé pour la première fois de manière satisfaisante par Weihs et al. [^Weihs98] en 1998.

Par souci de simplicité, laissons les détails de coté et admettons le critère de localité. Il en résulte une conséquence importante: combiné avec le critère de réalisme, la mesure $A$ par l'appareil I ne peut dépendre que du réglage $a$ de cet appareil et de l'état de la pair $\lambda$. On notera donc $A(a, \lambda)$. Et de même pour l'autre mesure, $B(b, \lambda)$.

On pourrait être tenté d'aller plus loin et de dire que $A$ ne peut dépendre que de l'état de la particule 1 mais comme cet état peut être corrélé avec celui de la particule 2, cette hypothèse est en générale fausse. Le critère de localité, qui s'applique aux analyseurs, n'est donc pas équivalent au critère de séparabilité, comme nous l'avions déjà mentionné plus haut.

## 3. Démonstration des inégalités de Bell

Nous nous intéressons à la fonction de corrélation entre les mesures sur les membres d'une paire:

$$ P(a,b) = \int_{\Lambda} A(a, \lambda) B(b, \lambda) d\rho(\lambda). $$

On considère maintenant deux réglage $a$ et $a'$ de l'appareil I et deux réglages $b$ et $b'$ de l'appareil II. L'inégalité CHSH que nous voulons démontrer est:

$$ R(a, a', b, b') = |P(a',b) - P(a,b) + P(a',b') + P(a,b')| \le 2 $$

Tout d'abord,

$$ |P(a',b) - P(a,b) + P(a',b') + P(a,b')|
    \le |P(a',b) - P(a,b)| + |P(a',b') + P(a,b')| \notag $$

et chaque terme du membre de droite peut alors être majoré séparément:

$$
\begin{aligned}
    |P(a',b) - P(a,b)| & =
    \left|
    \int_\Lambda (A(a', \lambda) - A(a, \lambda)) B(b, \lambda) d\rho(\lambda)
    \right| \notag \\
    & \le \int_\Lambda |A(a', \lambda) - A(a, \lambda)| |B(b, \lambda)| d\rho(\lambda) \notag
\end{aligned}
$$

et

$$
\begin{aligned}
    |P(a',b') + P(a,b')| & =
    \left|
    \int_\Lambda (A(a', \lambda) + A(a, \lambda)) B(b', \lambda) d\rho(\lambda)
    \right| \notag \\
    & \le \int_\Lambda |A(a', \lambda) + A(a, \lambda)| |B(b', \lambda)| d\rho(\lambda). \notag
\end{aligned}
$$

Comme $B$ ne prend que les valeurs +1 et -1, on a donc

$$ R(a, a', b, b') \le \int_\Lambda |A(a', \lambda) - A(a, \lambda)| + |A(a', \lambda) + A(a, \lambda)| d\rho(\lambda). \notag $$

Si $A(a', \lambda)$ et $A(a, \lambda)$ ont la même valeur, alors le 1er terme est égal à 0 et le 2ème à 2; à l'inverse, si ils ont des valeurs différentes, le 1er terme est égal à 2 et le 2ème à 0. Donc dans tous les cas, l'intégrande est inférieur à 2.

CQFD.

## 4. Violation des inégalités de Bell

### a. Mesures

Expérimentalement, tirant parti encore une fois du fait que $A$ et $B$ ne prennent que les valeurs +1 et -1, on mesurera la corrélation par

$$ P(a,b) \approx \frac{N_\text{identique}(a,b)-N_\text{différente}(a,b)}{N_\text{identique}(a,b)+N_\text{différente}(a,b)} $$

où $N_\text{identique}(a,b)$ (resp. $N_\text{différente}(a,b)$) sont respectivement le nombre de paires pour lesquelles les valeurs mesurées $A$ et $B$ sont identiques (resp. différentes).

Tout cela suppose malheureusement (outre que le nombre total $n$ de paires est grand pour éviter les fluctuations statistiques, ce qui est réalisable) que les appareils de mesures sont parfaits. En effet si des particules échappent à la mesure, les fréquences mesurées ne correspondront pas aux probabilités ci-dessus. Cette faille potentielle est appelée "detector efficiency loophole" dans la littérature. L'expérience d'Aspect et al. fut la première à sérieusement fermer cette faille mais pas suffisamment au goût de beaucoup -- il faut savoir aussi que pour avoir un grand nombre total $n$ de paires, il est tentant d'augmenter la fréquence d'émission et on risque alors de compter de fausses coïncidences, entre des photons de deux paires successives, ce qui est un autre problème. C'est pourquoi de nombreuses autres expériences testant les inégalités de Bell furent menées depuis. Finalement en 2001, le "detector efficiency loophole" semble avoir été fermé pour la première fois à la satisfaction de la communauté des physiciens par Rowe et ses collaborateurs [^Rowe01] (j'écris "semble" car je ne suis pas un expert). Il restait donc à fermer les deux failles dans une seule et même expérience, ce qui fut fait très récemment par Hensen et al.[^Hensen15] Il y a eu plusieurs autres expériences marquantes s'attaquant à l'une ou l'autre de ces failles que je n'ai pas cité: je renvoie le lecteur à la bibliographie de Hensen et al.[^Hensen15]

En passant, les expériences d'Aspect et al. ne furent donc pas du tout définitives, contrairement à ce que beaucoup de gens croient (et pas seulement en France).

### b. Choix des réglages

Il faut trouver des réglages tels que la mécanique quantique prédise que $R(a, a', b, b')$ soit plus grand que 2, et le plus grand possible afin d'augmenter le poids statistique du résultat. Contrairement au modèle réaliste que nous avons analysé jusqu'à présent, il faut à priori rendre explicites les détails de l'expérience afin de pouvoir faire des prédictions quantiques.

Mais il se trouve que dans le cas des inégalités CHSH, on peut prouver que la borne supérieure pour $R(a, a', b, b')$ est $2\sqrt{2}$ quasiment sans faire aucune hypothèse supplémentaire. Ce résultat fut démontré pour la première fois par Cirel'son[^Cirel80] -- son nom est aussi orthographié Tsirelson parfois. Dans le cas qui nous concerne, nous supposons que toutes les paires sont dans le même état quantique $\mid \psi \rangle$ du fait des particularités du processus de création (ce qui est toujours vérifié en pratique) et nous commençons par remplacer $P(x,y)$ par son équivalent quantique, l'espérance du produit $A(x)B(y)$, où $A(x)$ et $B(y)$ sont maintenant des opérateurs hermitiens représentant les observables mesurées,

$$  \newcommand{\ket}[1]{\left| #1 \right\rangle}
    \newcommand{\bra}[1]{\left\langle #1 \right|}
    \newcommand{\expect}[1]{\left\langle #1 \right\rangle}
    \newcommand{\comm}[2]{\left[ #1, #2 \right]}
    \newcommand{\Hsingle}{\mathcal{S}}
    \newcommand{\Hpair}{\mathcal{P}}
    \newcommand{\vec}[1]{\mathrm{Vec}\left(#1\right)}
    \newcommand{\matnorm}[1]{\Vert #1 \Vert}
\expect{A(x)B(y)} = \bra{\psi} A(x)B(y) \ket{\psi}.
$$

L'expression $R(a, a', b, b')$ bornée par les inégalités de Bell s'écrit alors comme l'espérance

$$ R(a, a', b, b') = \left| \bra{\psi} S(a, a', b, b') \ket{\psi} \right| \label{Rexpect} $$

de l'opérateur

$$ S(a,a',b,b') = A(a')B(b) - A(a)B(b) + A(a')B(b') + A(a)B(b'). $$

À ce stade, il est utile d'introduire le reste du décor quantique. Nous faisons l'hypothèse que l'espace de Hilbert $\Hsingle$ des états non-corrélés de la particule 1 prise isolément, et bien sûr aussi de la particule 2 prise isolément, est de dimension 2, ce qui est réalisé en pratique. L'opérateur $A(x)$ s'écrit $A(x) = A_1(x) \otimes I$ où $A_1(x)$ opère sur $\Hsingle$ seulement et où $I$ est l'opérateur identité de $\Hsingle$. De même, $B(y) = I \otimes B_2(y)$. Par conséquent, les opérateurs $A(x)$ et $B(y)$ commutent quelque soit les réglages $x$ et $y$, et $A(x)B(y)=B(y)A(x)=A_1(x) \otimes B_2(y)$. Finalement, étant donné deux bases $(\ket{u}, \ket{u'})$ et $(\ket{v}, \ket{v'})$ de $\Hsingle$, les produits cartésiens $\ket{u}\ket{v}$, $\ket{u}\ket{v'}$, $\ket{u'}\ket{v}$ et $\ket{u'}\ket{v'}$ forment une base de l'espace de Hilbert $\Hpair$ des états de la paire, qui est donc de dimension 4.


Ceci étant posé, nous pouvons maintenant introduire un résultat fondamental (dont j'ai pris connaissance dans Braunstein et al.[^Braunstein92]),

$$ S(a,a',b,b')^2 = 4I - \comm{A(a)}{A(a')} \comm{B(b)}{B(b')}. \label{Sfundamental} $$

Nous allons en effet voir que cette propriété est pleine de conséquences pour les bornes de $R(a, a', b, b')$ mais nous allons tout d'abord la démontrer.

Nous allons temporairement alléger les notations en écrivant $A, A', B, B'$ au lieu de $A(a), A(a'), B(b), B(b')$ respectivement. Comme les opérateurs $A, A'$ commutent avec les opérateurs $B, B'$, nous pouvons regrouper les premiers à gauche et les seconds à droite dans les termes de $S^2$. Ensuite, comme tous les $A, A', B, B'$ ont pour seules valeurs propres +1 et -1, nécessairement

$$ A^2 = A'^2 = B^2 = B'^2 = I, $$

et nous pouvons donc éliminer ces carrés dans les regroupements sus-cités. Cela donne

$$  \begin{split}
    S(a, a', b, b')^2  &= I - A'A + BB' + A'A BB' \\
                     & -AA' + I - AA'BB' - BB' \\
                     & + B'B - A'AB'B + I + A'A \\
                     & + AA'B'B - B'B + AA' + I  \\
    \end{split}
$$

CQFD

Passons maintenant à l'exploitation de (\ref{Rexpect}) et (\ref{Sfundamental}). Comme un commutateur a une trace nulle, les valeurs propres de l'opérateur hermitien $i \comm{A_1(a)}{A_1(a')}$ sont $\alpha$ et $-\alpha$ pour un certain nombre réel $\alpha$. Soient $\ket{\alpha}$ et $\ket{-\alpha}$ les vecteurs propres associés. Avec le même raisonnement, les valeurs propres de $i \comm{B_2(b)}{B_2(b')}$ sont $\beta$ et $-\beta$ pour un certain nombre réel $\beta$ et les vecteurs propres associés seront notés $\ket{\beta}$ et $\ket{-\beta}$. Il est alors immédiat que $S^2$ a deux valeurs propres dégénérées, $4 + \alpha\beta$ et $4 -\alpha\beta$, qui sont nécessairement positives puisque $S^2$ est positif, et que les espaces propres associés sont respectivement $U = \vec{\ket{\alpha}\ket{\beta}, \ket{-\alpha}\ket{-\beta}}$ et $V = \vec{\ket{-\alpha}\ket{\beta}, \ket{\alpha}\ket{-\beta}}$. Par conséquent, les valeurs propres de $S$ s'écrivent ou bien $\pm\sqrt{4+\alpha\beta}$ ou bien $\pm\sqrt{4-\alpha\beta}$. Les premières (resp. les secondes) ont leurs vecteurs propres dans $U$ (resp. $V$).

On voit donc que si $A(a)$ commute avec $A(a')$ ou bien si $B(b)$ commute avec $B(b')$, les valeurs propres de $S(a,a',b,b')$ sont égales à $\pm2$, et par conséquent $R(a,a',b,b')$ est toujours entre -2 et 2: la borne de l'inégalité de Bell n'est violée pour aucun réglage et pour aucun état quantique de la paire $\ket{\psi}$.

Si au contraire aucune de ces paires d'opérateurs ne commute, alors ou bien $\alpha\beta > 0$, ou bien $\alpha\beta < 0$. Dans le premier cas, une valeur propre $\pm\sqrt{4+\alpha\beta}$ sera en dehors de l'intervalle $[-2,2]$ tandis que dans le second cas, une valeur propre $\pm\sqrt{4-\alpha\beta}$ sera en dehors de cet intervalle. Une paire préparée dans un état propre associé violera alors la borne de l'inégalité de Bell pour le choix de réglages correspondant à ces valeurs de $\alpha$ et $\beta$. Quelle violation maximale peut-on obtenir? Comme $\matnorm{\comm{A(a)}{A(a')}} \le 2 \matnorm{A(a)} \matnorm{A(a')}$, nécessairement $-2 \le \alpha \le 2$ puisque $\matnorm{A(a)}=\matnorm{A(a')}=1$. De même, $-2 \le \beta \le 2$. Cela démontre que la borne maximale est $2\sqrt{2}$ comme annoncé plus haut mais nous voyons aussi que cette borne est réalisée quand $\alpha = \beta = \pm 2$.


## Bibliographie

[^CHSH69]: John F. Clauser, Michael A. Horne, Abner Shimony, and Richard A. Holt. Proposed experiment to test local hidden-variable theories. Phys. Rev. Lett., 23:880–884, Oct 1969.

[^CH74]: John F. Clauser and Michael A. Horne. Experimental consequences of objective local theories. Phys. Rev. D, 10:526–535, Jul 1974.

[^Aspect82]: Alain Aspect, Jean Dalibard, and G ́erard Roger. Experimental test of bell’s inequalities using time- varying analyzers. Phys. Rev. Lett., 49:1804–1807, Dec 1982.

[^Rowe01]: M. A. Rowe, D. Kielpinski, V. Meyer, C. A. Sackett, W. M. Itano, C. Monroe, and D. J. Wineland. Experimental violation of a bell’s inequality with efficient detection. Nature, 409(6822):791–794, 02 2001.

[^Weihs98]: Gregor Weihs, Thomas Jennewein, Christoph Simon, Harald Weinfurter, and Anton Zeilinger. Violation of bell’s inequality under strict einstein locality conditions. Phys. Rev. Lett., 81:5039– 5043, Dec 1998.

[^Hensen15]: B. Hensen, H. Bernien, A. E. Dreau, A. Reiserer, N. Kalb, M. S. Blok, J. Ruitenberg, R. F. L. Vermeulen, R. N. Schouten, C. Abellan, W. Amaya, V. Pruneri, M. W. Mitchell, M. Markham, D. J. Twitchen, D. Elkouss, S. Wehner, T. H. Taminiau, and R. Hanson. Loophole-free bell inequality violation using electron spins separated by 1.3 kilometres. Nature, 526(7575):682–686, 10 2015.

[^Cirel80]: B. S. Cirel’son. Quantum generalizations of bell’s inequality. Letters in Mathematical Physics, 4:93–100, 1980.

[^Braunstein92]: Samuel L. Braunstein, A. Mann, and M. Revzen. Maximal violation of bell inequalities for mixed states. Phys. Rev. Lett., 68:3259–3261, Jun 1992.]