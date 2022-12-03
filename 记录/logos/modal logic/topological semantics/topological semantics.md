Normal modal logics

KT=K+($p\rightarrow\diamonds p$), reflexive frames
K4=K+($\diamonds\diamonds p \rightarrow \diamonds p$). transitive frames
S4=K4+($p\rightarrow \diamonds p$), reflexive and transitive 
have the finite model property

A modal logic L is said to have the finite model property if there is a class C of frames that for every formula $\phi$, we have: $\vdash_L\phi $ iff $C\models\phi$

the interior of a set $A\subseteq X$ is the largest open set contained in $A$, denoted by $Int(A)$, $= \bigcup\{U\in\tau: U\subseteq A\}$
The closure of $A$ is the least closed set containing $A$ and is denoted by $Cl(A)$, $=\bigcap\{F:X\backslash F\in\tau, A\subseteq F\}.$
$Cl(A)=X\backslash Int(X\backslash A)$, $\diamonds p \leftrightarrow \lnot\Box\lnot p$

A topological model $\mathcal{M}=(X,\tau,\nu)$ is a tuple where $(X,\tau)$ a topological space and $\nu$ a valuation, i.e. a map $\nu:Prop\rightarrow\mathcal{P}(X)$ 
where $p$ is a propositional variable:
$\llbracket \bot \rrbracket=\emptyset, \llbracket p \rrbracket = \nu (p), \llbracket \phi \land \psi \rrbracket=\llbracket \phi \rrbracket \cap \llbracket \psi \rrbracket, \llbracket \phi \lor \psi \rrbracket=\llbracket \phi \rrbracket\cup\llbracket \psi \rrbracket,\llbracket \lnot\phi \rrbracket=X\backslash \llbracket \phi \rrbracket,\llbracket \Box\phi \rrbracket=Int\llbracket \phi \rrbracket$


Alexandroff spaces
Any reflexive and transitive Kripke frame (X, R) (pre-order) can be seen as a topological space $(X, \tau_R)$, where $\tau_R$ consists of all up-sets of $(X,R)$
A set $U\subseteq X$ is an up-set if $x\in U$ and $xRy$ imply $y\in U$.
A topological space $(X,\tau)$ is called an Alexandroff space if $\tau=\tau_R$ for some relexive and transitive order $R$ on $X$.
Theorem. The following are equivalent. 
· $(X, \tau)$ is Alexandroff
· $\tau$ is closed under arbitrary intersections. 
· Every point $x\in X$ has a least open neighbourhood (the intersection of all its open neighbourhoods).
Let (X,R) be a reflexive and transitive Kripke frame. For each $x\in X$, $R(x)=\{y\in X:xRy\}$ is the least open neighbourhood.
The real line is an example of a non-Alexandroff topological space (a point $x\in \mathbb{R}$ has no the least open neighbourhood).
Let $\mathfrak{M}=(X,R,V)$ be a reflexive and transitive K model. LEt $\llbracket \phi \rrbracket = \{x\in X:\mathfrak{M},w\models \phi\}$. Then $\llbracket \Box\phi \rrbracket=\{x\in X:R(x)\subseteq \llbracket \phi \rrbracket\}=Int_{\tau_R}(\llbracket \phi \rrbracket), \llbracket \diamonds\phi \rrbracket=\{x\in X:R(x)\cap\llbracket \phi \rrbracket\not=\emptyset\}=Cl_{\tau_R}(\llbracket \phi \rrbracket)$
$\mathcal{M},x\models\Box\phi$ iff $\exists U\in\tau$ s.t. $x\in U$ and $\forall y\in U \ \mathcal{M},y\models\phi$
$\mathcal{M},x\models\diamonds\phi$ iff $\forall U\in\tau$ s.t. $x\in U, \exists y\in U \ \mathcal{M},y\models\phi$

