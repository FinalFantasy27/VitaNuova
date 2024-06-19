$Lp\rightarrow LLp$ (must)
$Mp\rightarrow LMp$ (might)

(might and must.png)

$\llbracket Lp\rightarrow LLp\rrbracket=S$ iff $\llbracket Lp\rrbracket\subseteq\llbracket LLp\rrbracket$
$\llbracket Lp\rrbracket= S, \ if \ \llbracket p\rrbracket =S, \emptyset, otherwise$
$\llbracket LLp\rrbracket= S, \ if \ \llbracket Lp\rrbracket =S, \emptyset, otherwise$

hard update.$\phi!$ 
e.g. Monday|Tuesday|Wednesday|Thursday|Friday
$[first \ three \ days!]L(it's \ not \ on \ Friday)$
if p then, after updating with p, q

$\langle\phi!\rangle$.actual update
$\langle\phi!\rangle\psi$ iff $\phi$ and after updating with $\phi$, $\psi$
e.g.$\langle first \ three \ days!\rangle L(it's \ not \ on \ Friday)=\{Monday,Tuesday,Wednesday\}$
$\langle Friday!\rangle L(it's \ not \ on \ Friday)=\empty$

modality collapse, e.g. $LM\lnot LLM\lnot MLML\lnot MMLp\leftrightarrow \lnot Lp$
 
precondition duality.$\langle p!\rangle q\leftrightarrow(p\land [p!]q)$
$[p!]q\leftrightarrow(p\rightarrow\langle p!\rangle q)$

regularity.$L(p\leftrightarrow q)\rightarrow([p!]r\leftrightarrow[q!]r)$, $L(p\leftrightarrow q)\rightarrow([r!]p\leftrightarrow[r!]q)$

e.g.$\llbracket p\wedge\lnot Lp\rrbracket^S=\llbracket p\rrbracket^S\cap(S-\llbracket p\rrbracket^S)=\llbracket p\rrbracket^S$
then $S'=\llbracket p\rrbracket^S$, $\llbracket p\wedge\lnot Lp\rrbracket^{S'}=\llbracket p\rrbracket^{S'}\cap(S'\backslash \llbracket Lp\rrbracket^{S'})$
$\llbracket Lp\rrbracket^{S'}=S'$
$\llbracket p\wedge\lnot Lp\rrbracket^{S'}=\empty$
$\llbracket[(p\wedge\lnot Lp)!](p\wedge\lnot Lp)\rrbracket^S=\llbracket p\wedge\lnot Lp\rrbracket^S\Rightarrow  \llbracket p\wedge\lnot Lp\rrbracket^{S'}=\llbracket p\rrbracket^S\Rightarrow\empty=\llbracket\lnot p\rrbracket^S$

perfect recall.nothing known is lost in the update.if before updating with p we know that were we update with p, q must then be the case, then, after updating p, we know that q must be the case.

no miracles. the affect of any update cna be anticipated before the update.$M\langle p!\rangle q\rightarrow[p!]Mq$

logic.in addition to the logic of LM we need: update necessitation: if $\vdash P$ then $[Q!]P$, update MP, $L(p\leftrightarrow q)\rightarrow([p!]r\leftrightarrow[q!]r)$, precondition duality, perfect recall, no miracles

the paradox of surprise exam. surprise=conjunction of $\lnot L(Mondy), [\lnot Monday!]\lnot L(Tuesday)$,
$[\lnot first \ 2 \ days!]\lnot L(Tuesday)$
$[\lnot first \ 3 \ days!]\lnot L(W)$
$[\lnot first \ 4 \ days!]\lnot L(Friday)$
(Cerbrandy J., 2007. The Surprise Examination in Dynamic Epistemic Logic, Synthese 155, 21-33)

success.$[p!]Lp$
success failure. e.g. motivated by Moore. before the update the model is: M|F|w|, "it might not be w but in fact it is", after the update: w. $[M\lnot w\wedge w!]Lw$, which means $\lnot[M\lnot w\wedge w!](M\lnot w\wedge w)$

The model is M|Tu|W|Th|F. if the exam is on Monday, the precondition ($\lnot Monday$) fails so the conjunction is true. The same holds for the case that the exam is on Tu, W, Th. The only day the exam could not be on is Friday.
So when the teacher says "There will be a surprise" means that the exam will not be on Friday. 
$[surprise!]L(surprise)$? No! (it might be on Thursday, in which case "surprise" would now (after the update) be false)

substitution failure.$[p!]Lp$ is valid but not schematically valid
approaches to solve this probelm.I. axiomatise the schematic validities then add more.substitution core: update necessitation, update mp, regularity of updates (the first one), diamond-box, perfect recall, no miracles, null updates 
(Holliday, W., Hoshi, T. & lcard, T. "A Uniform Logic of Information Dynamics" in T.Bolander et al. eds., Advances in Modal Logic, Volume 9, College Publications, 2012:348-367)
atom invariance: $(p\rightarrow[P!]p),(\lnot p\rightarrow[P!]\lnot p)$, valid but not schematically valid: they have invalid substitutions, e.g. $(M\lnot p\wedge p)$ in the first. So they can't be theorems
Add a new syntactic category of "non-epistemic" formulas, of the form $\bar{p}$ where $p$ is a propositional variable; Restrict substitution so if $\bar{p}$ occurs in a theorem then p can only be replaced by another variable; Add the axiom $\vdash(\bar{p}\rightarrow[\phi!]{p}),\vdash(\lnot \bar{p}\rightarrow[\phi!]\lnot \bar{p})$
Let $\bar{\phi}$ be the result of underlining all variables in $\phi$
Completeness: $\phi$ is schematically valid iff $\vdash\phi$, $\phi$ is valid iff $\vdash\bar\phi$
II.drop substitution: from axioms to schema (Wang, Y. & Cao, Q. "On axiomatization of public announcement logic", Syntheses (2013) 190 (Suppl 1): 103-134)
III.use reduction axioms
$\vdash [\phi!]p\leftrightarrow(\phi\rightarrow p)$
$\vdash [\phi!]\lnot\psi\leftrightarrow(\phi\rightarrow \lnot[\phi!]\psi)$
$\vdash [\phi!](\psi\wedge\theta)\leftrightarrow([\phi!]\psi\wedge[\phi!]\theta)$
$\vdash[\phi!]L\psi\leftrightarrow(\phi\rightarrow L(\phi\rightarrow[\phi!]\psi))$
$\vdash[\phi!][\psi!]\theta\leftrightarrow[!(\phi\wedge[\phi!]\psi)]\theta$, update adds no expressive power.

As you may see, $[\phi!]\psi\leftrightarrow\lnot\langle\phi!\rangle\lnot\psi$
