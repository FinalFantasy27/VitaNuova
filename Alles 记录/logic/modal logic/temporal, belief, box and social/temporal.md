
rules for tense logic.Tautology,Substitution.MP.Temporal Necessitation (G and H)
axioms.G mp, Hmp, duality, $\vdash p\rightarrow HFp,\vdash p\rightarrow GPp$

(.jpg)

(Axiomatisation of U-S over linear frames. John Burgess and Xu Ming 1982,1988.jpg)

classes of linear frames.Density $F'T$, $F'$ for "arbitrarily soon"; Discreteness.$G'T\wedge H'T$; No beginning.$PT$; No end. $FT$ (Axioms for Tnse Logic:"Since" and "Until" NDJFL, 1982. John Burgess (1948-))

over the integers.add discreteness, no beginning, no end and two for completeness over Z.$Fp\rightarrow U(p,\lnot p)$, $Pp\rightarrow S(p,\lnot p)$, "Prior axioms"
, "S" for since

reals.linear dense no beginning no end continuous. just add the continuity axiom is not enough for S-U logic. Yuri Gurevich (incompleteness: axioms correspond to $F$ $\subseteq$ theorems $\subseteq$ valid on frame $F$)

(completeness over the reals.separability.jpg)

$\lnot Fi$ corresponds to $\forall x \lnot x<x$, $i$ holds at an instant only (standard translation $i^x = (x=i)$)
The standard translation of any formula having only instantaneous variables is first order, and adding them as axioms gives a complete logic.

$\downarrow_i\phi=\phi$, where $i$ is the time of evaluation
$t\models\downarrow_i\phi$ iff $t\models\phi[i/t]$
$[i/t]$ means that we take $i$ to be satisfied by $t$ and only by $t$

$@i\phi$ Shift from to time i, adn evaluate
$t\models @ i\phi$ iff $i\models\phi$ where $i$ is the (unique) time satisfying $i$

the logic of @
if $\vdash\phi$ then $\vdash @_i\phi$
$\vdash @_i(p\rightarrow q)\rightarrow(@_i p\rightarrow @_i q)$
$\vdash\lnot @_i p\rightarrow @_i\lnot p$
$\vdash @_i i$
$\vdash i\rightarrow(p\leftrightarrow @_i p)$
$\vdash \Diamond @_i p \rightarrow @_i p$ where $\Diamond$ is F,P or $@_i$

e.g. Which formulas below guarantee that p is true at i when themselves are true?
A. $p\land i$, B. $p\lor i$, C. $@_i p$, D. $@_j@_i p$ (to see the answer, go to the end of the page)

linear time logic (Pnueli, A. "The temporal logic of programs" (1977)).computation as a sequence of states.propesitions true at/of a state.Fp, Gp, U(p,q) (until), Xp (next time)
X is normal self-dual: $X(p\rightarrow q)\rightarrow (Xp\rightarrow Xq)$, $Xp\leftrightarrow\lnot X\lnot p$
$X(p\lor q)\leftrightarrow(Xp\lor Xq)$, $X(p\land q)\leftrightarrow(Xp\wedge Xq)$, $XU(p,q)\leftrightarrow U(Xp,Xq)$

iteration; $G(p\rightarrow Xp)\rightarrow (Xp\rightarrow Gp)$; $U(p,q)\leftrightarrow(Xp\lor X(q\wedge U(p,q)))$ (Gabbay, Pnueil, Shelah, and Stavi, "On the temporal analysis of fairness" POPL'80:Proceedings of the 7th ACM SIGPLAN-SIGACT symposium on Principles of programming languages. ACM (1980))

(branching time logic.jpg)

CTL*. $p\rightarrow LMp$, $LXp\rightarrow XLp$ plus more axioms and rules (Reynolds, M. "An axiomatisation of full computational tree logic" JSL 66(3), 2001:1011-57)

(logic of programs.jpg)

normality.Tautology.
Substitution. If $\vdash A$ and B results from replacing atomic propositions in A by other propositions, then $\vdash B$.
MP.
Necessitation.If $\vdash A$ then $\vdash [r]A$

program substitution. If $\vdash A$ and B results from replacing atomic programs in A by other programs, then $\vdash B$.

propositional dynamic logic. Normal axioms and rules for $\langle r\rangle$ and $[r]$ plus program subsitution and 
$\vdash\langle r;s\rangle\leftrightarrow\langle r\rangle\langle s\rangle p$
$\vdash \langle r+s\rangle p\leftrightarrow(\langle r\rangle p \lor \langle s\rangle p)$
$\vdash \langle p?\rangle q\leftrightarrow (p\wedge q)$ (test?)
$\vdash\langle r^*\rangle p\leftrightarrow(p\lor\langle r\rangle\langle r^*\rangle p)$
$\vdash (p\land [r^*](p\rightarrow[r]p)\rightarrow[r^*]p)$ (iterations)

e.g.2 In branching time logic, for which propositions $\phi$ below, is it possible that $s,t\models M\phi\wedge\lnot L\phi$
A.$\phi:=P(q\lor r)$
B.$\phi:=F(q\lor r)$
C.$\phi:=q\lor r$
D.$\phi:=X(q\lor r)$

















answer to e.g.: A, C, D
answer to e.g.2:BD

