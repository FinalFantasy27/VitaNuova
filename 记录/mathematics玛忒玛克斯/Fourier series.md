Fourier series

let $k,l$ be positive integers

$\int^{\pi}_{-\pi}\cos kx \sin lx \mathrm{d}x=0$

$\int^{\pi}_{-\pi}\cos kx \cos lx \mathrm{d}x=0$, if $k\not= l$;$\pi, if k=l$

$\int^{\pi}_{-\pi}\sin kx \sin lx \mathrm{d}x=0$, if $k\not= l$;$\pi, if k=l$

$\cos \theta\cos\phi=1/2((cos(\theta+\phi)+cos(\theta-\phi))$

Fourier series

$f(x)=\dfrac{a_0}{2}+\sum\limits^{\infty}_{k=1} a_k\cos kx+b_k\sin kx$ on $(-\pi,\pi)$

$\int^{\pi}_{-\pi}f(x)\cos lx=\dfrac{a_0}{2}\int^{\pi}_{-\pi}\cos lx+\sum\limits^{\infty}_{k=1} a_k\int^{\pi}_{-\pi}\cos kx\cos lx+b_k\int^{\pi}_{-\pi}\sin kx \cos lx$ on $(-\pi,\pi)=\pi a_l$

$\int^{\pi}_{-\pi}f(x)\sin lx=\dfrac{a_0}{2}\int^{\pi}_{-\pi}\sin lx+\sum\limits^{\infty}_{k=1} a_k\int^{\pi}_{-\pi}\cos kx\sin lx+b_k\int^{\pi}_{-\pi}\sin kx \sin lx$ on $(-\pi,\pi)=\pi b_e$

formula:

$f(x)\sim \dfrac{a_0}{2}+\sum\limits^{\infty}_{k=1} a_k\cos kx+b_k\sin kx$

$a_k=\dfrac{1}{\pi}\int^{\pi}_{-\pi}f(x)\cos kx\mathrm{d}x (k=0,1,2,\ldots)$

$b_k=\dfrac{1}{\pi}\int^{\pi}_{-\pi}f(x)\sin kx\mathrm{d}x (k=0,1,2,\ldots)$

e.g.$f(x)=x\sim 2 \sum\limits^{\infty}_{k=1} \dfrac{(-1)^{k+1}}{k}\sin kx$
