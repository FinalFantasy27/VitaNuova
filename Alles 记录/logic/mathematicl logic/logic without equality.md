

logic with equality $\mathsf{FOL_{w/o=}}$

<br/>

the equality-free theory of antisymmetric relations

An antisymmetric relation is defined as a binary relation $R$ on a set $S$ such that $(xRy\land yRx)\to x=y$, for all $x,y$ in $S$. Certainly, they can't be defined in first-order logic without equality.

$zRxRyRx\rightarrow zRy, \quad xRyRxRz\rightarrow yRz.$

($\alpha R\beta R\gamma$ is the standard abbreviation for $\alpha R\beta\wedge\beta R\gamma$) gives the full $\mathsf{FOL_{w/o=}}$-theory (the equality-free theory) of asymmetric binary relations.

The point is that if $R$ is a relation on a set $X$ which satisfies the sentences above, then the relation 

$x\sim y\quad\iff\quad xRyRx$ 

is a congruence on the structure $(X;R)$, and the resulting quotient is an asymmetric binary relation.

An example of a binary relation that satisfies the equality-free theory of antisymmetric relations, but is not itself an antisymmetric relation: the complete binary relation $R=X^2$ on any set $X$ with at least two elements.

<br/>

There turn out to be a number of differences between $\mathsf{FOL}$ and $\mathsf{FOL_{w/o=}}$, including as regards their elementary substructurehood notions. For example, if $X\subsetneq Y$ are finite sets (thought of as structures in the empty language) then of course $X\not\preccurlyeq Y$ but we can show $X\preccurlyeq_{\mathsf{FOL_{w/o=}}}Y$. [This answer of Noah Schweber
](https://math.stackexchange.com/a/4133440/28111) may be useful here, the connection being that if $\mathcal{A}$ is a substructure of $\mathcal{B}$ and $\mathcal{A}$ is quasi-isomorphic (using the terminology of that answer) to $\mathcal{B}$ then $\mathcal{A}\preccurlyeq_{\mathsf{FOL_{w/o=}}}\mathcal{B}$.