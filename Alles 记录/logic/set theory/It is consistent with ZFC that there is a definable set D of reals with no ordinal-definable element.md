
It is consistent with ZFC that there is a definable set $D$ of reals with no ordinal-definable element.
Andreas Blass, https://mathoverflow.net/questions/243402/ordinal-definable-witnesses-to-the-perfect-set-property/243409#243409
$D$ will be the set of non-ordinal-definable reals; and is nonempty as long as $\mathbb{R}^{OD}\not=\mathbb{R}$. Show that there can be non-ordinal-definable reals. (Easy to do by forcing (for example, if c
 is Cohen generic over $W$ then $OD^{W[c]}=OD^W$ and so $c\notin OD^{W[c]}$).)

Corl. There is a definable relation without definable choice function.
Proof. set $S=\{0\}$ and $Q(x,y)=$"$y\in D$". The absence of an ordinal-definable, let alone definable, element of $D$ means that there is no way to assign to $0$ a $y$ satisfying $Q(0,y)$.

Answering a question of Mycielski, Groszek and Laver in Finite groups of OD-conjugates [Period. Math. Hungar. 18 (1987), 87-97, MR0895774] show that there can be two sets of reals $x,y$  such that $\{x,y\}$ is ordinal definable but neither $x$ nor $y$ is ordinal definable. 
The brief argument from the intro to that paper: 
Suppose $u,v$ are two mutually Sacks generic reals over $L$. Both $u$ and $v$ have minimal degree over $L$. Let $x$ and $y$ be the $L$-degrees of $u$ and $v$ respectively. Then $x$ and $y$ satisfy the same formulas with ordinal parameters because Sacks forcing is homogeneous. However, $\{x,y\}$ is definable (without parameters) since these are the only two minimal $L$-degrees in $L[u,v]$.
They also prove a lot of other interesting things about OD conjugates.