
定义1：我们说 $\Delta^0_0$ 公式是指满足如下条件的最小的一阶算术公式集合：
1. 原子公式是$\Delta^0_0$;
2. 若 $\varphi,\psi$是$\Delta^0_0$的，则$\lnot\varphi,\varphi\to\psi$都是$\Delta^0_0$的；
3. 若$\varphi(\bar x,y)$是$\Delta^0_0$的，则$\forall y<z \varphi(\bar x,y)$和$\exists y<z\varphi(\bar x,y)$都是$\Delta^0_0$的，这里$x,y$都是自然数变量。

(...)

一个关系$R\subset \mathbb N^n$是$\Sigma^0_n$的，当且仅当，存在$\Sigma^0_n$的公式$\varphi(\bar x)$使得$R=\{\bar x: \varphi(\bar x)\}$，特别地，$\Sigma^0_1$关系$P$定义为存在递归关系$R$使得$P(\bar x)\leftrightarrow \exists y R(\bar x,y)$;一个函数$f:\mathbb N^n\to \mathbb N$称为是$\Sigma^0_n$，当且仅当，其图像作为关系是$\Sigma^0_n$的.

一个关系$R\subset \mathbb N^n$是递归可枚举的（r.e.）当且仅当存在$e$使得$R=\{\bar x:\Phi_e(\bar x)\downarrow\}$，即其为一个图灵机的定义域.

定理：一个关系$R\subset \mathbb N^n$是$\Sigma^0_1$的的当且仅当它是递归可枚举的。

Proof. 考察Kleene的原始递归谓词$T(e,\bar x,z)$, 这个原始递归谓词实际上是$\Delta^0_0$的, ，其意思大概就是在说：“$e$是一个图灵机程序，并且$z$是这个图灵机对输入$\bar x$时的计算过程的编码，且计算过程停机”。具体的用一个 $\Delta^0_0$公式表示这个关系只涉及到特定的编码技巧，虽然复杂但没有本质上的困难.

则对任何图灵机 $\Phi_e$, 都有

$\forall \bar x[\Phi_e(\bar x)\downarrow\leftrightarrow\exists zT(e,\bar x,z)]$

从而我们就能将$R=\{\bar x:\Phi_e(\bar x)\downarrow\}$写成$\{\bar x:\exists z T(e,\bar x,z)\}$.

<br/>

If $T \supseteq PA$ is a recursive theory, then the deductive closure of $T$ is not recursive. 

If $T$ is a recursive theory (axioms) such that the deductive closure is complete then $\{ [\phi] : T \vdash \phi \}$ is recursive.

If $T \supseteq {\Gamma}_{N}$ is a recursive theory, then the deductive closure of $T$ is incomplete.

<br/>

A Relation $\mathfrak M$ consisting of (ordered) $n$- tuples of integers (non-negative integers or positive integers, respectively) for which it is possible to write down a Diophantine equation (a polynomial with integer coefficients. If we want to avoid negative coefficients, we can, by bringing all the negative stuff to one side, use $P^+=P^−$.)

$P(a_1\ldots a_n,x_1\ldots x_l)=0$

which depends on $n$ parameters $a_1\ldots a_n$, the permissible values of which are integers (non-negative integers or positive integers, respectively), and which is solvable for $x_1\ldots x_l$ if and only if $\langle a_1\ldots a_n\rangle\in \mathfrak M$. In this context it is irrelevant whether the solution is understood to be in integers, non-negative integers or positive integers, since the above equation is solvable in non-negative integers if and if only if the equation

$P(a_1\ldots a_n,y_1−z_1\ldots y_l−z_l)=0$ 

is solvable in positive integers (if and only if the equation

$P(a_1\ldots a_n,p^2_1+q^2_1+r^2_1+s^2_1\ldots p^2_l+q^2_l+r^2_l+s^2_l)=0$),

since according to Lagrange's theorem any non-negative integer can be represented as a sum of four squares.
https://encyclopediaofmath.org/wiki/Diophantine_set

马季亚谢维奇定理Matiyasevich's theorem（解决了希尔伯特第十问题的定理）.一个关系是递归可枚举的当且仅当它是丢番图的.
In particular, Every computably enumerable set is Diophantine, and the converse.. A set $S$ is Diophantine precisely if there is some polynomial with integer coefficients $f(n, x_1, \ldots, x_k)$ such that an integer $n$ is in $S$ if and only if there exist some integers $x_1, \ldots, x_k$ such that $f(n, x_1, \ldots, x_k) = 0$.

E.g., for $\operatorname{prime}(x):=x\neq1\land\forall z(\exists k(x=k*z) \rightarrow (z=1\lor z=x))$, we have explicit existential formulas defining the primes. For example, see pg. 331 of the survey paper MR0432534 (55 #5522) Davis, Martin; Matijasevič, Yuri; Robinson, Julia. Hilbert's tenth problem: Diophantine equations: positive aspects of a negative solution. In Mathematical developments arising from Hilbert problems (Proc. Sympos. Pure Math., Vol. XXVIII, Northern Illinois Univ., De Kalb, Ill., 1974), pp. 323–378. Amer. Math. Soc., Providence, R. I., 1976.

By the MRDP theorem, the $\forall$-theory of $(\mathbb{N};+,\cdot,0,1)$  is co-r.e.-complete. (Note that it is clearly co-r.e. in the first place, since a counterexample to a $\forall$-sentence can be verified.)
The proof of Godel's theorem can be unwound to show that the $\Pi^0_1$ fragment of the theory is not recursively axiomatizable. However, $\Pi^0_1$ is a bit broader than $\forall$ since it allows **bounded quantifiers**, and to bring things down to the level of $\forall$-sentences as such we need to do a surprising amount of work.

<br/>

Post's theorem
https://en.wikipedia.org/wiki/Post%27s_theorem
, which says in particular that there are $m$-complete sets at each level $\Pi^0_n$ and $\Sigma^0_n$ of the arithmetical hierarchy, and so in particular the arithmetical hierarchy does not collapse.
A particular example of a $\Pi^0_n$ complete set is the complement of the halting problem. This set is cannot be definable by an existential formula because then the halting problem would be both r.e. and co-r.e., and so it would be computable. 

