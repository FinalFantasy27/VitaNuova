
General proof-theoretic facts about intuitionistic logic: 
(All three are easily provable by induction on cut-free derivations.)

1. Existence-disjunction property 
(Theorem 4.2.4. of A. S. Troelstra, H. Schwichtenberg: Basic Proof Theory, 2nd edition, we could use much weaker results)
: if $\Gamma$  does not contain any existential quantifiers, and $\Gamma \vdash \exists x. M(x)$, then we can find terms $t_1,t_2,\dots t_n$ such that $\Gamma \vdash M(t_1) \vee M(t_2) \vee \dots \vee M(t_n)$.

2. Disjunction property: if $\Gamma$ does not contain any disjunction connectives or existential quantiifers, and $\Gamma \vdash M \vee N$, then we can find a proof of either $\Gamma \vdash M$ or $\Gamma \vdash N$.
3. Universal independence: If $\Gamma$  contains no universal quantifier, and $\Gamma \vdash \forall x. M(x)$, then $\Gamma \vdash N$ for any formula $N$.

Suppose that we could find a formula  $Q$  in the $\{\rightarrow, \neg, \vee, \wedge, \forall \}$ fragment such that $Q \vdash \exists x. P(x)$ and $\exists x. P(x) \vdash Q$ both hold.

Since $Q \vdash \exists x. P(x)$, the existence-disjunction property allows us to find $t_1,t_2,\dots t_n$ such that $Q \vdash P(t_1) \vee P(t_2) \vee \dots \vee P(t_n)$. Choose a variable $y$  that does not occur in any of the terms $t_1,t_2,\dots t_n$. We have $P(y) \vdash \exists x. P(x)$. From $\exists x. P(x) \vdash Q$ and the cut rul we get a proof that $P(y) \vdash Q$. From  $Q \vdash P(t_1) \vee P(t_2) \vee \dots \vee P(t_n)$ and the cut rule we get a proof that $P(y) \vdash P(t_1) \vee P(t_2) \vee \dots \vee P(t_n)$. Using the disjunction property we could then have $P(y) \vdash P(t_m)$ for some $m$, which is impossible since $y$ does not occur in any of the terms $t_1,t_2,\dots t_n$.

For the case of independence of $\forall$, universal independence gives that $Q\vdash\lnot\forall x.P(x)$.

<br/>

In classical first-order logic, the nothing quantifier $Иx.P(x)$, which means "there are no x such that", can define both the universal and existential quantifiers. 

Corl. The "nothing" quantifier cannot be used to define either the universal or the existential quantifiers in intuitionistic logic.

Prof. Both possible classical formalizations of $Иx.P(x)$, as either $\forall x. \neg P(x)$ or $\lnot \exists x.P(x)$, are equivalent in intuitionistic logic.

For the case of independence of $\exists$, we can interpret the quantifier $Иx.M$ as an abbreviation for $\forall x.\lnot M$.  A formula $Q$ in the $\{\rightarrow, \neg, \vee, \wedge, И \}$ belongs to the $\{\rightarrow, \neg, \vee, \wedge, \forall \}$ fragment of intuitionistic logic.

Z. A. K., https://math.stackexchange.com/questions/3924936/in-intuitionistic-first-order-logic-can-the-nothing-quantifier-define-either