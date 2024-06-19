
Peirce's Law $((P\to Q)\to P)\to P$  is not intuitionistically valid. 

No formula in the $\{\land,\lor\}$ fragment are theorems Classical and intuitionistic are also equivalent in the non-vacuous sense that their entailment relations are the same for fragment. 

The only change to the classical sequent calculus LK that is necessary to get intuitionistic logic instead is to the $\to R$ rule. However a cut-free proof in the sequent calculus never uses rules for connectives that don't appear in the conclusion, so the valid (cut-free) proofs in the classical LK for conclusions in the $\{\land,\lor\}$ fragment are the same as the valid proofs in the intuitionistic variant.

<br/>

Heyting algebra and topology

$A \lor B = A \cup B, A \to B = \mathsf{int}(A^c\cup B),\bot = \emptyset$.

The standard topology (call it $\tau^R$) on $\mathbb{R}$ with $\mathbb{R}$ as the sole distinguished truth value is a sound and complete semantics for IPC.
https://en.wikipedia.org/wiki/Intuitionistic_logic#Heyting_algebra_semantics

Heyting algebra whose elements are the open subsets of the unit interval $[0, 1] \subseteq \Bbb{R}$ under the subspace topology (${\displaystyle \tau _{[0,1]}=\lbrace [0,1]\cap U\mid U\in \tau^R \rbrace}$) is a counterexample to $\lnot \lnot (A \lor B) \to (\lnot \lnot A \lor \lnot \lnot B)$. 
If $A = [0, 1/2)$ and $B = (1/2, 1], \lnot \lnot (A \lor B) = [0, 1]$ while $\lnot \lnot A \lor \lnot \lnot B = [0, 1] \mathop{\backslash} \{1/2\}$ and $\lnot \lnot (A \lor B) \to (\lnot \lnot A \lor \lnot \lnot B)$.

A Kripke counterexample is one with the underlying partially ordered set consists of $a,b,c$ with $c<a$ and $c<b$ while $a$ and $b$ are incomparable. Let $A$ be true only at $a$ and let $B$ be true only at $b$. 
Then $\lnot\lnot A$ and $\lnot\lnot B$ are also true only at $a$ and $b$, respectively, so their disjunction is true at $a$ and $b$ but not at $c$. On the other hand, $\lnot\lnot(A\lor B)$ is true everywhere, including $c$.

<br/>

The classical sequent calculus $LK$ has rules such as

$\displaystyle \frac{\Gamma, \varphi\vdash \Pi \qquad \Sigma, \psi\vdash \Pi}
{\Gamma, \Sigma, \varphi\lor\psi \vdash \Pi}{\lor}L \qquad $

$\displaystyle\frac{\Gamma\vdash\varphi,\Delta}{\Gamma\vdash\varphi\lor\psi,\Delta}{\lor}R_1 \qquad$

$\displaystyle\frac{\Gamma \vdash \psi, \Delta}{\Gamma\vdash\varphi\lor\psi,\Delta}{\lor}R_2$

$\displaystyle \frac{\Gamma\vdash\varphi,\Delta \qquad \Sigma,\psi\vdash\Pi}
{\Gamma, \Sigma, \varphi\to\psi \vdash \Delta,\Pi}{\to}L \qquad
\frac{\Gamma,\varphi\vdash \psi,\Delta}{\Gamma\vdash\varphi\to\psi,\Delta}{\to}R$

and so forth, where $\Gamma,\Sigma,\Pi$ and $\Delta$ are finite multisets of formulae.

If we restrict the shape of all sequents to have exactly one formula to the right of the $\vdash$, we get a proof system $LJ$ for intuitionistic propositional logic. This corresponds to requiring that every $\Delta$ is empty and every $\Pi$ is a singleton in the formulations of the rules above.

On p. 48 of Sara Negri and Jan van Plato's admirable book Structural Proof Theory (CUP, 2001), they write

It is not the [general] feature of having a multiset as a succedent that leads to classical logic, but the unrestricted $R\!\supset$ rule

On p. 108, they introduce an intuitionistic multisuccedent calculus they call $G3im$, which is exactly like a classical multisuccedent calculus except for the $\supset$ rules (though both left and right rules get tinkered with). 
the calculus is due to the 1988 book by Dragalin Mathematical Intuitionism. 


$\displaystyle\frac{\Gamma,\varphi\vdash\psi}{\Gamma\vdash\varphi\to\psi}{\to}R'$

Each of the classical rules except $\to R$ (but including $\to L$) is actually derivable in the single-succedent calculus (with Cut) if $\Gamma\vdash\varphi,\psi,\ldots,\sigma$  is taken to abbreviate $\Gamma\vdash \varphi\lor\psi\lor\cdots\lor\sigma$. This verification turns out to be completely routine.
What prevents the unrestricted $\to R$ from being derivable is that deriving it in the same way as the others would require reasoning from $\varphi\to(\psi\lor \sigma)$ to $(\varphi\to\psi)\lor\sigma$. 
In the particular case $\psi=\bot$, what this says is that we can't reason from from $\varphi\to(\bot\lor \sigma)$ (which is  obviously equivalent to $\varphi\to\sigma$) to $\neg\varphi\lor \sigma$.

