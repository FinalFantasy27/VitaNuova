
Completing a Metric Space: filling the limits of Cauchy sequences in the metric space with equivalence classes of Cauchy sequences

In real analysis, a measurable set $E$ can be 'small', either by having measure $0$, or
by being nowhere dense.

The Fat Cantor Set is nowhere dense and yet have POSITIVE measure
[Fat Cantor set / Smith-Volterra-Cantor set. At each step n, we remove intervals with a total length of $1/2^{n+1}$. The total length we remove adds up to $1/4+1/8+1/16+… = 1/2$. Italian mathematician Vito Volterra (1860-1940) used one of these sets to cook up a function[Volterra's function] that’s differentiable but whose derivative is not integrable.]
(Cantor set. starting with the [0,1] interval and removing the middle third of it, so we’re left with the intervals [0,1/3] and [2/3,1]. Then the middle third is removed from each remaining interval, and that process is repeated forever. Surprisingly, there’s some stuff left at the end, but there’s no length. The total length removed sums up to 1, the length of the original interval. The result is the same if we remove the middle fourth of each interval instead.)

![alt text](image.png)

Borel-Cantelli Lemma: if $(X,\Sigma,\mu)$  is a measure space with $\mu(X) < \infty$ and if $\{E_n\}_{n=1}^\infty$  is a sequence of measurable sets such that $\sum_n\mu(E_n) < \infty$, then

$\mu\left(\bigcap_{n=1}^\infty \bigcup_{k=n}^\infty E_k\right)=\mu\left(\limsup_{n\to\infty} En \right)=0,$

which is the same as saying $\mu(\{x\in X: there \ exists \ infinitely \ many \ n \ such \ that \ x\in E_n\})=0.$
And this is another way of saying 
almost every $x\in X$ lives in at most finitely many $E_n$.

http://www.math3ma.com/mathema/2015/9/21/the-borel-cantelli-lemma
