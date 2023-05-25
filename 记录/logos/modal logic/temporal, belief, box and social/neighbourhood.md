tautology=valid in canonical model = valid
consistency lemma. The set of formulas satisfied by any state in any model is maximal consistent.
Truth lemma. $[\phi]^C=\{w|\phi\in w\}$, $w$ a maximal consistent set
Lindenbaum lemma. If $w$ is a consistent then there is a maximal consistent $v$ cotains $w$

box model $M=\langle S,O,V\rangle$  where $OX \subseteq S$ for each $X \subseteq S$

box: axioms and rules. $\vdash \phi$ if $\phi$ a tautology, mp, substitution, if $\vdash \phi\leftrightarrow \psi$ then $\Box \phi\leftrightarrow \Box \psi$
exercise: prove replacement of logical equivalents. if $\vdash \phi\leftrightarrow \psi$, then $\vdash \theta[\phi]\leftrightarrow \theta[\psi]$

canonical box model. $C=\langle  S_C,O_C,V_C\rangle$  is defined by $S_C$ the set of all maximal box consistent sets of formulas, $V_C(p)=\{w|p \in w\}, O_C X=\{v|for \ every \ \phi, \Box\phi \in v \ if \ X=\{w|\phi\in w\}\}$
tautology=valid in canonical model = valid

neighbourhood model $M=\langle  S,N,V\rangle$  where, for each state $s$, $Ns$ is a set of subsets of $S$, called the neighbourhoods of $s$ 
$M,s\models \Box\phi$ iff $[\phi]^M\in Ns$

if you have a box mode, you can define a neighbourhood mdoel like this $Ns=\{X|s\in OX\}$, and likewise, for a neighbourhood model define a box model $OX=\{s| X\in Ns\}$
so we can view the canonical box model $C$ as neighbourhood model $\langle  S_C,N_C,V_C\rangle$  with $N_C s=\{[\phi]^C|\Box\phi\in s\}$

A neighbourhood model is normal if 1. it contains top: $S\in Ns$, 2. is closure under intersection: if $P\subseteq Ns$ then $\cap P\in Ns$, 3. upward closed. if $X \in Ns$ and $X\subseteq Y$ then $Y\in Ns$
principles for normal models. 1. if $\models \phi$ then $\models \Box\phi$, 2. $\models (\Box p \land \Box q)\rightarrow \Box(p \land q)$, 3. $\models \phi\rightarrow \psi$ then $\Box\phi\rightarrow \Box\psi$, 4. $\models \Box(p\rightarrow q)\rightarrow (\Box p\rightarrow  \Box q)$
C contains top iff 1., closed under intersection implies 2. (2. implies that C is closed under finite intersections), upward closed iff 3.

normal modal logic. tautology, mp, substitution, necessitation, $\vdash \Box(p\rightarrow q)\rightarrow (\Box p\rightarrow  \Box q)$
canonical completeness, Kripke model. given a neighbourhood model $M=\langle  S,N,V\rangle$ , define relation $R$ on $S$ by $Rst$ iff $t\in\cap Ns$, i.e. $t$ is in every neighbourhood of $s$. 
$M$ is normal iff $Ns=\{X\subseteq S| t\in X \ for \ all \ t \ such \ that \ Rst\}$, normal models can be represented as $\langle  S, R, V\rangle$ 