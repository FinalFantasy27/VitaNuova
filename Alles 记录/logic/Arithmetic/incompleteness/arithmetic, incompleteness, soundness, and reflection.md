
Goedel sentences/the fix points of non-provability-in-PA is provably equivalent to the assertion Con(PA).
suppose $\psi$ that is a Gödel sentence, which means that $\psi$ asserts its own non-provability. Since $\psi$ implies that there is a non-provable sentence, namely $\psi$ itself, it follows immediately that $\psi$ implies Con(PA); conversely, $\lnot\psi$, i.e., $Prove(\#\psi)$ implies $\lnot Con(PA)$. 

we say that a sentence $\sigma$ is Rosser provable, if there is a proof of $\sigma$, but no shorter proof of $\lnot\sigma$, meaning no proof of $\lnot\sigma$ with a smaller Gödel code. The Rosser sentence $\rho$ is a non-provability fixed point of this notion.
PA proves that Con(PA) implies both $Con(PA+\rho)$ and $Con(PA+\lnot\rho)$, and moreover, $PA\vdash Con(PA)\to Con(PA+\rho)$.
But since $PA\vdash Con(PA)\to Con(PA+\lnot\rho)$, it follows that PA, if conssitent, cannot prove the converse, $\rho\to Con(PA)$, since otherwise $PA+\rho$  would prove its own consistency.
So the Rosser sentence $\rho$ is strictly weaker than Con(PA) over PA.
——
D. Guaspari and R. Solovay, 'Rosser Sentences', Annals of Math. Logic vol 16 (1979), pp. 81-99.
There are some 'standard' provability predicates whose Rosser sentences are all equivalent, and there are other 'standard' provability predicates whose Rosser sentences are not all equivalent. (Being standard is a matter of satsifying two of the usual derivability conditions.) 
in Buss's Handbook of Proof Theory (1998), p. 496, it is still reported as an open question whether there is a reasonable notion of "usual" provability predicate for which it can be settled whether or not all Rosser sentences for such a predicate are equivalent.
（Peter Smith）
Christopher von Bülow, A remark on equivalent Rosser sentences, Annals of Pure and Applied Logic, Volume 151, 2008, pp. 62-67. claims that there's an oversight in the paper by Solovay et al, and that the premises have to be strengthened to fix the oversight. 
\- it seems that Solovay et al have proved that even with natural provability predicates, the Rosser sentence can be non-unique, depending on the implementation. (Hamkins)

the class of $\Sigma_1$ formulas is the smallest class containing the atomic formulas and closed under conjunction, disjunction, bounded existential quantification, and existential quantification.

PA is $\Sigma_1$-complete, i.e. PA proves every true $\Sigma_1$ sentence. 

for any particular natural number n, PA proves that n is not the Gödel number of a proof that 0=1

PA + ¬Con(PA) is not ω-consistent because it proves that, for some natural number n, n is the Gödel number of 0=1, and in fact $\Sigma_1$-unsound because ¬Con(PA) is $\Sigma_1$.

Since $\bot$ is a $\Sigma_1$ sentence, reflection for $\Sigma_1$ sentences prove the consistency of PA and is therefore not conservative over PA


T=PA+~ConPA + ConT is inconsistent, although T is consistent.

let T be PA+"PA is not Σ-sound". Note that “PA is Σ-sound” can be formulated “For every p and every Σ1- formula ∃xφ there is a k such that if p is a proof of ∃xφ in PA then φ(k) is true”, and thus as a Π2-sentence, so “PA is not Σ-sound” can be taken to be a Σ2-sentence. For this T, T+“T is Σ-sound” is clearly inconsistent, but T itself is Σ-sound.

