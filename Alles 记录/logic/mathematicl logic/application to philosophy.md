

在科学哲学中的应用一则：一个递归公理化的形式系统，其定理集是递归可枚举的，这个事实是哥德尔不完全性定理证明的核心之一。然而其反问题，是否任意递归可枚举的定理集一定可以递归公理化，则直到五十年代才被Craig通过一个精妙的小技巧解决。受逻辑实证主义影响，上世纪的科学哲学有一个典型的倾向，即清除科学理论中无法被直接检验的理论词项，只保留观察词项。亨普尔利用Craig定理证明这至少在原则上是可行的：设存在包含理论词项和观察词项的递归公理化理论T,T是递归可枚举的，T中只有观察词项出现的子理论To也是递归可枚举的（只需在T的枚举程序前加一个判定是否有非观察词项出现的子程序），因而To存在一个（只有观察词项的）递归公理化，故科学理论中的非观察词项都是可消除的。

Ramsey语句使用了二阶存在量词，而Craig定理是针对一阶逻辑的。Ramsey语句并没有真正消除理论词项，只是回避了理论词项的指称问题。当然这种方式也契合逻辑实证主义的思路，卡尔纳普就认为Ramsey语句是一种在科学理论中保留分析–综合二分法的方式（而不是将科学语句分成观察语句，理论语句和桥接语句）。

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