information cells for a: $[s]_a=\{t|s\sim_a t\}$
single agent LK models: $M_{s_a}=\langle [s]_a,<=_a,V_s\rangle$ with $V_s(p)=V(p)\cap [s]_a$
every subset of $[s]_a$ has a $<=_a$ maximal state, i.e. if $x \subseteq [s]_a$ then there is $t \in X$ such that $u<=_a$ for every $u \in x$.
to get the maximal states property in infinite models we need to add another frame condition: there are no infinite sequences of increasingly plausible states: $s_0<_a s_1<_a\cdots$
, plausibility relation ($<=_a$) for belief is transitive and reflexive

axioms for multi-LK: $L_a$ (epistemic necessity/hard knowledge) and $K_a$ (defeasible knowledge) are normal, $L_a$ has $S5$ axioms, $K_a$ has $S4$ axioms, $\vdash L_a p\rightarrow K_a p$,$\vdash (L_a(p \lor K_aq)\land L_a(q\lor K_a p))\rightarrow(L_a p \lor L_a q)$

defining belief: $s\models B_a(\phi : \psi)$ iff $t\models\psi$ for every $t$ such that $t\models\phi$ and $t>=_a u$ for every $u\sim_a s$ such that $u\models\phi$
$s\models \dot{B_a} \phi$ iff $t\models\phi$ for some $t\sim_a s$ and $u\models\phi$ for every $u\sim_a s$ for which there is a $v<=_a u$ with $v\models\phi$ 
$\vdash B_a(p:q)\leftrightarrow(M_a p\rightarrow M_a(p\land K_a(p\rightarrow q)))$
$\vdash \dot{B_a}p\leftrightarrow(M_a p \land L_a
(p\rightarrow K_a p))$

public announcement logic. Plaza, J. (2007). Reprint of Plaza (1989); Gerbrandy, J & Groeneveld, W (1997). $[\phi!]$ as before
$[p!]K^*_G p$ valid but not schematically valid

general knowledge $K_{G}\phi\leftrightarrow \bigwedge_{a\in G}K_a\phi$ vs. common knowledge
$s\models K^*_G\phi$ iff $t\models\phi$ for every $t$ connected to $s$ by a path, each of whose links is labelled by an agent in $G$ 

Kleene Star: $s\models\Box^*\phi$ iff $t\models \phi$ for every $t$ to which there is path from $s$. ($\Box^*=\Box\land\Box\Box\land\cdots$) 
star axioms.$\Box^*$ necessitation, mp, $\vdash\Box^*p\leftrightarrow(p\land \Box\Box^*p)$ (fixed point), $\vdash(p\land\Box^*(p\rightarrow\Box p)\rightarrow\Box^* p)$ (induction)

adding updates (add axioms for announcement, e.g. reduction axiom schema)
announcement star induction rules: if $\vdash X\rightarrow[\phi!]\psi$ and $\vdash X\rightarrow(\phi\rightarrow L_G X)$ then $\vdash X \rightarrow [\phi!]L^*_G\psi$ and a axiom for $K$ case
we can't have reduction axioms like for PAL because reduction is not possible for $[\phi]!\Box^*$. Unless, we add another operator: $\Box^*(\phi:\psi)$ "conditional star" (See MLOM, p.186 for the case of hard common knowledge) 
star update.$[\phi!]^*\psi\leftrightarrow(\psi\land[\phi!]\psi\land[\phi!][\phi!]\psi\land\cdots)$, fixed point and induction axioms, but these are not enough for a complete axiomatisation (J.S.Miller and L.S.Moss. "The undecidability of iterated modal relativization." Studia Logica, 79(3):373-407, 2005.)
arbitrary announcement.$[!]\psi\rightarrow([\phi_0!]\psi\land[\phi_1]\psi\land\cdots)$, $\psi$ holds after all true updates, where $\phi_0,\phi_1,\cdots$ is a(n infinite) list of all static formulas (Balbiani, P., Baltag, A., van Ditmarsch, H.P., Herzig, A., Hoshi, T., and De Lima, T. "What can we achieve by arbitrary announcements? A dynamic take on Fitch's knowability." In D.Samet, editor, Proceedings of TARK XI, pages 42-51, Louvain-la-Neuve, Belgium, 2007.)
APAL.PAL plus !elimination.$\vdash[!]\phi\rightarrow[\phi!]\psi$, !introduction.if $\vdash X\rightarrow [\phi!][p!]\psi$ and p is not in $X,\phi,\psi$, then $\vdash X\rightarrow [\phi!][!]\psi$ (Balbiani, P., Baltag, A., van Ditmarsch, H.P., Herzig, A., Hoshi, T., and De Lima, T. "'Knowable' as 'known after an announcement'", The Review of Symbolic Logic, 1(3): 305-334, 2008)

The Sum and Least Common Multiple Puzzle

peeking $\phi$.a gets an update of $\phi!$ while the others $\bar{a}$ believe nothing happened (peeking123.jpg, where $B_a$ is the maximal plausible and maximal equivalent states)
(complete ignorance.jpg.it is hard to model this in a simple finite model. We must make constraints and focus on the aspects we are interested in.)

looking.a tests $\phi?$ and others $\bar{a}$ know this without knowing the result (just forgeting the oringinal model)
private announcement. a announces $\phi$ to b while the others $\bar{ab}$ believe nothing happened. better: a announces $K_a\phi$

actual world assumption.restrict to what actually happens so the maximum degree of ignorance is to be uncertain only between two things: what actually happens and nothing happening


Baltag, Moss, Solecki 1998 The Logic of Public Announcements, Common Knowledge and Private Suspicions
event models

![](/e4.0event%20model.jpg)

![](/e4.1product%20space.jpg)

![](/e4.3.jpg)

product space (combinations of states and events)
black arrow: before anything happens
coloured arrow: after taking actions
if s is more plausible than t, then there is an arrow from t to s

"action"/event priority update, Alexandru Baltag and Sonja Smets. 2008, "A qualitative theory of dynamic interactive belief revision", in Bonanno, G. van der Hoek, W. and Wooldridge, M.(eds.), Logic and the Foundations of Game and Decision Theory (LOFT 7), Volume 3 of Texts in Logic and games, pp. 11-58, Amsterdam University Press.
new has priority over old 

![](/e4.2event%20priority.example.jpg)

![](/e4.4update.jpg)

exercise: apply this (updating) to other examples/cases

event model $\langle E,\le,pre\rangle$
$\le_a$ a relation on $E$ for each agent $a$, which satisfies the plausibility frame condition (locally total preorder)
$pre(e)$ is a proposition, for each event e in E, called the precondition of e
including e, the event that actually occurs, gives us pointed event model
e.g. suppose e1= c peeks and sees H, e2= c peeks and sees ~H, e3= nothing happens. Then pre(e1)=H, pre(e2)= ~H, pre(e3)=T

product update
state model $M=\langle S,\le, V\rangle$, event model $\alpha=\langle E,\le,pre\rangle$ 
combine to give $M\otimes \alpha=\langle S\otimes,\le_{\otimes},V_{\otimes}\rangle$
$S\otimes E=\{se|M,s\models pre(e)\}$, state-event pairs se for which the state s satisfies the precondition of the event e
$s_1e_1\le_{\otimes a} s_2e_2$ iff $(s_1\le_a s_2$ and $e_1\le_a e_2)$ or
$(s_2\le_a s_1$ and $e_1<_a e_2)$
$V_{\otimes}(p)=\{se|s\in V(p)\}$

![](/e4.5product%20model.example.jpg)

dynamic epistemic logic 
$\phi:=p|\lnot\phi|(\phi\wedge\phi)|L\phi|K\phi|[\alpha,e]\phi$, where $\alpha$ is an event model and $e\in E$
a model in formula
$M,s\models[\alpha,e]\phi$ iff $M,s\models pre(e)$ then $M\otimes\alpha,se\models\phi$

![](/e4.6reduction.jpg)

![](/e5.0.defining%20belief%20revision%20operators.jpg)

true/false radical upgrade, two states, p and ~p, from the state which is false/is not he case /is true/is the case to the state which is true/is the case /is false/is not the case
conditional radical upgrade, well-defined if the selected events have incompatible preconditions

![](/e5.1.sincerity%20and%20trust.jpg)
![](/e5.2.realiability.jpg)
![](/e5.3.higher-order%20sincerity.jpg)
![](/e5.3.higher-order%20sincerity2.jpg)
![](/e5.4.bisimulation%20warning%20for%20MB%20models.jpg)
![](/e5.6.gettier%20case.product.jpg)
arrows to itself
![](/e5.6.gettier%20case2%20(maximal%20equivalence%20state%20for%20b%20is%200b).jpg)


$p:=\phi$, change the value of p so that it is satisfied wherever $\phi$ is currently satisfied (valuation), e.g. $H:=\lnot H$ (turn over the coin), $H:=T$ turn the coin to be heads up, $H:=B_a \lnot H \lor (\lnot B_a H\wedge H)$ turn the coin to be the oppsite of what a believes it to be

![](/e6.0.social%20operators.jpg)
![](/e6.1.rose%20diffusion.jpg)
![](/e6.2.action.jpg)
![](/e6.3.model-changing%20actions.jpg)
![](/e6.4.simultaneous%20changes.jpg)
![](/e6.5.sequential%20vs.%20simultaneous.jpg)
![](/e6.6.perspective.jpg)
![](/e6.7.encapsulate%20action%20as%20operators.jpg)
![](/e6.8.uniform%20substitution%20fails.jpg)
![](/e6.9.dynamic%20substitution%20logic%20(joint%20work%20with%20Liu%20Fenrong).jpg)
![](/e6.99S-threshold%20logic.jpg)


