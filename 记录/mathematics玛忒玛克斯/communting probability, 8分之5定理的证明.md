proof of 5/8 theorem

For a finite group $G$, $P(G)=\dfrac{|(g,h)\in G\times G: gh=hg|}{|G|^2}$ is called the commuting probability of $G$.

$P(G)=1$ iff $G$ is abelian. $P(G)$ measures how far $G$ is from being abelian.

For $g\in G$, the Centralizer subgroup $C_G(g)=\{h\in G:gh=hg\}$

Summing over $g \in G$, $P(G)=\dfrac{1}{|G|^2}\underset{g\in G}\sum |C_G(g)|$.

For each $g\in G$, by Lagranger's theorem: $|G|=|H|[G:H]$, where $[G:H]$ is the index of $H$, i.e. the number of left/right cosets of $|H|$ in $G$, and $H$ is subgroup of $G$, $[G:C_G(g)]$ is an integer. Let us consider the case that $G$ is not abelian. $[G:C_G(g)]=\dfrac{|G|}{|C_G(g)|}$ could not be $1$, for if so $G$ will be abelian. It could be $2$. Thus either $C_G(g) = G$ or $|C_G(g)|\le \frac{1}{2}|G|$.

The center of $G$ is denoted and defined by $Z(G) = \{g\in G:C_G(g)=G\}=\{g\in G:gh=hg \ for \ all \ h \in G\}$. It's a normal subgroup of $G$.

$$
\begin{aligned}
    P(G) &= \frac{1}{|G|^2}(\underset{g\in Z(G)}\sum |C_G(g)|+\underset{g\in G\backslash Z(G)}\sum |C_G(g)|)\\
    &\le \frac{1}{|G|^2}(\underset{g\in Z(G)}\sum |G|+\underset{g\in G\backslash Z(G)}\sum \frac{1}{2}|G|)\\
    &=\frac{1}{|G|^2}(|Z(G)|\cdot|G|+(|G|-|Z(G)|)\cdot\frac{1}{2}|G|)\\
    &=\frac{1}{|G|}(|Z(G)|+\frac{1}{2}(|G|-|Z(G)|))\\
    &=\frac{1}{|G|}\frac{1}{2}(|G|+|Z(G)|)\\
    &=\frac{1}{2}+\frac{|Z(G)|}{2|G|}
\end{aligned}
$$

By Lagrange's theorem, $P(G)\le \dfrac{1}{2}(1+\dfrac{1}{[G:Z(G)]})$

By the lemma: if $G/Z(G)$ is cyclic then $G$ is abelian, $G/Z(G)$ is not cyclic.

$|G|/|Z(G)|$ could not be 1, since then $|Z|=|G|$ and $G$ will be abelian. It could not be 2 either, otherwise $G/Z(G)$ has to be $\mathbb{Z}/2$ and this is a cyclic group. For the same reason as above, $|G|/|Z(G)|$ can't be 3. The only group with 3 elements is $\mathbb{Z}/3$. If $|G|/|Z(G)|=4$, then $Z(G)$ is either $\mathbb{Z}/4$ or $\mathbb{Z}/2\times \mathbb{Z}/2$. This generates no contradiction.

Thus $[G:Z(G)]=|G|/|Z(G)|\ge4$. This gives us $P(G)\le 5/8$.

Reference

Thomas Browning, Commuting Probability, https://math.berkeley.edu/~tb65536/Commuting_Probability.pdf

John Baez, The 5/8 Theorem, Azimuth, https://johncarlosbaez.wordpress.com/2018/09/16/the-5-8-theorem/