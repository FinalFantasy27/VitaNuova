TBD

LessWrong不想提到归纳类型的具体规则，一方面又把其部分规则拿过来放到依赖配对中，把它们当作基本的来讲
Rules
https://ncatlab.org/nlab/show/Martin-L%C3%B6f+dependent+type+theory

5

We need propositional extensionality to prove $LEM$ from $AC$. (The proof showing that the axiom of choice implies LEM/DNE is quite complicated so we’ll only discuss the requirements here.) And then, together with $LEM$, propositional extensionality will make $\Omega$ (the index type of all truth values) collapse to $2$, the type with exactly $2$ elements; which makes sense because all the subsingletons will be indistinguishable from $0$ and $1$, so just two possibilities.

Most of the types we work with are $0$-types (except the universe type $\mathcal U$). For example, the type of the natural numbers, $\mathbb N$, is a $0$-type, and a very rough argument for this is that since we define natural numbers to be constructed by repeated application of the successor function $succ: \mathbb N\to\mathbb N$ to the unique element $0:N$, the equality of two numbers only depends on how many $succ()$ applications they have. No other factor comes into play, and so “the proof for their identity is unique.” (If that didn’t sound very convincing, check out the proof in section $2.13$ of $HoTT$.)

In a $(−1)$-type, all equality types are $(−2)$-types. In a $(−1)$-type, all equality types are inhabited, so $(−2)$-types are all the “truthy” types – types that have exactly one element. （a =_A a（A是(-1)-type）只有一个元素） The predicate $isContr$ that I defined above identifies $(-2)$-types.
HoTT book  contractible type一节这些基本性质

With the definition of $0$-types we can amend the axiom of choice to say that the index type $I$ has to be a $0$-type. This will make it compatible with univalence and will not make it weaker, to my knowledge.

All types to be 0-types is not compatible with the univalence axiom (√). Could we just use the weaker version of the univalence axiom 
$\forall (A,B:\mathcal U). \| A =_{\mathcal U} B\|\Leftrightarrow(A\simeq B)$
which only asserted that the equality type is inhabited but not by how many elements? It seems to me that this could be compatible with UIP and not cause other inconsistencies, but I couldn’t find anything about this when searching on the internet.

Dependent type theory (i.e., the type theory we’ve been talking about) with $UIP$ (uniqueness of identity proofs) is an example of a so-called set-level type theory where all types behave like “sets” ($0$-types). Another way to get a set-level type theory is modifying judgmental equality such that it agrees with propositional equality. Such a type theory is called [extensional type theory](https://ncatlab.org/nlab/show/extensional+type+theory) which might be a bit confusing because it has nothing to do with propositional or function extensionality.

With univalence, the set of all subsingletons, $TruthVal_{\mathcal U}$, is a $0$-type, by the way – even without $LEM$ (in which case it collapses to $2$ and is obviously a $0$-type). The informal argument for this is that there can only exist one equivalence between two subsingletons (under function extensionality, that is; which is implied by univalence).
Function types like “$A\to B$” are $0$-types as long as the codomain $B$ is a $0$-type; the domain $A$ can be any type. Families of types, which have the type $I\to \mathcal U$ where $I$ is some index type, are not $0$-types though, because $\mathcal U$ is certainly not a $0$-type (under univalence).
$Set$ is a $1$-type. Because subtypes of $0$-types are $0$-types.

The 0-truncation that we used to define $Card$ can be defined as an inductive type, which I haven’t talked about. The definition of inductive types is a generalization of how the natural numbers are defined (namely, inductively). But it’s a very complex topic that I won’t go into here. Suffice to say that there is a rigorous way to define things like 0-truncation, including the mapping of the elements.

With the univalence axiom we have $Fin(m)+Fin(n)=Fin(m+n)$, but the two “$+$” symbols refer to different operations; the one on the left is a binary sum type while the one on the right is addition on the natural numbers.