
Let a group $G$ act on a set $X$. The action is said to be transitive if for any two $x$, $y \in X$ there is a $g\in G$ such that $g \cdot x=y.$ This is equivalent to saying there is an $x\in X$ such that $orb(x)=X$, i.e. there is exactly one orbit. 

The First Isomorphism Theorem: If there is a a homomorphism $\varphi$ from group $A$ to $B$ such that $\ker\varphi=B$, then $A/\ker\varphi\cong B$.

<br/>

A ringoid is a triple $(S,∗,\circ)$ where $\circ$ distributes over $∗$.
semiring is a ringoid $(S,∗,\circ)$ in which both $(S,∗)$ and $(S,\circ)$ form semigroups.
Ring is a semiring in which $(R,∗)$ forms an abelian group.
Ring with Unity[, i.e., $1$]
It became increasingly common to see books including the existence of 1 in the definition of "ring".
https://en.wikipedia.org/wiki/Ring_(mathematics)#History

In ring, $0x=x0=0$

rngs ⊃ rings ⊃ commutative rings ⊃ integral domains ⊃ integrally closed domains ⊃ GCD domains ⊃ unique factorization domains ⊃ principal ideal domains ⊃ Euclidean domains ⊃ fields ⊃ algebraically closed fields

Unique factorization domain (UFD) is defined to be an integral domain $R$ in which every non-zero element $x$ can be written as a product of a unit $u$ and zero or more irreducible elements $p_i$ of $R$:
$x = u p_1 p_2 ⋅⋅⋅ p_n$ with $n ≥ 0$
and this representation is unique in the following sense: If $q_1, ..., q_m$ are irreducible elements of $R$ and $w$ is a unit such that
$x = w q_1 q_2 ⋅⋅⋅ q_m$ with $m ≥ 0$,
then $m = n$, and there exists a bijective map $φ \in S_n$ such that $p_i$ is associated to $q_{φ(i)}$ for $i ∈ \{1, ..., n\}$. (A unit $u$ of a ring $R$ is a unit is an invertible element for the multiplication, that is, there exists $v$ in R such that $𝑣𝑢=𝑢𝑣=1$. Suppose that $R$ is commutative. Elements $r$ and $s$ of $R$ are called associate if there exists a unit $u$ in $R$ such that $r = us$. Alternatively, two elements of $R$ are associate if they are in the same $R^×$ (multiplication)-orbit. Associatedness is an equivalence relation.)

Rational root theorem for UFD: 
Let $D$ be a UFD. Let $K$ be its field of fractions. Let $p/q\in K$, with $p,q\in D$ coprime, be a solution of a polynomial equation over $D$:
$a_n z^n + a_{n-1}z^{n-1} + \cdots + a_1 z + a_0 = 0$
Then $q$ must divide an and $p$ must divide $a_0$.
(The proof is the same as for $D=\mathbb Z$. Elementary proof)


(left) Noetherian ring: every increasing sequence ${\displaystyle I_{1}\subseteq I_{2}\subseteq I_{3}\subseteq \cdots }$ of (left) ideals has a largest element; that is, there exists an n such that: ${\displaystyle I_{n}=I_{n+1}=\cdots .}$
Equivalently, every (left) ideal I in R is finitely generated. 

The property of all ideals being singly generated[Principal ideal domain] is often not preserved under common ring-theoretic constructions (e.g. $\mathbb Z$ is a PID but $\mathbb Z[x]$ is not), but the property of all ideals being finitely generated does remain valid under many constructions of new rings from old rings. For example every quadratic ring $\mathbb Z[\sqrt d]$[$= \{ a + b\sqrt{d} \vert a,b\in\mathbb{Z}\}$] is Noetherian, even though many of these rings are not PIDs.

Every field is a Noetherian ring.

Hilbert's basis theorem: every polynomial ring over a Noetherian ring is also Noetherian.