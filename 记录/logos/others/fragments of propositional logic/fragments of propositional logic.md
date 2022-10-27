fragments of propositional logic

$\{\land,\lor,\rightarrow,\leftrightarrow\}$ is not functionally complete, because any one of them preserves truth.

According to Dunn and Hardegree [Cha 9.11], the interesting fragments of CPL are the implication fragment and the positive fragment.

<br/>

It's a corollary of the lemma that simple disjunctive formula could not be falsum that sentence that only involves propositional variables and disjunction could not be falsum. And it's a corollary of the lemma that simple conjunctive formula could not be tautology that sentence that only involves propositional variables and conjunction could not be tautology. It can be proved by induction sentence that only involves propositional variables and disjunction could not be tautology and sentence that only involves propositional variables and conjunction could not be falsum.

Therefore the set of the tautologies that only involve propositional variables, disjunction and conjunction is the empty set. Therefore the weak completeness for any system follows.

And the strong completeness for a system with the introduction and elimination rule can be shown (via a canonical model construction $M\vDash\psi$ if and only if $\Gamma\vdash\psi$).

<br/>

it can be proved by induction on the implicative formula $\phi$, $\phi$ is satisfiable. 

The valid formulas constitute a coNP-hard set. Because for all formulas F in the definitionally complete set $\{\lnot, \to\}$ of connectives and for all atomic formulas $\alpha$ not occurring in $F$, $F$ is valid if and only if the implicative formula $(\phi \to \alpha) → \alpha$ is valid, $\phi$ being the implicative formula obtained from $F$ after having inductively replaced each subformula of the form $\lnot H$ by $H \to α$.

<br/>

The axioms for the implication fragment of CPL are

1. $A\to(B\to A)$
2. $((A\to B)\to(A\to (B\to C)))\to (A\to C)$
3. $(A\to C)\to(((A\to B)\to C)\to C)$

and the rule is mp.

The system satisfies the deduction theorem.

Henkin proves that If $A$ is a tautology, then $\vdash A$.

<br/>

If in a fragment of the propositional calculus material implication can be defined in terms of the primitive functions, then any weakly complete formalization of the fragmentary system which has for rules of procedure the substitution rule and modus ponens is also strongly complete. (Tarski (stateed without proof); Alan Rose)

<br/>

The introduction and elimination rules for material implication in natural
deduction are not complete with respect to the implicational fragment of classical logic. A natural way to complete the system is through the addition of a new natural deduction rule corresponding to Peirce’s formula $(((A \to B) \to A) \to A)$.

<br/>

$\Gamma\vdash\phi$ if and only if every proposition letter appearing in $\phi$ appears in $\Gamma$ if and only if $\Gamma\vDash\phi$ holds for the conjunction-only fragment of propositional logic. 

<br/>

The equivalential fragement system of CPL $G_1$ has two axioms:

$((p\equiv r)\equiv(q\equiv p))\equiv(r\equiv q)$

$(p\equiv(q\equiv r))\equiv((p\equiv q)\equiv r)$

and two rules:

From $\psi\equiv\chi$ and $\psi$ infer $\chi$

From $\psi\equiv\chi$ infer $\phi(x)$ which is a result of replacing some of occurrences of $\psi$ in $\phi$ by $\chi$

Le´sniewski-Mihailescu theorem: for any expression $\phi$ in the language of this system (that is, correctly constructed from propositional variables and the equivalence symbol) this expression is a theorem of S iff any propositional variable in $\phi$ occurs an even number of times. (Urbaniak)

<br/>

Dunn and Hardegree surveyed an independent specification of each of these in algebraic terms, and an independent specification in axiomatic terms, of the implicative fragment of Boolean logic consists of all the Boolean valid formulas (arguments) that exclusively involve implication, and that the positive fragment of Boolean logic consists of all the Boolean valid formulas (arguments) that do not involve negation or falsity. 

Reference

J. MICHAEL DUNN and GARY M. HARDEGREE, 2001, Algebraic Methods in Philosophical Logic, CLARENDON PRESS OXFORD

Leon Henkin, 1949, Fragments of the Propositional Calculus, The Journal of Symbolic Logic, Vol. 14, No. 1 (Mar.), pp. 42-48

Alan Rose, 1951, Strong Completeness of Fragments of the Propositional Calculus, The Journal of Symbolic Logic, Vol. 16, No. 3 (Sep.), p. 204

Urbaniak, R. 2008. Leśniewski’s Systems of Logic and Mereology; History and Re-evaluation. (Unpublished doctoral thesis). University of Calgary, Calgary, AB. doi:10.11575/PRISM/15194, http://hdl.handle.net/1880/46697, octoral thesis, p.93


