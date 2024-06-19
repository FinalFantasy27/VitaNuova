
补充

(前史；布尔函数分析；布尔网络)

在自然语言 (natural language/colloquial language supplemented with additional symbols) 下发展逻辑和在集合论下形式地发展逻辑理论

对于新引入的记号，可以作为元语言中用初始符号书写的形式的缩写；也可以扩充语言

前缀式记法的一个优点：它使项与公式具有统一的形式。这一点由以下的引理所保证：

lemma 1.1 一阶语言的每个表达式都是非空的符号串，而且都可以表示成$u\mu_1\cdots\mu_n$，其中$n\ge0$，$u$是指数为$n$的符号，$\mu_1\cdots\mu_n$都是表达式。（叶峰，pp. 38-9）

歧义：如某个语言中101, 10, 01和1都是合法的表达式，那么101可以读作10-1，也可能读作1-01.自然语言中，如“消灭了敌人的士兵”

罗素、维特根斯坦和卡尔纳普的意义和精确语言理论

一阶语言的唯一可读性引理可以由以下引理得到

lemma 1.2 设$\mu_1,\cdots,\mu_n,\mu_1',\cdots,\mu_m'$都是一阶语言$\mathscr{L}$的表达式，又设$\mu_1\cdots\mu_n$是符号串$\mu_1'\cdots\mu_m'$的前段，则必有$n\le m$而且

$\mu_1=\mu_1',\cdots,\mu_n=\mu_m'.$（ibid. p.39）

使用中缀记法和括号唯一可读性可由以下引理得到

lemma 1.3 (前缀引理) 如果$\phi\in\mathcal{L_0}$，那么其真前缀不可能在$\mathcal{L_0}$中。（冯琦，p. 13.）

或可归纳得到，合式公式的左右括号数目一定相等

<br/>

(代入)

<br/>

命题逻辑可以看作$0$阶逻辑或者通过布尔化的方式作为一阶逻辑的子部分

<br/>

mathematical induction: weak; weak, in its strong formulation; strong (paul teller, 2ch11; Baldwin)

<br/>

所谓真值函项，
如“我相信太阳是红的”中的“我相信”就不是一个真值函项。

（超内涵）

诱导的相关内容：由Theorem 1.3.9可以立刻得到$\{\lnot,\lor,\land\}$的真值函项完全性，进一步的$\{\lnot,\lor\}$或$\cdots$也是完全的，更进一步地，只要一个就好了，sheffer stroke ("not both")和NOR (is true precisely when neither p nor q is true)

我们也可以得出$\{\land,\lor,\to,\leftrightarrow\}$是不完全的，因为这四者都是保真的，因而不能定义$\lor$等，更多具体可参见http://jdh.hamkins.org/the-hierarchy-of-logical-expressivity/

更进一步地，我们可以研究其它逻辑（如模态逻辑等）里的sheffer stroke

<br/>

Craig 1950

propositional interpolation

a constructive proof. Assume $⊨φ → ψ$. The proof proceeds by induction on the number of propositional variables occurring in $φ$ that do not occur in $ψ$, denoted $|atoms(φ) − atoms(ψ)|$.

Base case $|atoms(φ) − atoms(ψ)| = 0$: Since $|atoms(φ) − atoms(ψ)|$ = 0, we have that $atoms(φ) ⊆ atoms(φ) ∩ atoms(ψ)$. Moreover we have that $⊨φ → φ$ and $⊨φ → ψ$. This suffices to show that $φ$ is a suitable interpolant in this case.

Let’s assume for the inductive step that the result has been shown for all $χ$ where $|atoms(χ) − atoms(ψ)| = n$. Now assume that $|atoms(φ) − atoms(ψ)| = n+1$. Pick a $q ∈ atoms(φ)$ but $q ∉ atoms(ψ)$. Now define:

$φ' := φ[⊤/q] ∨ φ[⊥/q]$

Here $φ[⊤/q]$ is the same as $φ$ with every occurrence of $q$ replaced by $⊤$ and $φ[⊥/q]$ similarly replaces $q$ with $⊥$. We may observe three things from this definition:

$⊨φ' → ψ$ (1) 

$|atoms(φ') − atoms(ψ)| = n$ (2) 

$⊨φ → φ'$ (3)

<br/>

两则公理系统：

1. $A \to (B\to A);(A\to(B\to C))\to ((A\to B)\to(A\to C));(\lnot A\to \lnot B)\to((\lnot A\to B)\to A)$

2. $(\lnot A\to A)\to A;A\to (\lnot A\to B);(A\to B)\to (B\to C)\to (A\to C)$ (lukasiewicz)

soundness and completeness for propositional, post, 1920

completeness theorem

kalmar's proof of (weak) completeness

lemma 1.4. 设$A$是$P$中的任意公式。$p_1,\cdots,p_n$是在$A$中出现的所有不同的命题变项。$V$是$P$的任一赋值。对于任一$p_i(1\le i \le n)$，定义$p_i'$如下：如果$V(p_i)=1$, 则令$p_i'$就是$p_i$; 如果$V(p_i)=0$, 则令$p_i'$是$\lnot p_i$。如果$V(A)=1$, 则$A':=A$, 否则$A':=\lnot A$. 则

$p_1',\cdots,p_n'\vdash A'$.（陈慕泽，p. 209）

对联结词数量施归纳

然后在$A$是重言式的条件下依次消去$p_1,\cdots,p_n$.

lemma 1.5. 对每个重言式，如果它是一个简单析取式（是命题变号或命题变号否定的析取），那么其析取枝中有某一个是另一个的否定.

lemma 1.6 每个公式，如果它是命题变号和命题变号的否定的合取，那么它不是重言式.（徐明的slide）

由合取范式（对任一公式存在一合取范式与其可证等值）可得.

Godel's original proof: prefix normal form and Every formula $φ$ is either refutable or satisfiable. (Godel on semantics, cf. Godel (1929), cited in LOGIC IN THE 1930s: TYPE THEORY AND MODEL THEORY, p.443)

tableau. advanced note pp.44 (48) ~ 50

考察完全性证明所需的条件，也就是hintkka的做法

<br/>

independence. Bernays (and hilbert) (Zach bernays, p. 344). many-valued logic 

<br/>

(Deduction theorem)





