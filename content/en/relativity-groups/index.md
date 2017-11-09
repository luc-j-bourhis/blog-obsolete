---
title: "Change of inertial frames: what transforms are possible?"
author: Luc J. Bourhis
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
        note: An English translation is available [here](https://www.fourmilab.ch/etexts/einstein/specrel/www) both as a web page and as a print-quality PDF
    Rothe:1911:
        authors:
            - Rothe, H.
            - Frank, P.
        title: Über die Transformation der Raumzeitkoordinaten von ruhenden auf bewegte Systeme
        journal: Annalen der Physik (Leipzig)
        volume: 34
        year: 1911
        pages: 825--853
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
    Stepanov:2010:
        authors:
            - Stepanov, Sergey S.
        title: On simplified axiomatic foundations of special relativity
        year: 2010
        note: http://synset.com/pdf/100_en.pdf

tex_macros:
    vec:      '\begin{bmatrix} #1 \\ #2 \end{bmatrix}'
    mat:      '\begin{bmatrix} #1 & {#2}^T \\ #3 & #4 \end{bmatrix}'
    Lie:      '\text{Lie}(#1)'
    SO:       '\text{SO}_{#1}'
    KLG:      '\Lie{G} \cap K'
    LorGen:   '\mat{0}{\frac{1}{c}#1}{\epsilon c#1}{0}'
    projperp: ' P_{#1^\perp}'

---

<% content_for :summary do %>

We discuss how to prove that Galilean and Lorentz transforms are the only possibilities besides rotations using only very general postulates about changes of inertial frames. Most interestingly, we do not make any of the traditional assumptions, about the speed of light for Lorentz transforms, and about the universality of time and length for Galilean transforms.

<% end %>

## Introduction

Inertial frames of reference (or more concisely frames thereafter) and the transforms of space and time coordinates of an event in one frame into its coordinates in another frame (or more concisely transforms thereafter) are one of the pillar of physics . The purpose of this article is to discover all the viable transforms under a minimalistic set of postulates.

As it is well known, the transforms which have been in use for more than a century are the Lorentz transforms. Their historical derivation by Einstein in his seminal 1905 paper [[Einstein:1905]] relies on the postulate that the speed of light is the same in every direction and in every frame.  But a much stronger theorem relates Lorentz transforms and electromagnetism: Maxwell equations are invariant under them, as shown by Einstein in the same paper. In the course of the 20th century, two other fundamental interactions were discovered, the weak interaction and the strong interaction, whereas electromagnetism got quantified. Eventually, two theories emerged: Quantum Chromodynamics, for the strong interaction, and the Electroweak Theory, for the unification of the weak and electromagnetic interactions. Each of these theories is invariant under Lorentz transforms. Therefore their historical derivation is a biased one as it unduly emphasises a special connection to electromagnetism.

The only other transforms to have found a widespread use in physics are the Galilean transforms, which had been unchallenged from the beginning of modern physics in the 16th century to the middle of the 19th century when tensions started to appear with electromagnetism. At the time, Galilean transforms were motivated by the postulates of absolute time and absolute length, which were stronly motivated experimentally. Nowadays we know that Lorentz transforms degenerate into Galilean transforms when the relative speed $$v$$ between the frames is small compared to the speed of light $$c$$, and that this is why they had been successful before interferometry made possible experiments sensitive enough to probe effects proportional to $$\left(\frac{v}{c}\right)^2$$ which appear as Lorentz transform deviates from Galilean transforms (Michelson-Morley experiments for example). Thus, Galilean transforms seem to derived either from obsolete concepts or from a special role played by the speed of light.

However, it has been realised just a couple of years after the publication of Einstein's seminal paper that very general postulates which do not involve the properties of any particular physical theory, and especially which do not rely on any assumption regarding the speed of light, can be used to demonstrate that the only possible transforms are either Galilean transforms or Lorentz transforms. One of the earliest complete analysis is that of H. Rothe and P. Frank [[Rothe:1911]], based on an even earlier work by Wladimir Ignatowsky. The most recent papers[^1] I have studied are by Lee and Kalotas [[Lee:1975]] and Lévy-Leblond [[Levy-Leblond:1976]] and Lévy-Leblond and Provost [[Levy-Leblond:1979]]. The purpose of this article is to give another demonstration of this result using a different approach: Lie Groups.

[^1]: a more extensive bibliography on the subject of proving Lorentz transforms can be found in [[Lee:1975]] and the unpublished paper [[Stepanov:2010]].

The main advantage is that I will be able to reason with three dimensions of space throughout, contrary to Lévy-Leblond who first derived transforms for one dimension of time and one dimension of space, then extrapolated the results to three dimensions of space by using an argument of isotropy. As for Lee and Kalotas, they started with the assumption that the transforms for the two dimensions of space perpendicular to the speed between the frames was the identity, only referring to “well-known arguments” to justify it. I will not need such preparatory arguments. Moreover Lee and Kalotas make heavy use of the definition of the speed between the two frames, further assuming that the speed of $$R'$$ with respect to $$R$$ is the opposite of the speed of $$R$$ with respect to $$R'$$. Those hypotheses are very well motivated, of course, but our demonstration will make this relative speed "magically" appear as we proceed, which is another nice touch.

The drawback is that those simplifications and extra physical postulates allowed the first two cited papers  [[Lee:1975]] and [[Levy-Leblond:1976]] to rely only on elementary mathematics. It should be noted that last paper [[Levy-Leblond:1979]] used a powerful theorem about matrix group whose elements are parametrised by a single scalar (the speed between the two frames), allowing the authors to greatly simplify the discussion. This theorem is actually a special case of the theory of Lie groups and my demonstration is therefore conceptually closer to the paper of Lévy-Leblond and Provost [[Levy-Leblond:1979]].

Lie groups form a large and complex field of mathematics but fortunately we will only need a handful of their most simple properties. Nevertheless my demonstration does require more mathematical background than those of Lee and Kalotas [[Lee:1975]], and Lévy-Leblond [[Levy-Leblond:1976]]. I greatly encourage readers to read them.

## Postulates

We will first list our postulates and then we will briefly motivate them.

{{Postulate 1}} Linearity.

Thus the mapping of any time $$t$$ and any triplet of spatial coordinates $$x$$ in one frame onto their equivalent $$t'$$ and $$x'$$ in another frame has a matrix $$A$$ and we choose the following convention:

$$ \vec{t'}{x'} = A \vec{t}{x} $$

The problem is therefore transformed into the search of a set of viable $$4 \times 4$$ matrices. We will denote this set by $$G$$. We will write the matrices by block as

$$ A = \mat{a}{u}{v}{M} $$

where $$a$$ is a scalar, $$u$$ and $$v$$ are 3-vectors (in column), and $$M$$ is a $$3 \times 3$$ matrix -- we will denote by $$\reals^3$$ the set of all such vectors. This block decomposition means that

$$
\begin{aligned}
t' &= a t + u^T x, \\
x' &= v t + M x.
\end{aligned}
$$

{{Postulate 2}} Spatial isometries form a strict subgroup $$O$$ of $$G$$.

Spatial isometries are the matrices

$$ \mathcal{R} = \mat{1}{0}{0}{R} $$

where $$R$$ is orthogonal, i.e. $$R R^T = I$$ where $$I$$ is the identity matrix in dimension 3. This includes the subgroup of rotations, as well as the space inversion, which physicists call parity,

$$ P = \mat{1}{0}{0}{-I}. $$

{{Postulate 3}} $$G$$ does not contain any change of scale

A change of scale has a diagonal matrix with positive coefficients, i.e.

$$
\begin{aligned}
t' &= a_0 t \\
x'_1 &= a_1 x_1 \\
x'_2 &= a_2 x_2 \\
x'_3 &= a_3 x_3
\end{aligned}
$$

where $$x_i$$ and $$x'_i$$ are the spatial coordinates, components of the vectors $$x$$ and $$x'$$ used so far, and $$(a_0, a_1, a_2, a_3)$$ are positive constants.

{{Postulate 4}} $$G$$ is a Lie subgroup of the Lie group of $$4 \times 4$$ matrices.

## Motivation of the postulates

*[Postulate 1].* The classic argument for linearity is the homogeneity of space-time but a better, more modern argument is simply to state that we search the transforms in the tangent space of "curved spacetime" (i.e. spacetime manifold in rigorous mathematical terms). This does not mean assuming General Relativity, not even the existence of a spacetime metric.

*[Postulate 2].* Isometries are practically important because they change the orientation and the handedness of frame axes, an operation which is a very common occurence in the practice of physics. They are also theoretically important because verifying whether a physical model is invariant under rotations or space inversion is mundane. It should be noted that we do not make any preconceived statement about whether the model has such an invariance. For example, the Electroweak Model mentioned in the introduction is not invariant under parity.

*[Postulate 3].* We assume we have fixed units of time and lengths in all frames once and for all, and that from that point on, we are interested only in all the other transforms.

*[Postulate 4].* The group structure directly emerges from the definition of changes of frame:

1. the identity matrix correspond to no change of frame;
2. given the change of frame $$(t,x) \mapsto (t',x')$$, we shall also have the change of frame $$(t',x') \mapsto (t,x)$$, and if $$A$$ is the matrix of the former, then $$A^{-1}$$ is the matrix of the latter;
3. given the change of frame $$(t,x) \mapsto (t',x')$$ followed by the change of frame $$(t',x') \mapsto (t'',x'')$$, we shall also have the change of frame $$(t,x) \mapsto (t'',x'')$$, and if $$A$$ and $$A'$$ are the matrix of the first and of the second respectively, then $$AA'$$ is the matrix of the last.

The postulated Lie structure is as mundane, since every single non-discrete matrix group of practical use in physics is a Lie group. Instead of postulating the Lie structure, we could have postulated that $$G$$ is topologically closed and then invoked Cartan's theorem to conclude that $$G$$ is a Lie subgroup of the Lie group of $$4 \times 4$$ matrices. Whether requiring that any convergent sequence of matrices in $$G$$ converges in $$G$$, for example, is more intuitive than requiring a Lie structure in the first place is a moot point for a theoretical physicist in the 21st century, in my humble opinion!

## Primer on matrix Lie groups

We will succintly give here the essential properties we will use in our demonstration.

*Commutator*: for any matrix $$A$$ and $$B$$, it is defined as $$[A,B] = AB - BA$$. Mathematicians name it "Lie bracket" instead.

*Matrix Lie algebra*: it is a linear subspace $$H$$ of the linear space of all matrices with the extra property that, for any $$A$$ and $$B$$ in $$H$$, $$[A,B]$$ is also in $$H$$.

*Matrix exponential*: for any matrix $$A$$, it is defined as the convergent series

$$ \exp A = \sum_{n=0}^{+\infty} \frac{1}{n!}A^n . \label{matrix:exp}$$

*Matrix Lie group*: it is a group $$G$$ of matrices such that there exists a Lie algebra $$H$$ with the property that $$\exp H$$ is a subgroup of $$G$$. We will denote $$H$$ by $$\Lie{G}$$.

There is an important property of the Lie algebra of a Lie group which will play an important role in our demonstrations:

{{Property 1}} For any $$A \in G$$, and any $$B \in \Lie{G}$$, $$A^{-1}BA \in \Lie{G}$$.

*Proof.* First, $$(A^{-1}BA)^n = A^{-1}B^nA$$ for any integer $$n$$, and therefore the exponential series satisfies

$$A^{-1}\exp(B)A = \exp(A^{-1}BA),$$

which proves the result.

{{Property 2}} $$\exp\Lie{G}$$ is actually the connected component of the identity in $$G$$.

*Proof.* Since $$\exp$$ is continuous and it maps the zero matrix onto the identity matrix, the result is obvious.

Lie group of matrices may seem rather abstract but it is actually just a different, powerful, way to look at all the classic matrix groups. Let us study an example, which will be useful later: the group $$O_3$$ of the $$3\times 3$$ orthogonal matrices, i.e. the matrices of the isometry of 3-dimensional space, and its subgroup $$SO_3$$ consisting of matrix rotations (those notations are standard but usually one specifies the field the matrix elements belong to, which is the field $$\reals$$ of real numbers here). It is important since it is the spatial part of the group $$O$$ introduced in [Postulate 2].

We will start by discussing the structure of $$O_3$$ and $$SO_3$$. Given a rotation $$R$$ of angle $$\theta$$ about some vector $$u$$, there is a continuous path from $$R$$ to the identity matrix, by continuously varying $$\theta$$ toward 0. By definition, this means that $$SO_3$$ is the connected component of the identity in $$O_3$$. Thus to prove that $$O_3$$ is a Lie group, we only need to prove that the matrix exponential maps some Lie algebra to be determined onto $$SO_3$$. As a side note, $$O_3$$ not only contains rotations but also the product of rotations by the spatial inversion. The latter form the other connected component of $$O_3$$, one which does obviously not contain the identity.

It is actually easy to find what this Lie algebra should be if it exists. Indeed, keeping only terms linear in $$\theta$$ when $$\theta \to 0$$,

$$ R = \exp(\theta A) = I + \theta A + \cdots. $$

Thus

$$\notag
R^T = I + \theta A^T + \cdots $$

and then

$$\notag
R R^T = I + \theta(A + A^T) + \cdots. $$

Thus if $$R$$ is orthogonal, then $$RR^T = I$$, and therefore all terms of order $$\theta$$ or higher must be zero in series of $$RR^T$$, which implies that $$A$$ is antisymmetric.

Thus we shall consider the set $$A_3$$ of all $$3\times 3$$ antisymmetric matrix. It is a subspace of the algebra of $$3\times 3$$ matrices as any linear combination of antisymmetric matrices is antisymmetric. Then given two antisymmetric matrices $$A$$ and $$B$$, $$[A,B]$$ is clearly antisymmetric by the very definition of the Lie bracket. Thus $$A_3$$ is a Lie algebra and we just need to prove that $$\exp A_3 = SO_3$$ to conclude.

For any antisymmetric matrix $$A$$, the exponential series implies that

$$\notag
(\exp A)^T \exp A = \exp(A^T) \exp A = \exp(-A) \exp A $$

But then $$-A$$ commutes with $$A$$, and therefore, for any integer $$n$$, the coefficient of $$A^n$$ in the series of $$\exp(-A)\exp A$$ is the same as the coefficient of $$x^n$$ in the series $$\exp(-x)\exp x$$ for a real number $$x$$: they are all equal to zero, except for the order 0. Thus $$\exp(-A)\exp A = I$$ and therefore the equation above shows that $$\exp A$$ is orthogonal. Finally, any antisymmetric matrix $$A$$ has a zero eigenvalue. Indeed, the generic form of $$A$$ is

$$ A = \begin{pmatrix}   0 & -u_3 &  u_2 \\
                       u_3 &  0   & -u_1 \\
                      -u_2 &  u_1 &  0   \\
        \end{pmatrix}
$$

for some vector $$u$$, and clearly $$Au = 0$$. Then $$(\exp A)u = u$$ and therefore $$\exp A$$ shall be a rotation, as if it belonged to the other connected component, consisting of rotations times the inversion, its only real eigenvalue would be -1.

[#rodrigues]: https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula#Matrix_notation

It should be noted that we could actually have written a constructive proof instead, based on [Rodrigues' rotation formula in matrix form][#rodrigues]. But the demonstration would have been rather similar to the one we will encounter when Lorentz boosts will emerge later in this article, and we therefore preferred the demonstration above which involves only very simple calculations. In any case, we have demonstrated

{{Theorem 1}} The group of orthogonal matrix $$O_3$$ is a Lie group and $$\Lie{O_3}$$ is the set of antisymmetric matrices $$A_3$$. The matrix exponential maps $$A_3$$ onto $$SO_3$$.

{{Corollary 1}} The group $$O$$ introduced in [Postulate 2] is a Lie group and $$\Lie{O}$$ is the set of matrices

$$ \mat{0}{0}{0}{A} $$

where $$A$$ is any antisymmetric matrix.


## Derivation of the group $$G$$ of viable transforms

Our strategy will be to characterise $$\Lie{G}$$ and then use the matrix exponential to find $$G$$. We start by demonstrating a simple lemma we will reuse a couple of time.

{{Lemma 1}} If $$A = \mat{a}{0}{0}{M} \in \Lie{G}$$, then $$a=0$$ and $$M$$ is antisymmetric, i.e. $$A \in \Lie{O}$$.

*Proof.* With

$$\notag
\begin{aligned}
M^+&=\frac{M+M^T}{2},\\
M^-&=\frac{M-M^T}{2},
\end{aligned}
$$

we can write

$$\notag
A = \mat{0}{0}{0}{M^-} + \mat{a}{0}{0}{M^+}.
$$

On the right-hand side, the first term belongs to $$\Lie{O}$$, as $$M^-$$ is antisymmetric, and therefore the second term $$B$$ belongs to $$\Lie{G}$$ too. Since $$M^+$$ is symmetric, there is an orthogonal matrix $$R$$ and a diagonal matrix $$\Delta$$ such that $$R^{-1}M^+R = \Delta$$. But then with

$$\notag
Q = \mat{1}{0}{0}{R}
$$

we have

$$\notag
B' = Q^{-1} B Q = \mat{a}{0}{0}{\Delta}.
$$

With [Property 1], $$B'$$ is in $$\Lie{G}$$, and therefore

$$\notag
\exp B' = \mat{\exp a}{0}{0}{\exp \Delta}.
$$

is in $$G$$. But this is a change of scale, and therefore [Postulate 3] requires that $$a=0$$ and $$\Delta=0$$. This completes the proof.

Then we move to the keystone of our demonstration, as the subsequent work will simply be the computation of matrix exponentials.

{{Lemma 2}} One and only one of the following vector space is a subspace of $$\Lie{G}$$ and $$\Lie{G}$$ is the sum of $$\Lie{O}$$ and of this subspace:

$$
\begin{align}
K_G &= \set{\mat{0}{u}{0}{0}}{u \in \reals^3}  \tag{I} \\
K_C &= \set{\mat{0}{0}{v}{0}}{v \in \reals^3}  \tag{II} \\
K_L^\epsilon &= \set{\LorGen{u}}{u \in \reals^3} \tag{III} \\
\end{align}
$$

where $$c > 0$$ and $$\epsilon = \pm 1$$ are constants.

*Proof.* Let us consider a generic element $$A \in \Lie{G}$$,

$$\notag
A = \mat{a}{u}{v}{M}.
$$

Since $$P \in G$$, $$PAP^{-1}$$ is also in $$\Lie{G}$$, and therefore $$B = \frac{1}{2}(A + PAP^{-1})$$ too. But

$$\notag
B=\mat{a}{0}{0}{M}
$$

and [lemma 1] implies that $$a=0$$ and $$M$$ is antisymmetric. Thus

$$\notag
A = \mat{0}{u}{v}{0} + \mat{0}{0}{0}{M}
$$

and the last term is in $$\Lie{G}$$, which proves that

$$\notag
\mat{0}{u}{v}{0} \in \Lie{G}.
$$

Thus we have shown that any element of $$\Lie{G}$$ is the sum of an element of $$\Lie{O}$$ and of an element of the vector space

$$
K=\set{\mat{0}{u}{v}{0}}{u,v \in \reals^3}
$$

and we are left with characterising $$\KLG$$. The case $$\KLG = \{ 0 \}$$ is ruled out by our second postulate, as this would leave only isometries. Thus we have three cases to study.

*Case 1:* $$\KLG$$ has an element $$A=\mat{0}{0}{v}{0}$$ with $$v \ne 0$$.

Then for any rotation

$$\notag
\mathcal{R} = \mat{1}{0}{0}{R}
$$

and any real $$\lambda$$, $$A'=\lambda\mathcal{R}A\mathcal{R}^{-1} \in \Lie{G}$$ but

$$\notag
A'=\mat{0}{0}{\lambda Rv}{0}
$$

and $$\lambda R v$$ spans $$\reals^3$$ when $$\lambda$$ spans $$\reals$$ and $$R$$ spans all the rotations. Thus

$$K_G \subset \KLG.$$

Then let

$$\notag
B=\mat{0}{p}{q}{0}
$$

be an element of $$\KLG$$. For any

$$\notag
A = \mat{0}{0}{v}{0} \in K_G,
$$

we have therefore $$[A,B] \in \Lie{G}$$ but

$$\notag
[A,B]=\mat{-p^T v}{0}{0}{vp^T}.
$$

[Lemma 1] requires that $$p^Tv=0$$. Since $$v$$ can be any 3-vector, this implies that $$p=0$$. We have therefore demonstrated that

$$\KLG \subset K_G.$$

This completes the proof for this case.

*Case 2:* $$\KLG$$ has an element $$A=\mat{0}{u}{0}{0}$$ with $$u \ne 0$$.

The analysis is completely similar to the previous case, replacing $$K_G$$ with $$K_C$$.

*Case 3:* $$\KLG$$ has an element $$A=\mat{0}{u}{v}{0}$$ with $$u \ne 0$$ and $$v \ne 0$$.

Let $$R_0 $$ be the rotation of angle $$\pi$$ around the bissector of $$(u,v)$$. Then it exists $$\kappa > 0$$ such that $$R_0 v = \kappa u$$ and $$R_0 u = \frac{1}{\kappa} v$$. Then, with

$$\notag
\mathcal{R}_0 = \mat{1}{0}{0}{R_0},
$$

we have $$B=\mathcal{R}_0A\mathcal{R}_0^{-1} \in G$$ and therefore $$[A,B] \in G$$. But

$$\notag
B=\mat{0}{\frac{1}{\kappa} v}{\kappa u}{0}.
$$

Thus

$$\notag
[A,B] = \mat{\kappa u^2 - \frac{1}{\kappa}v^2}{0}{0}{\frac{1}{\kappa}vv^T - \kappa uu^T}.
$$

Then [lemma 1] requires that

$$\notag
\begin{aligned}
\kappa u^2 &= \frac{1}{\kappa} v^2,\\
\kappa uu^T &= \frac{1}{\kappa} vv^T.
\end{aligned}
$$

Multiplying both sides of the second equation with $$v$$ on the right shows that $$v$$ is colinear to $$u$$, and the first equation then shows that $$v=\epsilon\kappa u$$ where $$\epsilon=\pm 1$$. Introducing $$c=\sqrt{\kappa}$$ and $$w=cu$$, we have $$v=\epsilon c w$$ and therefore

$$
A=\LorGen{w}.
$$

The scalar $$c$$ has the dimension of a speed and we see that it appeared solely because rotations are a subgroup of the group of transforms we seek, and because we have a Lie group (since we used the fact that $$[A,B]$$ is in the Lie algebra).

Then for any rotation

$$\notag
\mathcal{R} = \mat{1}{0}{0}{R}
$$

and any real $$\lambda$$, $$A'=\lambda\mathcal{R}A\mathcal{R}^{-1} \in \Lie{G}$$ but

$$\notag
A'=\LorGen{\lambda Rw}
$$

and since $$\lambda Rw$$ spans $$\reals^3$$ when $$\lambda$$ spans $$\reals$$ and $$R$$ spans all $$3 \times 3$$ rotations, we have proved that

$$K_L^\epsilon \subset \KLG. \label{KepsSubsetKLG}$$

Let

$$\notag
B=\mat{0}{p}{q}{0}
$$

be an element of $$\KLG$$. For any $$A \in K_L^\epsilon$$,

$$\notag
A=\LorGen{w},
$$

$$[A,B] \in \Lie{G}$$ but

$$\notag
[A,B] = \mat{\frac{1}{c}w^Tq - \epsilon c p^Tw}{0}{0}{\epsilon c w p^T - \frac{1}{c} q w^T}
$$

and [lemma 1] then requires that

$$\notag
\begin{aligned}
\frac{1}{c}w^Tq &= \epsilon c p^Tw, \\
\epsilon c w p^T &- \frac{1}{c} q w^T = -\epsilon c p w^T + \frac{1}{c} w q^T.
\end{aligned}
$$

Multiplying the second equation by $$w$$ on the right gives
$$
\left(\epsilon c p^T w - \frac{1}{c}q^T w \right)w = \left(\frac{1}{c}q - \epsilon c p \right)w^2
$$

and therefore, using the first equation, and $$w \ne 0$$, we get $$q=\epsilon c^2 p$$, i.e.

$$\notag
B =c\mat{0}{\frac{1}{c}p}{\epsilon c p}{0}
$$

is therefore in $$K_L^\epsilon$$. We have therefore demonstrated that

$$\KLG \subset K_L^\epsilon.$$

With the previous opposite inclusion (\ref{KepsSubsetKLG}), this completes the proof of this case and therefore of the proof of [lemma 2] too.

We can now prove the following theorem.

{{Theorem 2}} A group $$G$$ of transforms satisfying postulate 1--3 is one of the following group:

- the Caroll group (I)
- the Galilean group (II)
- the Lorentz group (III^+^)
- the group of rotations in spacetime (III^-^)

*Proof.* Those four cases obviously correspond to the four cases of [lemma 2]. Thus let us review them in turn.

*Case I and II*: it is trivial to verify that any $$K \in K_G$$ and any $$K \in K_C$$ is such that $$K^2 = 0$$ and therefore $$K^n = 0$$ for any integer $$n \ge 2$$. As a result, the exponential series is trivial: $$\exp K = I + K$$. Thus in case I, this gives

$$ \exp K = \mat{1}{u}{0}{I} $$

and the transforms

$$ \begin{aligned}
t' &= t - u^T x,\\
x' &= x.
\end{aligned}$$

Lévy-Leblond named them "Carrol transforms" in [[Levy-Leblond:1965]], a term he reused in [[Levy-Leblond:1979]], in eqn (63). The first paper presents an interesting physical discussion of them (it is unfortunately in French!).

In case II, this gives

$$ \exp K = \mat{1}{0}{v}{I} $$

and the transforms are the Galilean transforms

$$\begin{aligned}
t' &= t,\\
x' &= x - vt.
\end{aligned}$$

*Case III^±^*: the computation of the exponential is only slightly more involved. We will compute both cases at the same time by keeping $$\epsilon$$ unspecified. First, let us write $$u = \varphi \hat{u}$$ where $$\hat{u}$$ is a unit vector. Then $$\newcommand{Keps}{\hat{K}_\epsilon} K_\epsilon = \varphi\Keps$$ where

$$
\Keps = \mat{0}{\frac{1}{c}\hat{u}}{\epsilon c \hat{u}}{0}.
$$

Then $$\newcommand{\PPu}{\mat{1}{0}{0}{P_u}} \Keps^2 = \epsilon\mathcal{P}_u$$ where

$$\notag
\mathcal{P}_u=\PPu
$$

and $$P_u = \hat{u}\hat{u}^T$$ is the projection onto $$u$$. Therefore, on one hand, for any $$n \ge 1$$, $$\Keps^{2n} = \epsilon^n \mathcal{P}_u$$ since $$P_u^n = P_u$$ because $$P_u$$ is a projector. On the other hand, $$\Keps^{2n+1} = \epsilon^n \mathcal{P}_u \Keps = \epsilon^n\Keps$$. Thus the exponential series reads, by separating even and odds terms,

$$\notag
\exp K_\epsilon = I
+ \underbrace{\sum_{n=1}^{+\infty} \epsilon^n \frac{\varphi^{2n}}{(2n)!}}_{\displaystyle \begin{cases}
\cos\varphi - 1, \text{ if $\epsilon=-1$}\\
\cosh\varphi - 1, \text{ if $\epsilon=1$}
\end{cases}} \mathcal{P}_u
+ \underbrace{\sum_{n=0}^{+\infty} \epsilon^n \frac{\varphi^{2n+1}}{(2n+1)!}}_{\displaystyle \begin{cases}
\sin\varphi, \text{ if $\epsilon=-1$}\\
\sinh\varphi, \text{ if $\epsilon=1$}
\end{cases}} \Keps
$$

Thus we have either case (III^-^),

$$
\newcommand{\boostmat}[2]{
    \mat{#1}{\frac{1}{c}#2\ \hat{u}}{c#2\ \hat{u}}{#1\ P_u + \projperp{u}}
}
\exp K_{-} = \boostmat{\cos\varphi}{\sin\varphi},
$$

or case (III^+^),

$$
\exp K_{+} = \boostmat{\cosh\varphi}{\sinh\varphi},
$$

where $$\projperp{u} = I - P_u$$ is the projection onto the plane $$u^\perp$$ perpendicular to $$u$$. Thus the transformations are either, in case (III^-^),

$$ \newcommand{\boosttrans}[2]{
    \begin{aligned}
    t' &= t #1 -\frac{\hat{u}^T x}{c} #2,\\
    x'_\parallel &= x_\parallel #1 - ct \hat{u} #2,\\
    x'_\perp &= x_\perp,
    \end{aligned}
}

\boosttrans{\cos\varphi}{\sin\varphi},
$$

or, in case (III^+^),

$$
\boosttrans{\cosh\varphi}{\sinh\varphi},
$$

where $$x_\parallel$$ is the component of $$x$$ parallel to $$u$$ whereas $$x_\perp$$ is the component perpendicular to $$u$$.

In case (III^+^), we recognise a Lorentz boost, parametrised by the rapidity $$\varphi$$ and the direction of the boost $$\hat{u}$$. The case (III^-^) is not mainstream but time and space are mixed as two spatial coordinates would be by a rotation of angle $$\varphi$$, hence the name "rotation in spacetime".

Thus it would seem we have failed, since we not only recovered Galilean and Lorentz transforms but also two exotic groups which have never played any role in physics. But we can prune them with an additional hypothesis.

## Causality

The concept of cause and effect would be meaningless if all observers could not agree which of two events happens first. Hence the following requirement

{{Postulate 5}} (Causality) There exists a non-empty set $$E$$ of events so that for any two events $$e_1$$ and $$e_2$$ such that $$e_1$$ is seen to appear before $$e_2$$ in one frame, then in any other frame, $$e_1$$ is also seen to appear before $$e_2$$.

Because of linearity, this is equivalent to state that for any $$t > 0$$, there exists spatial coordinates $$x$$ such that for every $$M \in G$$, $$\vec{t'}{x'} = M \vec{t}{x}$$ is such that $$t'>0$$. Then we wish to prove

{{Lemma 3}} The Carroll group and the group of rotations in spacetime violate causality.

For the carroll group, $$t' = t\left(1 - u^T \frac{x}{t}\right)$$. But for any $$x \in \reals^3$$ and any $$t > 0$$, one can find big enough a vector $$u$$ such that the factor of $$t$$ is negative.

For the rotations in spacetime, $$t' = t\cos\varphi\left(1 - \frac{1}{c}\hat{u}^T \frac{x}{t}\tan\varphi\right)$$. Since $$\lim_{\varphi \to \frac{\pi}{2}} \tan\varphi = +\infty$$, for any $$x \in \reals^3$$ and any $$t > 0$$, one can choose $$\varphi$$ such that the factor of $$t\cos\varphi$$ is negative. This concludes the proof.

{{Lemma 4}} The Galilean and the Lorentz group satisfy causality.

This is trivial for the former. For the latter, we have $$t'=t\cosh\varphi\left(1-\frac{1}{c}\hat{u}^T \frac{x}{t}\tanh\varphi\right)$$. Since for any $$\varphi \in \reals$$, $$\tanh\varphi$$ is between -1 and 1, for any $$(t,x)$$ such that $$(ct)^2 - x^2 > 0$$ and $$t > 0$$, we have $$t' > 0$$. Thus the set of event $$E$$ is the interior of the so-called light cone.

We can now conclude with

{{Theorem 3}} The only groups $$G$$ of transforms satisfying postulates 1--5 are the Galilean group and the Lorentz group.




