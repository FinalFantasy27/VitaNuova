

The old question whether the Second Incompleteness theorem has been established or not has been discussed by Feferman, Detlefsen, Franks, Pudlak and others, mostly centering on the three Hilbert-Bernays derivability conditions as given in Hilbert and Bernays 1934.


the usual operations on codes should be computable and be provably recursive in the relevant theory. A coding schema may be reasonable relative to PA, but fail to be reasonable relative to a weaker theory. 

General claim such as 'No r.e. theory extending $I\Sigma_1$ proves its own consistency.' 

The worry is that the philosophical significance of metamathematical results is undermined by intensionality. For example, the philosophical significance of the second incompleteness theorem is threatened by the existence of 'provability predicates' (e.g. Rosser provability) for which the second incompleteness theorem fails.

A result may hold for one specific coding scheme, but not for others (e.g. non-monotonic coding schemes).
A result may hold for one specific way of diagonalizing a formula but not for others. 

sources of intensionality
1. language (function symbols for all p.r. functions, for exponentiation, or fewer)
2. coding of expression (sentences)
3. expressing properities such as partial truth, provability etc, expressing conssitency etc.
4. self-reference

the third paragraph of Kreisel's 1953 paper with the notation adapted.Kreisel's criterion for the expression of provability:
A formula $Bew(x)$ is said to express provability in $\Sigma$ if it satisfies the following condition: for numerals $\bar n$, $Bew(\bar n)$ can be proved in $\Sigma$ iff the formula with number n can be proved in $\Sigma$. (weakly representability)
A set $S$ of natural numbers is strongly representable in $F$ if there is a formula $A(x)$ of the language of $F$ with one free variable $x$ such that for every natural number $n$:
$n \in S \Rightarrow F \vdash A(\underline{n})$;
$n \not\in S \Rightarrow F \vdash \neg A(\underline{n})$,
A set S of natrual numbers is weakly representable in $F$ if there is a formula $A(x)$ of the language of $F$ such that for every natural number $n$:
$n\in S\Leftrightarrow F\vdash A(\underline n)$.
The Representability Theorem
In any consistent formal system which contains Q:
1. A set (or relation) is strongly representable if and only if it is recursive;
2. A set (or relation) is weakly representable if and only if it is recursively enumerable.

(Numeralwise) representability, will gives us G1 in some intensional form, but not G2.
this notion of representability is useless for more complex notions, such as $\Pi$-truth or the like.
Alternative: 
- Whatever satisfies the Loeb derivability conditions expresses provability.
Feferman's (1960) standard provability predicate for PA does not satisfy Loeb's conditions for PA.
Loeb's conditions.
1. $T\vdash \phi$ implies $T\vdash Pr(\#\phi)$;
2. $T\vdash Pr(\#\phi)\wedge Pr(\#(\phi\to\psi))\to Pr(\#\psi)$;
3. $T\vdash Pr(\#\phi)\to Pr(\#(Pr(\#\phi)))$.

- Whatever provably yields the T-sentence is a truth predicate (for a specific class of sentences).

(Volker Halbach: Self-reference and intensionality in metamathematics)