
**Def1** Continious at $x_0$ :$\underset{x \rightarrow x_0}{lim}f(x) = f(x_0)$, i.e.
$\forall \epsilon >0\exists\delta>0, |x - x_0| < \delta, |f(x) - f(x_0)|<\epsilon$, i.e.
$\forall \epsilon >0\exists\delta>0, x \in N(x_0, \delta), f(x) \in N(f(x_0), \epsilon)$, where $N$ neighbourhood

**Def2** Topology Space $(X, \tau), \tau \subseteq \Rho(X)$: $X, \emptyset \in \tau$, closed under finite intersection, closed under arbitrary union. We call $A \in \tau$ a Open set, if $A^c \in \tau$, then we call it a Closed Set

**Def2.1** finer, coarser (or strictly), comparable

**Def2.2** basis : a family $\mathcal{B}$ of subsets of a set $X$ s.t.
(1) for all $ x \in X$, exists $B \in \mathcal{B}$ s.t. $x \in B$
(2) if $x \in B_1 \cap B_2$, then exists an element $B_3 \in \mathcal{B}, B_3 \subset B_1 \cap B_2$

**Exp2.3** $X$ the whole 2-dimensional plane, $B_n$ the area of closed whose radius $n$

**Def3** separation axioms $T_1$ : $\forall x,y \exists N_x,N_y,x \notin N_y, y \notin N_x$, we call the topology spaces satisfies this axiom $T_1$ space

**Prop4** $X$ a $T_1$ space $\Longleftrightarrow$ any finite subset of $X$ is closed set  

**Def5** $T_2$ : $\forall x,y \in X \exists N_x, N_y, N_x \cap N_y = \emptyset$, we call a $T_2$ space Hausdorff space

**Prop5** $T_2$ $\Longrightarrow$ $T_1$

**Prop6** if the limit of any sequence $\{x_n\}$ of Hausdorff space exists, then  unique (Hint: proof by contradiction)

**Def7** limit of sequence $\{x_n\}$ : if any  neighbourhood of $x_0$  doesn't include at most finite terms of $\{x_n\}$, then we call it a limit
