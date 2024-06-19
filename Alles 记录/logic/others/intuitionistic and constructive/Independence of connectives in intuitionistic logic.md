
Independence of connectives ($\neg, \vee, \land, \to$) in intuitionistic logic

McKinsey showed this using nigh-trivial semantic proofs: in modern terminology, he constructs Heyting algebras as counterexamples. Despite its age, the article remains very readable, and answers your question thoroughly.
J.C.C. McKinsey. Proof of the independence of the primitive symbols of Heyting’s calculus of propositions. The Journal of Symbolic Logic, 4(04), 155–158., 1939. doi:10.2307/2268715

some proof-theoretic arguments which make use of cut-elimination, and show that in particular disjunction and negation are independent of the other connectives. Unlike semantic proofs, these generalize straightforwardly to the first-order case. For the other two connectives (conjunction, implication) I present a variant of McKinsey's proofs: while the independence of conjunction and implication can be shown proof-theoretically as well, the methods I know require quite a bit of symbol-pushing.

Disjunction property: if $\Gamma$ of does not contain any disjunction connectives, and $\Gamma\vdash M\lor N$, then we can find a proof of either $\Gamma\vdash M$ or $\Gamma\vdash N$.
of the intuitionistic propositional calculus can be proved by induction on (cut-free) derivations.
A. S. Troelstra, H. Schwichtenberg: Basic Proof Theory, 2nd edition, 2000. ISBN 9781139168717, Theorem 4.2.4.

1. $\lor$ is independent of the other connectives $\neg, \rightarrow, \wedge$:

Suppose that we can find a formula $Q$ in the $\{\neg, \rightarrow, \wedge\}$  fragment such that $Q \vdash M \vee N$ and $M \vee N \vdash Q$  holds for the atomic propositions $M,N$.

Since $Q\vdash M\lor N$ and $Q$ does not contain disjunctions, we have either $Q\vdash M$ or $Q\vdash N$ by the disjunction property.

But of course the same fails for $M \vee N$: neither $M \vee N \vdash M$ nor $M \vee N \vdash N$. (Cut $M \vee N \vdash M$  against the usual proof of $N\vdash M\lor N$ to obtain a proof of $N \vdash M$. By cut-elimination this would also have a cut-free proof, but that's impossible.)

2. the case of $\lnot$

The connectives $\{\to,\lor,\land\}$ build provable formulas from provable propositional atoms: if $\vdash A$ and $\vdash B$, then for any formula $Q$ made up of $A,B$ and the connectives $\{\to,\vee,\wedge\}$ we have $\vdash Q$. However, $\lnot$ can be used to build unprovable formulae from provable atoms: if $\vdash A$ and $\vdash \lnot A$ both hold, then we can extract a proof of $A\vdash$ (by looking at the last step of a cut-free proof of $\vdash\lnot A$), so by cut we'd have a proof of the empty sequent $\vdash$. But that is impossible, so if $A$ is provable then $\lnot A$ is not provable.

<br/>

A Heyting algebra is a bounded lattice (with join and meet operations written $\lor$ and $\land$ and with least element $0$ and greatest element $1$) equipped with a binary operation $a \to b$ of implication such that $(c \land a) \le b$ is equivalent to $c \le (a \to b)$.
A bounded lattice is a lattice that additionally has a greatest element (also called maximum, or top element, and denoted by ${\displaystyle 1,}$ or by ${\displaystyle \top }$) and a least element (also called minimum, or bottom, denoted by ${\displaystyle 0}$ or by ${\displaystyle \bot }$), which satisfy ${\displaystyle 0\leq x\leq 1\;{\text{ for every }}x\in L.}$
A partially ordered set is a bounded lattice if and only if every finite set of elements (including the empty set) has a join and a meet. 

The set of numbers $\{1,2,3,4,6,9,12,18,36\}$ forms a Heyting algebra when equipped with the operations $gcd$ (greatest common divisor, interpreting conjunction), $lcm$ (least common multiple, interpreting disjunction), and the following implication operation $\Rightarrow$:

=>|  1  2  3  4  6  9 12 18 36
--+---------------------------
1 | 36 36 36 36 36 36 36 36 36
2 |  9 36  9 36 36  9 36 36 36
3 |  4  4 36  4 36 36 36 36 36
4 |  9 18  9 36 18  9 36 18 36
6 |  1  4  9  4 36  9 36 36 36
9 |  4  4 12  4 12 36 12 36 36
12|  1  2  9  4 18  9 36 18 36
18|  1  4  3  4 12  9 12 36 36
36|  1  2  3  4  6  9 12 18 36

All you need to check is that if $z$ divides $x \Rightarrow y$ then $gcd(z,x)$ divides $y$, and vice versa (admittedly, this is the tedious/annoying part of the semantic method, but you can cut this particular verification short using prime factors).

1. $\land$  is independent of the other connectives

The set $H=\{1,12,18,36\}$ is clearly closed under least common multiples. Referring to the table above, we can check that it is closed under $\Rightarrow$ as well. Since $1\in H$, it follows that $H$ is closed under $\lnot$ too. So, if conjunction was definable in the fragment $\{\lnot,\lor,\to\}$, then our set would be closed under greatest common divisors as well. But $gcd(12,18)=6\notin H$.

4. Implication is independent

Take the Heyting algebra above. Clearly the set $S=\{1,6,12,36\}$ is closed under both $gcd$ and $lcm$. Moreover, it is closed under negation, since $1 \Rightarrow 1 = 36$ and $x \Rightarrow 1 = 1$ for any $x>1$ in $S$. So if implication was definable in the $\{ \neg, \vee, \wedge \}$  fragment, it would preserve membership in $S$. But $12 \Rightarrow 6 = 18 \not\in S$.

Z. A. K., https://math.stackexchange.com/questions/3929481/independence-of-connectives-in-intuitionistic-logic

