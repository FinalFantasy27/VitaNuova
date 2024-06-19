
$Aut(\mathbb Z_6)\cong \mathbb Z_2$

An automorphism of $G$ should map a generator of $G$ to a generator of $G$. It's enough to know how many generators does $G$ have.

If $G=\{e,g,g^2,...,g^{m−1}\}$ then a $g^i$ generates $G$ if and only if $gcd(i,m)=1$.

Let $G=⟨g⟩$ and $f∈Aut(G)$. Then $f(g)=g^i$ for some $i$. If $f$ is an isomorphism $⟨g^i⟩=G$ and this happens only if $gcd(i,m)=1$.
On the other hand every homomorphism $f:G→G$ with $f(g)=g^i$ is an isomorphism when $gcd(i,m)=1$, so $|Aut(G)|=ϕ(m)$, where $ϕ(m)$ is Euler's function.

$\phi(6)=2$, and the only group with $2$ elements is $\mathbb Z_2$.