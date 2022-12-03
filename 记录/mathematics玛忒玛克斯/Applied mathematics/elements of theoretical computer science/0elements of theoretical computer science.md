
exercise: design a deterministic finite automata which accepts $L(E_2)=\{w|w中含有子串001\},\Sigma=\{0,1\}$, $\Sigma$是语言的字符表

正则运算
设A, B是两个语言，正则运算是
并 $A\cup B=\{x|x\in A或x\in B\}$
连接 $AB=\{xy|x\in A且y\in B\}$
\* $A^*=A^0\cup A^1\cup A^2\cup\dots=\{\epsilon\}\cup A\cup AA\cup \dots=\{x_1x_2\dots x_k | k \ge 0 且每个x_i\in A\}$

Theorem. 正则语言（有穷自动机识别的语言）对正则运算封闭

(对补运算的封闭性)

非确定性有穷自动机(nondeterministic)包含$\epsilon$移动
无法移动时，该备份消失；有一个备份接受，整个计算就接受

(例子.$L(N_2)=\{w|w倒数第3个字母为1\}$)

正则表达式
$R$是正则表达式当且仅当$R$是
$a,a\in\Sigma$
$\epsilon$
$\emptyset$
$(R_1\cup R_2)$, $R_1, R_2$都是正则表达式
$(R_1R_2)$, 同上
$(R_1^*)$, 同上

$L(R)$: R表示的语言

e.g. 设$\Sigma-\{0,1\}$,
$0^*10^*$
$\Sigma^*1\Sigma^*$
$\Sigma^*001\Sigma^*$
$(\Sigma\Sigma)^*=\{w|w为偶数长度\}$
$(\Sigma\Sigma\Sigma)^*$
$01\cup10=\{10,10\}$
$0\Sigma^*0\cup 1\Sigma^*1\cup 0\cup 1=\{w|w首尾符号相同\}$
$(0\cup \epsilon)1^*=01^*\cup 1^*$
$(0\cup \epsilon)(1\cup\epsilon)=\{\epsilon,0,1,01\}$
$1^*\emptyset=\emptyset$
$\emptyset^*=\{\epsilon\}$

$R\cup \emptyset=R$
$R\epsilon=R$
一般$R\emptyset\not=R, R\cup\epsilon=R\cup\{\epsilon\}\not=R$
$R\emptyset=\emptyset$

正则表达式与自动机等价

非正则语言, e.g.
$\Sigma=\{0,1\}$
$B=\{0^n1^n|n\ge0\}$
$C=\{w|w中0和1一样多\}$
$B=C\cap 0^*1^*$
$D=\{w|w中子串01和10一样多\}$
D是正则的，B和C不是

泵引理
设A是正则语言, 则存在常数p, 使得若$s\in A$且$|s|\ge p$, 则$s=xyz$, 并且满足下述条件
$\forall i\ge 0, xy^iz\in A$
$|y|>0$
$|xy|\le p$
(泵引理图示)
证明.设$A=L(M),M=(Q,\Sigma,\delta,q_1,F),|Q|=p,s=s_1s_2\dots s_n\in A,n\ge p$. 设$M$在$s$上计算$r_1, r_2,\dots, r_{n+1},\delta(r_i,s_i)=r_{i+1}$. 根据鸽巢原理，存在$j<l$, 使得$r_j=r_l,l\le p+1$.令$x=s_1\dots s_{j-1}, y=s_j\dots s_{l-1},z=s_l\dots s_{n+1}$. 由于$x$让$M$从$r_1$到$r_j$, $y$让$M$从$r_j$到$r_{n+1}$, 而$r_{n+1}$是接受状态, 所以$\forall i\ge 0,xy^iz\in A$. 由于$j\not=l$, 所以$|y|>0$. 由于$l\le p+1$, 所以$|xy|\le p$.

泵引理用来证明某语言不是正则的
exercise. 证明语言$B$不是正则的

上下文无关文法(GFG), e.g.
文法$G_1$: 
$A\rightarrow 0A1$
$A\rightarrow B$
(缩写成$A\rightarrow0A1|B$)
$B\rightarrow \#$
(语法分析树)
$L(G_1)=\{0^n\#1^n|n\ge 0\}$

($G_2$名词短语动词短语等)

合并GFC, e.g.
为$\{w|w=0^n1^n或w=1^n0^n,n\ge0\}$设计GFC. 
为$\{w|w=0^n1^n,n\ge0\}$设计GFC.
$G_1=(\{S_1\},\{0,1\},\{S_1\rightarrow0S_11,S_1\rightarrow\epsilon\},S_1)$
为$\{w|w=1^n0^n,n\ge0\}$设计GFC.
$G_2=(\{S_2\},\{0,1\},\{S_2\rightarrow1S_20,S_2\rightarrow\epsilon\},S_2)$
$G=(\{S,S_1,S_2\},\{0,1\},\{S\rightarrow S_1,S\rightarrow S_2,S_1\rightarrow0S_11,S_1\rightarrow\epsilon,S_2\rightarrow1S_20,S_2\rightarrow\epsilon\},S)$

Theorem. CFL对并运算封闭.
Theorem. 正则语言都是上下文无关语言.

$ww^R$, $w^R$为$w$的倒置，上下文无关
$ww$非正则，非上下文无关
非$ww$, 上下文无关

(不同的分析树)
两个不同的最左派生: 每一步都替换最左边的变元
歧义地派生: 有两个不同的最左派生
歧义文法: 文法歧义地产生某个串, e.g.
$<EXPR>\Rightarrow <EXPR>+<EXPR>$
$\Rightarrow a+<RXPR>$
$\Rightarrow a+<EXPR>\times<EXPR>$
$\Rightarrow a+a\times <EXPR>\Rightarrow a+a\times a$

$<EXPR>\Rightarrow <EXPR>\times<EXPR>$
$\Rightarrow\cdots$

固有歧义语言: 只能用歧义文法产生, e.g.
$\{0^i1^j2^k|i=j或j=k\}=\{0^n1^n2^m|n,m\ge0\}\cup\{0^m1^n2^n|n,m\ge0\}$

乔姆斯基范式CNF: 只允许如下形式的规则:
$S\rightarrow\epsilon$
$A\rightarrow BC$
$A\rightarrow a$, 
其中$A,B,C$是任意变元, $B,C$不是初始变元（初始变元不能在右方出现）, $a$是任意终结符

Theorem. 任意CFG都有等价的CNF
Proof Sketch. 添加新的初始变元, 分别处理非形如上的规则

(下推自动机PDA, 栈的高度不限)
有穷自动机没法处理$0^n1^n$这种串是因为记不住0跟1的个数

$\{0^{2^n}|n\ge0\}$这个语言间隔越来越大，而上下文无关和正则语言都有泵引理，里面要有一个等差数列，因此有限状态机和下推自动机都不能识别这个语言

线性界限自动机（LBA）

利用计算历史的归约

(接受上面那个语言的图灵机)

1进制乘法$C=\{a^ib^jc^k|i\times j=k\}$
(接受其的图灵机)

图灵机的等价变形: 双向无穷带, 多维带, 多带(分道, 分带, 用单带模拟是一条带的每个格子里六个符号，六个符号占六行; 三个输入带和三个指针位置的带加起来一共六个带), 多头, 非确定型, ...
多带图灵机的转移函数:
$\delta: Q\times\Gamma^k\rightarrow Q\times\Gamma^k\times\{L,R\}^k$
$\delta(q_i,a_1,\dots,a_k)=(q_j,b_1,\dots,b_k,L,R,\dots,L)$
非确定型图灵机NTM: $\delta: Q\times\Gamma\rightarrow P(Q\times\Gamma\times\{L,R,S\})$
(非确定型图灵机计算树)

计算装置的工作方式
识别器: 输入x，输出0/1/?
判定器: 输入x, 输出0/1
转换器: 输入x, 输出y
产生器: 输入$0^n$, 输出$x_n$
枚举器: 输入$\epsilon$, 输出$x_1,x_2,\dots$, 无遗漏，无多余，可重复

Theorem. 图灵可识别等价于可枚举
$\Rightarrow$: 枚举$\Sigma^*$, 逐个识别楔形过程: 对$s_1,s_2,\dots,s_k$运行k步
$\Leftarrow$: 枚举, 等待x出现

CFG等价于PDA, 上下文无关语言的泵引理, CFL对正则运算封闭, 对交、补不封闭

洪水算法对$A=\{<G>|G是连通无向图\}$的应用

正则表达式派生性问题$A_{REX}=\{<R,w>|正则表达式$R$派生串$w$\}$
$\dots$

$DFA$接受性问题, $A_{DFA}$
Theorem. $A_{DFA}$可判定, Proof. $TM\ M=$“对输入$<B,w>$, $B$是$DFA$, $w$是串: 在输入$w$上模拟$B$. 若模拟以接受状态结束, 则接受; 若以非接受状态结束, 则拒绝.”
$TM \ M$首先检查$<B,w>$, 若$w$不是字符串, 或$B$不是$(Q,\Sigma,\delta,q_0,F)$形式, 则拒绝. 然后$M$知性模拟. $M$通过在带上写下信息，来跟踪$B$在$w$上运行时当前状态和当前位置. 状态和位置的更新由$B$的转移函数确定. 当$M$处理完$w$最后一个符号时, 如果$B$处于接受状态, 则$M$接受, 否则拒绝.

$DFA$空性问题$E_{DFA}=\{<A>|A是DFA且L(A)=\emptyset\}$
可判定, 采用洪水标记算法

Theorem: $EQ_{DFA}$是可判定语言
Proof Sketch: 正则语言对布尔运算封闭, 因此对于对称差运算封闭, 两个语言相等当且仅当其对称差为空语言, 正则语言的空性问题可判定.
Proof. $TM \ F=$“对于输入$<A,B>$, $A$和$B$都是$DFA$: 构造$DFA \ C$使得$L(C)=L(A)\oplus L(B)$, 在输入$<C>$上运行$TM\ T$, 如果$T$接受, 否则拒绝.”

$CFG$派生性问题, 空性问题, 等价性问题(不可判定, $DCFG$等价性问题可判定), 满性问题(不可判定)

Theorem. $A_{CFG}$可判定: 让$G$遍历所有派生, 以确定哪一个是$w$的派生, 如果$G$产生$w$, 这个过程终止, 如果$G$不产生$w$, 这个过程终止, 如果不产生$w$, 不终止, 这样只证明$A_{CFG}$是图灵可识别的.
采用$CNF$, 派生长度为$n$的串恰好需要$2n-1$步, 先把$G$转换成等价的$CNF$, 在检查所有长度为$2n-1$的派生. 

(语言之间的关系)

$LBA$接受性问题可判定, 空性问题不可判定, 停机性问题可判定

全体图灵可识别语言构成可数集, 全体语言不可数, 因此存在非图灵可识别语言

$A$可判定 iff $A$和$A$的补都图灵可识别 (可判定语言对布尔运算封闭)
$\Leftarrow$: 设$A$和$A^C$都是可识别的. 设$TM \ M_1$识别$A$, $M_2$识别$A^C$. 构造$M=$“对输入$w$: 在输入$w$上并行运行$M_1$和$M_2$. $M$有两个带, 一个模拟$M_1$, 另一个$M_2$, $M$交替地模拟两个机器的一步, 直到其中一个停机, 若$M_1$接受, 则拒绝，若$M_2$接受, 则拒绝.”

引理. 存在可计算函数$q: \Sigma^*\rightarrow\Sigma^*$, 对任意串$w$, $q(w)$是图灵机$P_w$的描述, $TM \ P_w$打印出$W$,然后停机
$\forall w,q(w)=<P_w>, \forall x,P_w(x)=w$, 对任何$w$, $P_w$都存在, 从$w$得到$<P_w>$的过程是可计算的

(自我复制机), 自己打印自己的$TM$, 
$TM\ SELF$
$\forall x,SELF(x)=<SELF>$
$<SELF>=<AB>$
$\forall x,A(x)=<B>,B(x)=<A>$ 
构造: $A=P_{<B>}, <A>=<P_{<B>}>=q(<B>)$
$B$="对输入$<M>$",
$<M>$是$TM$的部分描述:
1. 计算$q(<M>)$
2. 用$q(<M>)$和$<M>$合成完整的$TM$描述
3. 打印这个描述, 然后停机

Theorem. 递归定理: 设$TM\ T$计算函数$t: \Sigma^*\times\Sigma^*\rightarrow\Sigma^*$, 则存在$TM\ R$计算函数$r:\Sigma^*\rightarrow\Sigma^*$, 使得$\forall w, r(w)=t(<R>,w)$.
若$t(x,y)$是二元函数, 则固定输入$x=c$后，变成一元函数$t(c,y)$, 若$t(x,y)$可计算, 则对任意$c$, $t(c,y)$也可计算, 递归定理说: 存在$c$, 使得$c$就是计算$t(c,y)$的程序
Proof. $<R>=<ABT>, A=P_{<BT>}$, $B=$“对输入$w$, 输出$q(w)$”. 
$TM\ R=$“对输入$w$:
1. 运行$A$, 在带上写下$<BT>$
2. 运行$B$, 在带上写下$<A>$, 
拼装出$<ABT>$
3. 对$<ABT,w>$运行$T$.”

递归定理用途: $TM$自引用定义, $TM \ M="\dots<M>\dots"$是合法定义:
先定义$TM\ T=$“对输入$x,y:\dots x \dots$”, 根据递归定理, 存在这样的$R$, $TM \ R=$“对输入$y:\dots <R> \dots$”, e.g. $TM \ SELF=$“对任意输入, 利用递归定理得到自己的描述$<SELF>$, 打印$<SELF>$”或“对任意输入, 打印$<SELF>$”
代替对角化, 证明$A_{TM}$不可判定, $MIN_{TM}$不可识别
不动点定理: $\forall$可计算函数$t$, $\exists TM \ F, L(t<F>)=L(F)$

$A_{TM}=\{<B,w>|TM \ B接受串w\}$
lemma. $A_{TM}$是图灵可识别的
设计通用机$TM \ U$模拟$M$在$w$上的计算, 当$M$在$w$上停机接受时, $U$接受; 拒绝时, $U$拒绝, 不停机时, $U$不停机

Theorem. $A_{TM}$是不可判定的
Proof. 假设$TM \ H$判定$A_{TM}$, 构造$TM \ B=$“对于输入$w$:” 由递归定理得到它自己的描述$<B>$, 在输入$<B,H>$上运行$H$, 若$H$接受, 则拒绝; 若$H$拒绝, 则接受.
$B$接受$w$ $\Leftrightarrow <B,w>\in A_{TM} \Leftrightarrow H$接受$<B,w> \Leftrightarrow B$拒绝$w$, 矛盾 

$\overline{A_{TM}}$不是图灵可识别的

停机问题不可判定
图灵机等价性问题不可判定
空性问题不可判定
图灵机正则性问题 (是否等价于一个有穷自动机) 不可判定

$MIN_{TM}=\{<M>|M是极小TM\}$
Theorem. $MIN_{TM}$不是图灵可识别的
Proof. 假设$TM\ E$枚举$MIN_{TM}$. 构造$C=$“对于输入$w$: 由递归定理得到自己的描述$<C>$, 运行$E$, 直到比$C$描述更长的$TM \ D$出现, 在输入$w$上模拟$D$.”
$E$枚举$D$, 所以$D$是极小$TM$. 但$D$描述比$C$长而二者等价, 矛盾.

Theorem. 递归定理的不动点形式: 对于任何一个可计算函数$t: \Sigma^*\rightarrow\Sigma^*$, 都存在一个图灵机$F$, 使得$t(<F>)$描述一个与$F$等价的图灵机.
Proof. $TM\ F=$“对输入$w$: 得到自己的描述$<F>$, 计算$t(<F>)$得到一个图灵机$G$的描述, 在输入上模拟$G$”

Theorem. Rice定理. 若$S$是非平凡的指标集, 则$S$不可判定
非平凡: $S\not=\emptyset,S\not=\Sigma^*$
指标集: $S$是$TM$编码的集合, $S=\{<M_1>,<M_2>,\dots\}$且$<M_1>\in S\land L(M_1)=L(M_2)\Rightarrow<M_2>\in S$

$f(n)=O(g(n))$: $f,g:N\rightarrow R^+$, 若$\exists c, n_0,\forall n \ge n_0, f(n)\le cg(n)$
e.g. $f(n)=5n^3+2n^2+22n+6$, 则$f(n)=O(n^3), f(n)=O(n^4)$

算法分析: 确定算法的(时间)复杂度
e.g. $A\{0^k1^k|k\ge0\}$
单带$DTM \ M_1: O(n^2)$ 
单带$DTM \ M_2: O(n\log n)$ 
(单带$DTM$在$O(n\log n)$时间内只能识别正则语言)
双带$DTM \ M_3: O(n)$
$M_1=$“对输入串$w$: 1. 扫描带, 若在1右边发现0, 就拒绝; 2.若0和1都在带上, 就重复下一步; 3. 扫描带, 删除一个0和一个1; 4. 若所有1被删除后还有0或所有0被删除后还有1, 就拒绝. 否则, 带上没有留下1和0, 接受”
时间: $2n+n\times n/2+n=O(n^2)$
$M_3=$“对输入层$w$: 1. 扫描带, 若在1右边发现0, 就拒绝; 2. 扫描带1上的0, 把每个0复制到带2上, 直到第一个1为止; 扫描带1上的1直到输入结尾, 每次从带1上读到1之前删除了所有的0, 就拒绝; 4. 若所有0都被删除, 就接受; 否则, 拒绝.” 
时间: $n+n+n+n=O(n)$

时间复杂性与模型有关, 多带与单带: 平方, 非确定型与确定型: 指数

Theorem. 设函数$t(n)\ge n$, 则每个$t(n)$时间多带$TM$都与某个$O(t^2(n))$时间单带$DTM$等价.
Sketch: 之前的模拟, 每步模拟需要$O(t(n))$时间, 总共模拟$t(n)$步

Theorem. 设函数$t(n)\ge n$, 则每个$t(n)$时间单带$NTM$都与某个$2^{O(t(n))}$时间单带$TM$等价.
Sketch: 每个分支模拟需要$O(t(n))$时间, 总共模拟$b^{t(n)}$个分支, $b$是所有节点的最大分支数

(Hamiltonian path问题搜索归约为判定)
(SAT归约为Clique问题)

多项式时间验证 iff 非确定型多项式时间判定

$NTIME(t(n))=\{L|某个O(t(n))时间NTM判定语言L\}$
Corollary. $NP=\bigcup_k NTIME(n^k)$

$P\subseteq NP\cap coNP$
Open problem. $NP=?coNP$

(重要的复杂性类和停机问题关系)

一个问题只有被证明是某个复杂性类的完全问题, 这个问题才算是被恰当的分类

空间复杂度
e.g. $SAT\in SPACE(O(n))$
$DTM \ M_1=$“对输入$<\phi>$, $\phi$是布尔公式: 1. 对于$\phi$的变量$x_1,x_2,\dots,x_m$的每种赋值; 2. 计算$\phi$在该赋值下的赋值； 3. 若$\phi$的值为1, 则接受, 否则拒绝.” 存储每个赋值需要$O(m)$空间, 计算$\phi$的值需要$O(n)$空间, $m\le n$, 总空间是$O(n)$.
满性问题$ALL_{NFA}=\{<M>|M是NFA且L(M)=\Sigma^*\}$
$ALL_{NFA}^c\in NSPACE(O(n))$.
Open problem. $ALL_{NFA}^c\in NP? coNP? ALL_{NFA}\in NP?$

Savitch's Theorem. $NSPACE(f(n))\subseteq SPACE(f^2(n))$, 要求$f(n)\ge n$
Corollary. $NSPACE=PSPACE$ 
(空间可重复利用, 时间则不能)

Mahaney's theorem
Mahaney's theorem is a theorem in computational complexity theory proven by Stephen Mahaney that states that if any sparse language is NP-complete, then P = NP. Also, if any sparse language is NP-complete with respect to Turing reductions, then the polynomial-time hierarchy collapses to $\displaystyle{ \Delta^P_2 }$.

Immerman–Szelepcsényi theorem
In computational complexity theory, the Immerman–Szelepcsényi theorem states that nondeterministic space complexity classes are closed under complementation. It was proven independently by Neil Immerman and Róbert Szelepcsényi in 1987, for which they shared the 1995 Gödel Prize. In its general form the theorem states that NSPACE(s(n)) = co-NSPACE(s(n)) for any function s(n) ≥ log n. The result is equivalently stated as NL = co-NL; although this is the special case when s(n) = log n, it implies the general theorem by a standard padding argument. The result solved the second LBA problem.

In other words, if a nondeterministic machine can solve a problem, another machine with the same resource bounds can solve its complement problem (with the yes and no answers reversed) in the same asymptotic amount of space. No similar result is known for the time complexity classes, and indeed it is conjectured that NP is not equal to co-NP.

The principle used to prove the theorem has become known as inductive counting. It has also been used to prove other theorems in computational complexity, including the closure of LOGCFL under complementation and the existence of error-free randomized logspace algorithms for USTCON.

In computational complexity, problems that are in the complexity class NP but are neither in the class P nor NP-complete are called NP-intermediate, and the class of such problems is called NPI. Ladner's theorem, shown in 1975 by Richard E. Ladner, is a result asserting that, if P ≠ NP, then NPI is not empty; that is, NP contains problems that are neither in P nor NP-complete. Since it is also true that if NPI problems exist, then P ≠ NP, it follows that P = NP if and only if NPI is empty.

BPP (bounded-error probabilistic polynomial time)

history. Akgorithm
9th century mathematician al-Khowarizmi, from the town of Kowarzimi. Today Khwarazm belongs partly to Khiva, Uzbekistan and partly to Turkmenistan.
His "Kitab al-jabr w'al muquabala"
阿拉伯十进制算术Algorism