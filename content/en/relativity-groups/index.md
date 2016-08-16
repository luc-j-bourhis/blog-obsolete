---
title: Viable Changes of Inertial Frames
kind: article
category: physics
bibliography:
    Einstein:1905:
        title: Zur Elektrodynamik bewegter Körper
        authors:
            - Einstein, Albert
        journal: Annalen der Physik
        volume: 17
        year: 1905
        pages: 891
        note: An English translation is available at <https://www.fourmilab.ch/etexts/einstein/specrel/www/> both as a web page and as a print-quality PDF
    Lee:1975:
        authors:
            - Lee, A. R.
            - Kalotas, T. M.
        title: Lorentz transformations from the first postulate
        journal: American Journal of Physics
        volume: 43
        year: 1975
        pages: 434--437
    Levy-Leblond:1976:
        authors:
            - Lévy-Leblond, Jean-Marc
        title: One more derivation of the Lorentz transformation
        journal: American Journal of Physics
        volume: 44
        year: 1976
        pages: 271
    Levy-Leblond:1979:
        authors:
            - Lévy-Leblond, Jean-Marc
            - Provost, Jean-Pierre
        title: Additivity, rapidity, relativity
        journal: American Journal of Physics
        volume: 47
        year: 1979
        pages: 1045
    Levy-Leblond:1965:
        authors:
            - Lévy-Leblond, Jean-Marc
        title: Une nouvelle limite non-relativiste du groupe de Poincaré
        journal: Annales de l'I.H.P. Physique théorique
        volume: 3
        year: 1965
        pages: 1--12

tex_macros:
    Lie: '\text{Lie}(#1)'
    KLG: '\Lie{G} \cap K'
    LorGen: '\mat{0}{\frac{1}{c}#1}{\epsilon c#1}{0}'
    projperp: ' P_{#1^\perp}'

---

# Which transforms are viable to change from one inertial frame to another?

## Introduction

Inertial frames of reference (or more concisely frames thereafter) and the transforms of space and time coordinates of an event in one frame into its coordinates in another frame (or more concisely transforms thereafter) are one of the pillar of physics . The purpose of this article is to discover all the viable transforms under a minimalistic set of postulates.

As it is well known, the transforms which have been in use for more than a century are the Lorentz transforms. Their historical derivation by Einstein in his seminal 1905 paper [[Einstein:1905]] relies on the postulate that the speed of light is the same in every direction and in every frame.  But a much stronger theorem relates Lorentz transforms and electromagnetism: Maxwell equations are invariant under them, as shown by Einstein in the same paper. In the course of the 20th century, two other fundamental interactions were discovered, the weak interaction and the strong interaction, whereas electromagnetism got quantified. Eventually, two theories emerged: Quantum Chromodynamics, for the strong interaction, and the Electroweak Theory, for the unification of the weak and electromagnetic interactions. Each of these theories is invariant under Lorentz transforms. Therefore their historical derivation is a biased one as it unduly emphasises a special connection to electromagnetism.

The only other transforms to have found a widespread use in physics are the Galilean transforms, which had been unchallenged from the beginning of modern physics in the 16th century to the middle of the 19th century when tensions started to appear with electromagnetism. At the time, Galilean transforms were motivated by the postulates of absolute time and absolute length, which were stronly motivated experimentally. Nowadays we know that Lorentz transforms degenerate into Galilean transforms when the relative speed $$v$$ between the frames is small compared to the speed of light $$c$$, and that this is why they had been successful before interferometry made possible experiments sensitive enough to probe effects proportional to $$\left(\frac{v}{c}\right)^2$$ which appear as Lorentz transform deviates from Galilean transforms (Michelson-Morley experiments for example). Thus, Galilean transforms seem to derived either from obsolete concepts or from a special role played by the speed of light.

However, it has been realised since the 70's that very general postulates which do not involve the properties of any particular physical theory, and especially which do not rely on any assumption regarding the speed of light, can be used to demonstrate that the only possible transforms are either Galilean transforms or Lorentz transforms. I am referring here to the paper of Lee and Kalotas [[Lee:1975]] and Lévy-Leblond [[Levy-Leblond:1976]] and Lévy-Leblond and Provost [[Levy-Leblond:1979]]. The purpose of this article is to give another demonstration of this result using a different approach: Lie Groups.

The main advantage is that I will be able to reason with three dimensions of space throughout, contrary to Lévy-Leblond who first derived transforms for one dimension of time and one dimension of space, then extrapolated the results to three dimensions of space by using an argument of isotropy. As for Lee and Kalotas, they started with the assumption that the transforms for the two dimensions of space perpendicular to the speed between the frames was the identity, only referring to “well-known arguments” to justify it. I will not need such preparatory arguments.

The drawback is that those simplifications allowed the first two cited papers  [[Lee:1975]] and [[Levy-Leblond:1976]] to rely only on elementary mathematics. It should be noted that last paper [[Levy-Leblond:1979]] used a powerful theorem about matrix group whose elements are parametrised by a single scalar (the speed between the two frames), allowing the authors to greatly simplify the discussion. This theorem is actually a special case of the theory of Lie groups and my demonstration is therefore conceptually closer to the paper of Lévy-Leblond and Provost [[Levy-Leblond:1979]].

Lie groups form a large and complex field of mathematics but fortunately we will only need a handful of their most simple properties. Nevertheless my demonstration does require more mathematical background than those of Lee and Kalotas [[Lee:1975]], and Lévy-Leblond [[Levy-Leblond:1976]]. I greatly encourage readers to read them.

## Postulates

We will first list our postulates and then we will briefly motivate them.

**Postulate 1**: linearity.

Thus the mapping of any time $$t$$ and any triplet of spatial coordinates $$x$$ in one frame onto their equivalent $$t'$$ and $$x'$$ in another frame has a matrix $$\mathcal{M}$$ and we choose the following convention:

$$ \vec{t'}{x'} = \mathcal{M} \vec{t}{x} $$

The problem is therefore transformed into the search of a set of viable $$4 \times 4$$ matrices. We will denote this set by $$G$$. We will write the matrices by block as

$$ \mathcal{M} = \mat{a}{u}{v}{M} $$

where $$a$$ is a scalar, $$u$$ and $$v$$ are 3-vectors (in column), and $$M$$ is a $$3 \times 3$$ matrix -- we will denote by $$\reals^3$$ the set of all such vectors. This block decomposition means that

$$
\begin{align*}
t' &= a t + u^T x, \\
x' &= v t + M x.
\end{align*}
$$

**Postulate 2**: Spatial isometries form a strict subgroup $$O$$ of $$G$$.

Spatial isometries are the matrices

$$ \mathcal{R} = \mat{1}{0}{0}{R} $$

where $$R$$ is orthogonal, i.e. $$R R^T = I$$ where $$I$$ is the identity matrix in dimension 3. This includes the subgroup of rotations, as well as the space inversion, which physicists call parity,

$$ P = \mat{1}{0}{0}{-I}. $$

**Postulate 3**: $$G$$ does not contain any change of scale

A change of scale has a diagonal matrix with positive coefficients, i.e.

$$
\begin{align*}
t' &= a_0 t \\
x'_1 &= a_1 x_1 \\
x'_2 &= a_2 x_2 \\
x'_3 &= a_3 x_3
\end{align*}
$$

where $$x_i$$ and $$x'_i$$ are the spatial coordinates, components of the vectors $$x$$ and $$x'$$ used so far, and $$(a_0, a_1, a_2, a_3)$$ are positive constants.

**Postulate 4**: $$G$$ is a Lie subgroup of the Lie group of $$4 \times 4$$ matrices.

## Motivation of the postulates

*Postulate 1:* The classic argument for linearity is the homogeneity of space-time but a better, more modern argument is simply to state that we search the transforms in the tangent space of "curved spacetime" (i.e. spacetime manifold in rigorous mathematical terms). This does not mean assuming General Relativity, not even the existence of a spacetime metric.

*Postulate 2:* Isometries are practically important because they change the orientation and the handedness of frame axes, an operation which is a very common occurence in the practice of physics. They are also theoretically important because verifying whether a physical model is invariant under rotations or space inversion is mundane. It should be noted that we do not make any preconceived statement about whether the model has such an invariance. For example, the Electroweak Model mentioned in the introduction is not invariant under parity.

*Postulate 3:* We assume we have fixed units of time and lengths in all frames once and for all, and that from that point on, we are interested only in all the other transforms.

*Postulate 4:* The group structure directly emerges from the definition of changes of frame:

1. the identity matrix correspond to no change of frame;
2. given the change of frame $$(t,x) \mapsto (t',x')$$, we shall also have the change of frame $$(t',x') \mapsto (t,x)$$, and if $$M$$ is the matrix of the former, then $$M^{-1}$$ is the matrix of the latter;
3. given the change of frame $$(t,x) \mapsto (t',x')$$ followed by the change of frame $$(t',x') \mapsto (t'',x'')$$, we shall also have the change of frame $$(t,x) \mapsto (t'',x'')$$, and if $$M$$ and $$M'$$ are the matrix of the first and of the second respectively, then $$MM'$$ is the matrix of the last.

The postulated Lie structure is as mundane, since every single non-discrete matrix group of practical which have found some use in physics is a Lie group. Instead of postulating the Lie structure, we could have postulated that $$G$$ is topologically closed and then invoked Cartan's theorem to conclude that $$G$$ is a Lie subgroup of the Lie group of $$4 \times 4$$ matrices. Whether requiring that any convergent sequence of matrices in $$G$$ converges in $$G$$, for example, is more intuitive than requiring a Lie structure in the first place is a moot point for a theoretical physicist in the 21st century, in my humble opinion!

## Primer on Lie groups

We will succintly give here the essential properties we will use in our demonstration.

*Commutator*: for any matrix $$A$$ and $$B$$, it is defined as $$[A,B] = AB - BA$$. Mathematicians name it "Lie bracket" instead.

*Matrix Lie algebra*: it is a linear subspace $$H$$ of the linear space of all matrices with the extra property that, for any $$A$$ and $$B$$ in $$H$$, $$[A,B]$$ is also in $$H$$.

*Matrix exponential*: for any matrix $$A$$, it is defined as the convergent series

$$ \exp A = \sum_{n=0}^{+\infty} \frac{1}{n!}A^n . \label{matrix:exp}$$

*Matrix Lie group*: it is a group $$G$$ of matrices such that there exists a Lie algebra $$H$$ such that $$\exp H$$ is the connected component of the identity in $$G$$. We will denote $$H$$ by $$\Lie{G}$$.

This may seem rather abstract but it is actually just a different, powerful, way to look at all the classic matrix groups.

## Derivation of the group $$G$$ of viable transforms

Our strategy will be to characterise $$\Lie{G}$$ and then use the matrix exponential to find $$G$$. We start by demonstrating a simple lemma we will reuse a couple of time.

**Lemma 1**: If $$\mathcal{A} = \mat{a}{0}{0}{M} \in \Lie{G}$$, then $$a=0$$ and $$M$$ is antisymmetric, i.e. $$\mathcal{A} \in \Lie{O}$$.

*Proof.* With $$A=\frac{M+M^T}{2}$$ and $$B=\frac{M-M^T}{2}$$, we can write $$\mathcal{A} = \mat{0}{0}{0}{A} + \mat{a}{0}{0}{B}$$. On the right-hand side, the first term belongs to $$\Lie{O}$$ and therefore the second term $$\mathcal{B}$$ belongs to $$\Lie{G}$$. But then $$\exp \mathcal{B} = \mat{\exp a}{0}{0}{\exp B}$$. Postulate 3 requires that $$\exp \mathcal{B}$$ is a spatial isometry, and therefore that $$a=0$$ and $$(\exp B)(\exp B)^T = I$$. Since $$B$$ is symmetric, this means $$\exp 2B = I$$, and therefore that $$B=0$$. This completes the proof.

Then we move to the keystone of our demonstration, as the subsequent work will simply be the computation of matrix exponentials.

**Lemma 2**: One and only one of the following vector space is a subspace of $$\Lie{G}$$ and $$\Lie{G}$$ is the sum of $$\Lie{O}$$ and of this subspace:

$$
\begin{align}
K_G &= \set{\mat{0}{u}{0}{0}}{u \in \reals^3}  \tag{I} \\
K_C &= \set{\mat{0}{0}{v}{0}}{v \in \reals^3}  \tag{II} \\
K_\epsilon &= \set{\LorGen{u}}{u \in \reals^3} \tag{III} \\
\end{align}
$$

where $$c > 0$$ and $$\epsilon = \pm 1$$ are constants.

*Proof.* Let us consider a generic element $$A=\mat{a}{u}{v}{M} \in \Lie{G}$$. Since $$P \in G$$, $$PAP^{-1}$$ is also in $$\Lie{G}$$, and therefore $$B = \frac{1}{2}(A + PAP^{-1})$$ too. But $$B=\mat{a}{0}{0}{M}$$ and lemma 1 implies that $$a=0$$ and $$M$$ is antisymmetric. Thus $$A = \mat{0}{u}{v}{0} + \mat{0}{0}{0}{M}$$ and the last term is in $$\Lie{G}$$, which proves that $$\mat{0}{u}{v}{0} \in \Lie{G}$$. Thus we have shown that any element of $$\Lie{G}$$ is the sum of an element of $$\Lie{O}$$ and of an element of the vector space $$K=\set{\mat{0}{u}{v}{0}}{u,v \in \reals^3}$$ and we are left with characterising $$\KLG$$. The case $$\KLG = \{ 0 \}$$ is ruled out by our second postulate, as this would leave only isometries. Thus we have three cases to study.

*Case 1:* $$\KLG$$ has an element $$A=\mat{0}{0}{v}{0}$$ with $$v \ne 0$$.

Then for any rotation $$\mathcal{R} = \mat{1}{0}{0}{R}$$ and any real $$\lambda$$, $$A'=\lambda\mathcal{R}A\mathcal{R}^{-1} \in \Lie{G}$$ but $$A'=\mat{0}{0}{\lambda Rv}{0}$$ and $$\lambda R v$$ spans $$\reals^3$$ when $$\lambda$$ spans $$\reals$$ and $$R$$ spans all the rotations. Thus $$K_G \subset \KLG$$.

Then let $$B=\mat{0}{p}{q}{0}$$ be an element of $$\Lie{G} \cap K$$. For any $$A = \mat{0}{0}{v}{0} \in K_G$$, we have therefore $$[A,B] \in \Lie{G}$$ but $$[A,B]=\mat{-p^T v}{0}{0}{vp^T}$$. Lemma 1 requires that $$p^Tv=0$$. Since $$v$$ can be any 3-vector, this implies that $$p=0$$. This complete the proof for this case.

*Case 2:* $$\KLG$$ has an element $$A=\mat{0}{u}{0}{0}$$ with $$u \ne 0$$.

The analysis is completely similar to the previous case, replacing $$K_G$$ with $$K_C$$.

*Case 3:* $$\KLG$$ has an element $$A=\mat{0}{u}{v}{0}$$ with $$u \ne 0$$ and $$v \ne 0$$.

Let $$R_0$$ be the rotation of angle $$\pi$$ around the bissector of $$(u,v)$$. Then it exists $$\kappa > 0$$ such that $$Rv = \kappa u$$ and $$Ru = \frac{1}{\kappa} v$$. Then, with $$\mathcal{R}_0 = \mat{1}{0}{0}{R_0}$$, we have $$B=\mathcal{R}_0A\cal{R}_0^{-1} \in G$$ and therefore $$[A,B] \in G$$. But $$B=\mat{0}{\frac{1}{\kappa} v}{\kappa u}{0}$$. Thus

$$
[A,B] = \mat{\kappa u^2 - \frac{1}{\kappa}v^2}{0}{0}{\frac{1}{\kappa}vv^T - \kappa uu^T}.
$$

Then lemma 1 requires that

$$
\begin{align*}
\kappa u^2 &= \frac{1}{\kappa} v^2,\\
\kappa uu^T &= \frac{1}{\kappa} vv^T.
\end{align*}
$$

Multiplying both sides of the second equation with $$v$$ on the right shows that $$v$$ is colinear to $$u$$, and the first equation then shows that $$v=\epsilon\kappa u$$ where $$\epsilon=\pm 1$$. Introducing $$c=\sqrt{\kappa}$$ and $$w=cu$$, we have $$v=\epsilon c w$$ and therefore $$A=\LorGen{w}$$.

Then for any rotation $$\mathcal{R} = \mat{1}{0}{0}{R}$$ and any real $$\lambda$$, $$A'=\lambda\mathcal{R}A\mathcal{R}^{-1} \in \Lie{G}$$ but $$A'=\LorGen{\lambda Rw}$$ and since $$\lambda Rw$$ spans $$\reals^3$$ when $$\lambda$$ spans $$\reals$$ and $$R$$ spans all $$3 \times 3$$ rotations, we have proved that $$K_\epsilon \subset \KLG$$.

Let $$B=\mat{0}{p}{q}{0}$$ be an element of $$\KLG$$. For any $$A=\LorGen{w} \in K_\epsilon$$, $$[A,B] \in \Lie{G}$$ but

$$
[A,B] = \mat{\frac{1}{c}w^Tq - \epsilon c p^Tw}{0}{0}{\epsilon c w p^T - \frac{1}{c} q w^T}
$$

and lemma 1 then requires that

$$
\begin{align*}
\frac{1}{c}w^Tq &= \epsilon c p^Tw, \\
\epsilon c w p^T &- \frac{1}{c} q w^T = -\epsilon c p w^T + \frac{1}{c} w q^T.
\end{align*}
$$

Multiplying the second equation by $$w$$ on the right gives
$$
\left(\epsilon c p^T w - \frac{1}{c}q^T w \right)w = \left(\frac{1}{c}q - \epsilon c p \right)w^2
$$

and therefore, using the first equation, and $$w \ne 0$$, we get $$q=\epsilon c^2 p$$, i.e. $$B \in K_\epsilon$$. We have therefore demonstrated that $$\KLG \subset K_\epsilon$$. With the previous opposite inclusion, this completes the proof of this case and therefore of the proof of lemma 2 too.

We can now prove the following theorem.

*Theorem 1*: A group $$G$$ of transforms satisfying postulate 1--3 is one of the following group:

- the Caroll group (I)
- the Galilean group (II)
- the Lorentz group (III$^+$)
- the group of rotations in spacetime (III$^-$)

*Proof* Those four cases obviously correspond to the four cases of lemma 2. Thus let us review them in turn.

*Case I and II*: it is trivial to verify that any $$K \in K_G$$ is such that $$K^2 = 0$$ and therefore $$K^n = 0$$ for any integer $$n \ge 2$$. As a result, the exponential series is trivial: $$\exp K = I + K$$. Thus in case I, this gives

$$ \exp K = \mat{1}{u}{0}{I} $$

and the transforms

$$ \begin{align}
t' &= t - u^T x,\\
x' &= x.
\end{align}$$

Lévy-Leblond named them "Carrol transforms" in [[Levy-Leblond:1965]], a term he reused in [[Levy-Leblond:1979]], in eqn (63). The first paper presents an interesting physical discussion of them (it is unfortunately in French!).

In case II, this gives

$$ \exp K = \mat{1}{0}{v}{I} $$

and the transforms are the Galilean transforms

$$\begin{align}
t' &= t,\\
x' &= x - vt.
\end{align}$$

*Case III^+/-^*: the computation of the exponential is only slightly more involved. We will compute both cases at the same time by keeping $$\epsilon$$ unspecified. First, let us write $$u = \varphi \hat{u}$$ where $$\hat{u}$$ is a unit vector. Then $$\newcommand{Keps}{\hat{K}_\epsilon} K_\epsilon = \varphi\Keps$$ where $$\Keps = \mat{0}{\frac{1}{c}\hat{u}}{\epsilon c \hat{u}}{0}$$. Then $$\newcommand{\PPu}{\mat{1}{0}{0}{P_u}} \Keps^2 = \epsilon\mathcal{P}_u$$ where $$\mathcal{P}_u=\PPu$$ and $$P_u = \hat{u}\hat{u}^T$$ is the projection onto $$u$$. Therefore, on one hand, for any $$n \ge 1$$, $$\Keps^{2n} = \epsilon^n \mathcal{P}_u$$ since $$P_u^n = P_u$$ because $$P_u$$ is a projector. On the other hand, $$\Keps^{2n+1} = \epsilon^n \mathcal{P}_u \Keps = \epsilon^n\Keps$$. Thus the exponential series reads

$$ \exp K_\epsilon = I
+ \underbrace{\sum_{n=1}^{+\infty} \epsilon^n \frac{\varphi^{2n}}{(2n)!}}_{\displaystyle \begin{cases}
\cos\varphi - 1, \text{ if $\epsilon=-1$}\\
\cosh\varphi - 1, \text{ if $\epsilon=1$}
\end{cases}} \mathcal{P}_u
+ \underbrace{\sum_{n=0}^{+\infty} \epsilon^n \frac{\varphi^{2n+1}}{(2n+1)!}}_{\displaystyle \begin{cases}
\sin\varphi, \text{ if $\epsilon=-1$}\\
\sinh\varphi, \text{ if $\epsilon=1$}
\end{cases}} \Keps $$

Thus we have the two cases

$$\newcommand{\boostmat}[2]{
    \mat{#1}{\frac{1}{c}#2\ \hat{u}}{c#2\ \hat{u}}{#1\ P_u + \projperp{u}}
}
\begin{cases}
\exp K_{-} = \boostmat{\cos\varphi}{\sin\varphi}, \text{ in case (III$^-$),} \\
\exp K_{+} = \boostmat{\cosh\varphi}{\sinh\varphi}, \text{ in case (III$^+$)}
\end{cases}$$

where $$\projperp{u} = I - P_u$$ is the projection onto the plane $$u^\perp$$ perpendicular to $$u$$. Thus the transformations read

$$ \newcommand{\boosttrans}[2]{
    \begin{aligned}
    t' &= t #1 -\frac{\hat{u}^T x}{c} #2,\\
    x'_\shortparallel &= x_\shortparallel #1 - ct \hat{u} #2,\\
    x'_\perp &= x_\perp,
    \end{aligned}
}
\begin{cases}
\left\{ \boosttrans{\cos\varphi}{\sin\varphi} \right., \text{ in case (III$^-$),} \\
\\
\left\{ \boosttrans{\cosh\varphi}{\sinh\varphi} \right., \text{ in case (III$^+$).}
\end{cases}$$

where $$x_\shortparallel$$ is the component of $$x$$ parallel to $$u$$ whereas $$x_\perp$$ is the component perpendicular to $$u$$.

In case (III$^+$), we recognise a Lorentz boost, parametrised by the rapidity $$\varphi$$ and the direction of the boost $$\hat{u}$$. The case (III$^-$) is not mainstream but time and space are mixed as two spatial coordinates would be by a rotation of angle $$\varphi$$, hence the name "rotation in spacetime".

Thus it would seem we have failed, since we not only recovered Galilean and Lorentz transforms but also two exotic groups which have never played any major role in change of inertial frames. But we can prune them with an additional hypothesis.

## Causality

The concept of cause and effect would be meaningless if all observers could not agree which of two events happens first. Hence the following requirement

*Postulate 4: Causality.* There exists a non-empty set $$E$$ of events so that for any two events $$e_1$$ and $$e_2$$ such that $$e_1$$ is seen to appear before $$e_2$$ in one frame, then in any other frame, $$e_1$$ is also seen to appear before $$e_2$$.

Because of linearity, this is equivalent to state that for any $$t > 0$$, there exists spatial coordinates $$x$$ such that for every $$\mathcal{M} \in G$$, $$\vec{t'}{x'} = \mathcal{M} \vec{t}{x}$$ is such that $$t'>0$$. Then we wish to prove

*Lemma 2*: The Carroll group and the group of rotations in spacetime violate causality.

For the carroll group, $$t' = t\left(1 - u^T \frac{x}{t}\right)$$. But for every $$x \in \reals^3$$, one can find big enough a vector $$u$$ such that the factor of $$t$$ is negative.

For the rotations in spacetime, $$t' = t\cos\varphi\left(1 - \frac{1}{c}\hat{u}^T \frac{x}{t}\tan\varphi\right)$$. Since $$\lim_{\varphi \to +\infty} \tan\varphi = +\infty$$, for any $$x \in \reals^3$$, one can choose $$\varphi$$ such that the factor of $$t\cos\varphi$$ is negative. This concludes the proof.

We can now conclude with

*Theorem 2*: The only groups $$G$$ of transforms satisfying postulates 1--4 are Galilean group and Lorentz group.




