
Type theory

3

$\Pi_{x:u} (\phi(x) \to 0) \to 0$ is equivalent to $(\Sigma_{x:u} \phi(x) \ \to 0)\to 0$

Right to left:
Given $h: (\Sigma_{x:u} \phi(x) \ \to 0)\to 0$, we want to construct $f: \Pi_{x:u} (\phi(x) \to 0) \to 0$ which takes $p: \Pi_{x:u} (\phi(x) \to 0)$ as an argument.
Define a helper function $k:\Sigma_{x:u} \phi(x) \ \to 0$ such that $k((x,t)):\equiv p(x)(t)$, where $x:u,t:\phi(x)$. (This is a definition by pattern matching; we're unpacking a pair in the input argument definition.)
Then define $f(p):\equiv h(k)$.

(Is my use of 'definition by pattern matching' correct?)

Left to right:
Given $f: \Pi_{x:u} (\phi(x) \to 0) \to 0$,
we want to construct $h: (\Sigma_{x:u} \phi(x) \ \to 0)\to 0$.
We define a helper function $k:\Pi_{x:u} (\phi(x) \to 0)$ such that $k(x)(t):\equiv g((x,t))$, where $x:u,t:\phi(x)$
Now we can define $h:$
$h(g):\equiv f(k)$.
