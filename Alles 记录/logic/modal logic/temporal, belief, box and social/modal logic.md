
$C_{K4}$ is in Trans
$R_{C_{K4}}st$ iff for every phi, if $\Box \phi \in s$ then $\phi \in t$
Proof. Suppose $R_{C_{K4}}st$ and $R_{C_{K4}}tu$, where $s,t,u\in S_{C_{K4}}$
$s,t$ and $u$ are $K4$ maximal consistent sets
Suppose $\Box\phi\in s$.
$K4\vdash\Box\phi\rightarrow\Box\Box\phi$ (substitution of 4 axiom)
So $C_{K4}\models\Box\phi\rightarrow\Box\Box\phi$
So $\Box\phi\rightarrow\Box\Box\phi\in s$ (truth)
So $\Box\Box\phi \in s$ (s maximal consistent)
So $\Box\phi\in t$ (definition of $R_{C_{K4}}st$)
So $\phi\in u$ (definition of $R_{C_{K4}}tu$)
Thus for every $\phi$, $\Box\phi \in s$ then $\phi\in u$.


$\phi$ is canonical iff the canonical frame for $K+\phi$ is in $Frame(\phi)$,
if $\phi$ is canonical then $Fram(\phi) \models \psi$ iff $K+\phi \vdash \psi$

If $\phi$ is fram-equivalent to a formula of first-order predicate logic then $\phi$ is canonical and so $K+\phi$ is complete

incompleteness.example. $vB=\Box\Diamond T \rightarrow \Box(\Box(\Box p\rightarrow p)->p)$
$KvB$ is not complete, $Frame(vB) \models \Box\Diamond T \rightarrow \Box \bot$ but $KvB \not\vdash$
Benthem, J. F. A. K., "Syntactic aspects of modal incompleteness", Theoria (1979), pp. 63