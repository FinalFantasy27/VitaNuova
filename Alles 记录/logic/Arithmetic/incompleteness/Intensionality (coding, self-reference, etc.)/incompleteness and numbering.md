
Notation Systems:
Finite Strings (Tarski, Quine): Polish notation, Peano notation, etc. Quine-Bourbaki-notation (Quine 1940), (Bourbaki 1954)
Finite Trees (Vermeulen 2000)
De Bruijn-index notation (De Bruijn 1972)

For a proof of G1, choose a coding such that for every $\varphi(x)$ there is an n s.t. $n=\#\varphi(\bar{n})$ ('coding with built-in self-reference') (Visser, see the Grabmayr-Visser paper).
Relative to that coding, assume that $Bew(x)$ is a provability predicate.
$PA\vdash\bar n=\overline{\#\lnot Bew(\bar n)}$ coding
$PA\vdash\lnot Bew(\bar n)\leftrightarrow \lnot Bew(\overline{\#\lnot Bew(\bar n)})$ logic
Proceed as usual to show $PA\not\vdash\lnot Bew(\bar n)$ and $PA\not\vdash\lnot\lnot Bew(\bar n)$
This proof hardly supports the claim that the sentence stating its own unprovability is independent, because this proof does not work for the usual coding schemata (even if we ignore worries about self-reference).


There exists a notation system $\iota$, a standard numbering $\gamma$ of $D_{\iota}$, the domain of the notation system, and a formula $Pr^{\gamma}_{\iota}(x)$ satisfying Loeb's condition for $T, \iota$ and $\gamma$ such that $T\vdash \lnot Pr^{\gamma}_{\iota}(\#^\gamma\bot_\iota)$.
example. Let $\mathcal A$ be an alphabet for $\mathcal L$ and let $red\mathcal A$ be a copy of $\mathcal A$ containing red symbols. Define a notation system $\iota$ over $\mathcal A^*\cup red\mathcal A^*$ such that $\phi_\iota\in \mathcal A^*$ iff $T\vdash\phi_{\iota}$. Set $Pr^\gamma_\iota(x):= Red(x)$, where Red(x) is a $\Delta^0_0$-binumeration of the ($\gamma$-codes of) red strings.
The Culprit is that The Diagonal Lemma fails for deviant formalisation choices:
\- there is no $\lambda$ such that $T\vdash\lambda\leftrightarrow \lnot Pr^\alpha(\#^\alpha\lambda)$;
\- there is no $\lambda_\iota$ such that $T\vdash\lambda_\iota\leftrightarrow \lnot Pr^\alpha_\iota(\#^\alpha\lambda_\iota)$;
\- there is no $\lambda$ such that $\mathcal N\vDash\lambda\leftrightarrow \lnot Tr^\beta(\#^\beta\lambda)$;

monotone Goedel coding: the Goedel number of an expression to be larger than the Goedel numbers of its sub-expressions.
2
(Balthasar Grabmayr: A Step Towards Absolute Versions of Metamathematical Results, "Online International Workshop on Gödel's Incompleteness Theorems" held in August 16-20, 2021, organized by School of Philosophy at Wuhan University.)



