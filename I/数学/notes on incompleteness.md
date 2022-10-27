notes on incompleteness

<br>

an observation from Carl Mummert(https://math.stackexchange.com/questions/817846/concrete-example-for-diagonal-lemma, comment by Carl Mummert on the answer of Asaf Karagila):

"we already know that there is a true sentence whose number is even, or a false sentence whose number is odd, for otherwise the set of all sentences with odd numbers would be the set of true sentences. But the former set is computable and the latter isn't."

And this observation applies to any computable sets.

Also, we could use diagonal lemma to support something stronger, e.g. 

In the case where A(n) means that n is even there are two options:

"True sentence whose Godel number is even.
False sentence whose Godel number is odd.
Of course this depends on the encoding of formulas into numbers, since there are many ways of doing that, there are many ways to solve this.

The lemma assures you that regardless to the way that you coded the formulas (as long as it's reasonable), there will be a true sentence whose code is even or there will be a false sentence whose code is odd. And quite possibly, both options can be true."

<br>

we use $\Box$ to represent the provability predicate.

corollary of godel and Rosser's:

For any theory $T$ satisfying the coditions of incompleteness theorem, 

if $T\vdash G\rightarrow \lnot \Box G$, then $T\not\vdash G$.

and suppose $T$ is $\omega$-consistent, then if $T\vdash \lnot\Box G\rightarrow G$, them  $T\not\vdash \lnot G$.

if $T\vdash G\rightarrow \lnot P\ulcorner G\urcorner$, then $T\not\vdash G$,

if $T\vdash \lnot P\ulcorner G\urcorner\rightarrow G$, then $T\not\vdash \lnot G$.

<br>

corollaries of Lob's:

if $T\vdash\Box\cdots\Box A \to A$, then $T\vdash A$.

a generalization of Lob's:

For a theory that proves Lob's theorem and a given finite set of sentences $A_1,A_2,\cdots,A_n$, we draw its represented graph as follows: whenever $T\vdash\Box A_i \to A_k$ for some $1\le i, k \le n$  , there is  an arrow from $A_i$ to $A_k$. 

let $(A_{k_1},A_{k_2},\cdots,A_{k_m},A_{k_1})$ be a finite cycle in it, then $T\vdash \{A_{k_1},A_{k_2},\cdots,A_{k_m}\}$.

e.g. variations on Lob:

1. Suppose $\Box A\to B$ and $\Box B\to A$ are provable in $T$, it then follows that $A$ and $B$ are both provable in $T$.
2. $T\vdash \Box A \to C$, $T\vdash\Box B \to C$, $T\vdash \Box C\to A$ and $T\vdash \Box C\to B$, then $A,B,C$ are all provable in $T$.
3. $T\vdash \Box(A\land B) \to C$, $T\vdash \Box C\to A$ and $T\vdash \Box C\to B$, then $T\vdash A, B ,C$. 

![3.](https://img9.doubanio.com/view/photo/l/public/p2875662172.webp)

<br>

Generalized digonal lemma(cf.熊明，2017，p.54):

Suppose $x_1,\cdots,x_m,y_1,\cdots,y_m$ are variables different from each other. Given formulae $A_1(\overset{\rightarrow}x,y_1,\cdots,y_n),\cdots,A_n(\overset{\rightarrow}x,y_1,\cdots,y_n)$, there exists formulae $\delta_1(\overset{\rightarrow}x),\cdots,\delta_n(\overset{\rightarrow}x)$ s.t.

$\mathrm{Th}^{+}(\mathfrak{N})\models\delta_1(\overset{\rightarrow}x)\leftrightarrow A_1(\overset{\rightarrow}x,\overline{\ulcorner\delta_1(\overset{\to}x)\urcorner},\cdots,\overline{\ulcorner\delta_n(\overset{\to}x)\urcorner})\\\cdots\\\mathrm{Th}^{+}(\mathfrak{N})\models\delta_n(\overset{\rightarrow}x)\leftrightarrow A_n(\overset{\rightarrow}x,\overline{\ulcorner\delta_1(\overset{\to}x)\urcorner},\cdots,\overline{\ulcorner\delta_n(\overset{\to}x)\urcorner})$

e.g. 

1. variations of Godel's: $ A \leftrightarrow \lnot\Box B, B\leftrightarrow \Box A$;$\ldots$

2. Zeng und Hsiung, An Approach to Boolean Paradoxes of IDSF.

<br>

appendix:

"Feferman has written on this, from the 1960s. But I don’t really agree with your comments, if they suggest that somehow Gödel sentences are generally inequivalent for different natural ways of formalizing the proof systems. My view is that for all natural, acceptable manners of formalizing the metatheoretic proof system, the Gödel sentences will all be equivalent, and all the Con(PA) assertions will be equivalent; PA will be able to prove the equivalence of the different formalizations. The inequivalent versions will arise only by using strange or devious systems that embed strong arithmetic assertions into the operation of the proof systems, and these will ultimately be viewed as unnatural. These aspects of the proof systems and whether they are “natural” or not are exactly what Feferman was concerned with."(http://jdh.hamkins.org/are-all-godel-sentences-equivalent/ , comments by JDH)

"Let T be some recursively axiomatized theory. Let Pf_T(x,y) be a 'reasonable' formula representing that x is a T-proof of y, and let Bew_T(y) be ∃x[Pf_T(x,y)]. Then:

T is "Gödel consistent" iff ∀n[~Pf(n,0=1)]

T is "Artemov consistent" iff ∀n[Bew_T("~Pf(n,0=1)")]

I.e., T is Gödel consistent if there is no proof of 0=1; T is Artemov consistent if T proves, for each n, that n is not a proof of 0=1.

I take Artemov's first point to be that some theory might *prove* that T is Artemov consistent without proving that it is Gödel consistent. And, indeed, as Artemov shows, PA proves that it is Artemov consistent, even though it does not prove that it is Gödel consistent.

One objection that I and others made had the following form. Consider, say, the ternary Goldbach conjecture: Every odd number >5 is the sum of three primes. (Thanks to Tim Chow for the example.) This has apparently now been proved. Hence, we know that PA (and even Q) proves all instances of this conjecture, since it is Π_1. But we do NOT have any reason to believe that PA proves:

    ∀n>5∃xyz<n[Bew_PA("Prime(x) & Prime(y) & Prime(z) & x + y + z = n")]

I.e., the truth of ternary Goldbach does not assure us that PA *proves that* it proves all the instances. This is a genuine difference.

However, Artemov consistency is a very weak notion. It is, indeed, comparable to Rosser consistency. Recall that, in his strengthening of the first incompleteness theorem, Rosser used a gerry-mandered notion of 'provability' to weaken the requirement of omega consistency to simple consistency. That notion may be taken to be:

    RPf_T(p,s) iff Pf_T(p,s) & ∀x<p[~Pf_T(x,neg(s))]

i.e.: p is a Rosser proof of s iff p is a proof of s and no 'prior' proof is a proof of s's negation. Now we can define:

T is Rosser consistent iff ~∃p[RPf_T(p,0=1)]

It turns out that many theories can prove their own Rosser consistency, even though they cannot prove their own Gödel consistency. But this notion is too weak to be useful: For any consistent theory T, we already have that Robinson's Q proves that T is Rosser consistent. In fact, Q proves the Rosser consistency of many *inconsistent* theories. We just need the first T-proof of 0≠1 to precede the first T-proof of 0=1.

Similarly, it can be shown that IΣ_1 proves the Artemov consistency of *every* theory that contains Q, whether or not that theory is consistent. For example, IΣ_1 proves the Artemov consistency of PA + 0=1."(https://cs.nyu.edu/pipermail/fom/2019-April/021509.html, Richard Kimberly (Riki) Heck in response to )

<br>

Reference

熊明，2017，算术、真与悖论，科学出版社.

Zeng und Hsiung, An Approach to Boolean Paradoxes of Indirect Self-Reference, forthcoming.

