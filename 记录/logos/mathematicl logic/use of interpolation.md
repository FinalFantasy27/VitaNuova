use of interpolation

e.g. Lemma 1 (Parikh 1999) Given a formula $A$, there is a smallest language $L'$ in which $A$ can be expressed, i.e., there is $L'\subseteq L$ and a formula $В \in L'$ with $А \iff В$, and for all $L''$ and $B''$ such that $B'' \in L''$ and $А \iff В'', L' \subseteq L''$.

Although $A$ is equivalent to many different formulas in different languages, lemma 2 tells us that nonetheless, the question, "What is $A$ actually about?" can be uniquely answered by providing a smallest language in which (an formula equivalent to) $A$ can be stated

Theorem 2 Parallel interpolation (George Kourousias and David Makinson 2007) Let $A = \bigcup \{A_i\}_{i\in I}$ where the letter sets $E(A_i)$ are pairwise disjoint, and suppose $\bigcup \{A_i\}_{i\in I}\vdash x$. Then there are formulae $b_i$ such that each $E(b_i)\subseteq E(A_i) \cap E(x), A_i \vdash b_i$, and $\{b_i\}_{i\in I}\vdash x$.

Proof. By compactness, ...
By interpolation ...

Entailment along arbitrary relations (Barwise and van Benthem 1999) $R$: If $M\models\phi$ and $MRN$, then $N\models \psi$

a restate of Los-Tarski Theorem (van Bentham 2008) 

Theorem 3 The following assertions are equivalent for first-order formulas $\phi,\psi$:
(a) $\phi$ entails $\psi$ along sub-models,
(b) there is a universal formula $\alpha$ such that $\phi \models \alpha \models \psi$.