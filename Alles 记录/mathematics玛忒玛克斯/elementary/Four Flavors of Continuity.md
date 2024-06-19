
Differentiable: 在定义域中所有点都存在导数
${\displaystyle \lim _{x\to a}{\frac {f(x)-f(a)}{x-a}}}$
极限存在要求左右极限相等
Example. $f(x)=|x|$在$x_0=0$处不可微



<br/>

Let $X$ and $Y$ be metric spaces with metrics $d_X$ and $d_Y$, respectively.

Suppose $f:X\to Y$ is a function and fix $x_0\in X$. Then $f$ is continuous at $x_0$ if for each $x \in X$ and for each $\epsilon>0$ there is a $\delta>0$ such that $d_X(x,x_0)< \delta$ implies $d_Y(f(x),f(x_0))<\epsilon$.

uniformly continuous if for each $\epsilon>0$ there is a $\delta>0$ such that $d_X(x_1,x_2)< \delta$ implies $d_Y(f(x_1),f(x_2))<\epsilon$.

$\mathscr{F}$ be a collection of continuous functions. $\mathscr{F}$ is equicontinuous at $x_0$ if for each $x\in X$ there is a $\delta>0$ such that $d_X(x,x_0)< \delta$ implies $d_Y(f(x),f(x_0))<\epsilon$ for all $f\in \mathscr F$

uniformly equicontinuous