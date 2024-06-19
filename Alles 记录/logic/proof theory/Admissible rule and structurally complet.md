Admissible rule and structurally completenes

A rule $R= \langle S_0, \ldots, S_n, S \rangle$ is said to be a derivable in a proof system $\mathcal T$, if for each instance $S_0,\dots,S_n,S$ there is a deduction of $S$ from the $S_i$ be means of the primitive rules of $\mathcal T$.

For example, if we can consider the natural deduction proof system, we can derive from the primitive rules the derived rule :

$A \land B \to C \vdash A \to (B \to C)$

A rule $R$ is said to be admissible for $\mathcal T$,  if for all instances $S_0,\dots,S_n,S$ it is the case that :

if for all $i≤n$,  $\vdash S_i$, then $\vdash S$.

Jan von Plato, Elements of Logical Reasoning (2013), page 47 and 58:

A derivable rule is admissible, but not necessarily the other way around.

Consider next the law of double negation: $¬¬A \to A$. If it is derivable [in intuitionsitic logic], the instance with $A ∨ ¬A$in place of $A$, i.e., $¬¬(A∨¬A)→A∨¬A$, is in particular derivable. [I.e.] if $¬¬A→A$ is derivable in intuitionistic logic, also $A∨¬A$ is. Thus, that step constitutes an admissible rule.

It is a logical fallacy to conclude from such admissibility that the implication $(¬¬A→A)→(A∨¬A)$ is derivable.

We say that a system is structurally complete when the classes of admissible and derivable rules coincide; these systems are in some sense "self-containded" : their deductive apparatus generates all inference rules consistent with them.

In this sense, classical propositional calculus is structurally complete.

See :

Vladimir Rybakov, Admissibility of logical inference rules (1997).

See http://plato.stanford.edu/entries/logic-intuitionistic/, Ch.4.2 Admissible rules of intuitionistic logic and arithmetic, for further examples :

Harrop's rule [1960] :
if $⊢(¬A→(B∨C))$, then $⊢(¬A→B)∨(¬A→C)$
is admissible but not derivable, because $(¬A→(B∨C))→(¬A→B)∨(¬A→C)$ is not intuitionistically provable.

Mints' rule :
if $⊢((A→B)→A∨C)$, then $⊢((A→B)→A)∨((A→B)→C)$.