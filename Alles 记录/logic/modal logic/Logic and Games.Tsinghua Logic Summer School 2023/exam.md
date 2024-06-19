1.(a) 
I: divide the pile with 4 tokens into four piles with 1 token
II: divide the pile with 3 tokens into 1, 1 and 1 tokens.
The player I cannot move, loses.

(b)(c)
![](exam.1.(b)(c).jpg)

(d) According to Sprague-Grundy theorem, the game is equivalent to a Nim heap. By taking the mex of the nim values of the possible moves, the nim-value of the game is 1. 
Therefore, the game is equivalent to $*1$.
And the pattern for nim-values is: 
1
232032
101
0

2.(a) The formula is $\forall x\forall y (x=y \lor rxy \lor \exists z (rxz\land ryz))$. 
By the rule, player II chooses where to assign $x$ and $y$.
Player II can win by assigning $x$ to the bottom left corner of N, and assigning $y$ to the top right-hand corner of N.

(b) A winning strategy for duplicator:
On the first turn, choose randomly.
On the second turn, if the spoiler chooses a point $y$ adjacent to the point $x$ chosen before in one of the graph, choose a point $r$ adjacent to the point $z$ chosen before in the other graph. Choose a point $r'$ not adjacent to the point $z$ chosen before otherwise.

(c) A winning strategy for spoiler in $EF_2(N,T)$:
Choose the middle point of T on the first turn.
Then choose a point not adjacent to the point chosen by duplicator in N.

(d) 2 is the largest n such that duplicator has a winning strategy in $EF_n(N,O)$.
The reason is that 1. as is shown in (b), duplicator has a winning strategy in $EF_2(N,O)$; however, spoiler has a winning strategy in $EF_3(N,O)$:
Choose the bottom left corner of N and then choose the top right-hand corner of N. Duplicator has to choose two points not adjacent to each other in O. 
Then spoiler can choose the bottom right corner of N. It is adjacent to one point in N only. But the remaining points in O are adjacent to both points chosen before.

3.(a) Yes. It can be verified that the power sets given satisfy Monotonicity, Consistency and Determinacy condition given in the class. 

The game setting is:
at the starting node s, player 1 moves to node s'. Then player 2 chooses one of node O and node X to move to. 
From node O, player 1 can move to node 1, node 2, and node 3.
From node X, player 1 can move to node 1, node 2, and node 4.
And if the player reaches the node 4, she wins. Otherwise she loses.

(b) The game tree is 
![](exam.2.(b).jpg)

"find your own collection of subsets of S (different from the one above) which can be players’ powers in a 2-player game"
?

4.(a) Traveler has a winning strategy. She can move to 6 first. If the demon cuts the link between 6 and 7, she can go to 8. If the demon cuts the link between 6 and 8, she can arrive at 7.

(b) $\Diamond \blacksquare \Diamond A$, where $A$ is the proposition that only holds at 7 and 8.

(c) Formula (i) holds at 1. Because $\Box\Diamond p$ is false at 1 (2 can be reached in 1, but 9 cannot be reached in 2). The implication is true vacuously.
Formula (ii) holds at 1 too. $\Box\Diamond\Diamond p$ holds at 1. And $\blacksquare(\Diamond T \to \Diamond\Diamond\Diamond p) $ holds at 1. The reason that the latter holds is that no matter which line is deleted, there are still successors of 1, and the traveler can choose the route $(1,4,9)$ to reach 9, if the line deleted is not $(1,4)$ or $(4,9)$. Otherwise the traveler can choose the route $(1,6,9)$. 

(d) The set of propositions for traveler is $\{$currentT-v$|v\in\{1,\dots,10\}\}$. The proposition ‘currentT-v’ depicts that node v is the current position of the Traveler.
And the set of actions for traveler is $\{$GoTo-v$|v\in\{1,\dots,10\}\}$. The action 'GoTo-v' depicts that traveler moves to node v.
For demon, the set of propositions is $\{$Not-r$|r\in \{1,\dots, 10\}\times\{1,\dots,10\}\}$. The proposition 'Not-r' depicts that there is no edge r in the graph.
The set of actions is $\{$cut-r$|r\in \{1,\dots, 10\}\times\{1,\dots,10\}\}$. The action 'cut-r' depicts deletion of the edge r.

I provide the strategy specification $[$Not-$(1,10)\rightarrow$ cut-$(6,9)]\Rightarrow[$current-$1 \rightarrow $ Goto-$6 ]\cdot([$current-$6\rightarrow$ Goto-$7]+[$current-$6\rightarrow$ Goto-$8])$.




5.(a) The language of the logic is 
$\phi::=I_n|\lnot\phi|\langle H\rangle \phi|C_n\phi,n\in\mathbb{N}$,

$[H]$ is defined in the usual way. And $V_n\phi$ is defined by $\lnot C_n\lnot \phi$.

Models are $\mathscr{M}=(W,R)$, where 
$W$ is a non-empty set,
$R\subseteq W\times W$ is a binary relation 

Formulas are evaluated at infinite sequences of states.
$\mathscr{M}, s, t_1, t_2, \dots \models I_n \iff $ one of $t_1,\dots,t_n$ is $s$
$\mathscr{M}, s, t_1, t_2,\dots\models \lnot \phi \iff \mathscr{M}, s, t_1, t_2,\dots \not\models  \phi$ 
$\mathscr{M}, s, t_1, t_2, \dots \models \langle H\rangle \phi \iff \exists s'\in W$ s.t. $Rss'$ and $\mathscr{M}, s', t_1, t_2, \dots  \models  \phi$ 
$\mathscr{M}, s, t_1, \dots \models C_n\phi \iff \exists t'\in W$ s.t. ($Rt_1t'$ and $\mathscr{M}, s, t', t_2,t_3, \dots \models  \phi$) or ($Rt_2t'$ and $\mathscr{M}, s, t_1, t', t_3 \dots \models  \phi$) or $\dots$ or ($Rt_nt'$ and $\mathscr{M}, s, t_1, \dots, t_{n-1},t',t_{n+1},\dots \models  \phi$)

(b) For the first two graphs, the hider will win the game. 
For any point i, any one of the three points connected to i cannot connect both the other two points, which means that each seeker can only cut one of escape routes of hider, so hider will always be left with an escape route.

For the third graph with 3 seekers, a seeker will win the game. 
Hider H can only go into the star zone, let S1 go to the position where H was in, and let S2 go into the star zone, and let S3 go to the bottom left corner of the star zone, then it can be seen that there is no way H can escape.
And in the paper "A game of cops and robbers" by M. Aigner, M. Fromme in Discrete Applied Mathematics, Volume 8, Issue 1, 1984 (Page 1-12), it is shown that for planar graphs 3 cops always suffice to win.

(c) For the first graph, $\lnot\underset{n\le |M\times M|}\bigvee ([H]C_1)^n I_1$
For the second graph, $\lnot\underset{n\le M^3}\bigvee ([H]C_2)^n I_2$
For the third,  $\underset{n\le M^4}\bigvee ([H]C_3)^n I_3$,
where the size of $M$ is 10. 
