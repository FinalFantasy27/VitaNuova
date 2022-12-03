$\chi_G(t) = $ number of proper t-colorings of the vertices of $G$
t种颜色，每两条边异色

不能有loop
一个点有t种，两个连起来的点有$t(t-1)$种，n个前后相继的点有$t(t-1)^{n-1}$种；完全图$K_n$有$t(t-1)(t-2)\dots(t-n+1)=t^n- {n-1 \choose 1}t^{n-1}+{n-1 \choose 2}t^{n-2}+\cdots$种

$\chi_G(t)$ a polynomial, $\chi_G(t)=\chi_{G\backslash e(t)}-\chi_{G/e(t)}$, by induction on the number of edges ($G\backslash e(t)$ deletion, $G/e$ contraction)
删掉一条边后多了两个点同色的染色方式
两个式子都正负交替，但是dele比con高一次，正减负更多，负减正更少

introduced by Birkhoff in attempt to solve 4-color conjecture (If G in a planar graph (图画在一个平面上使得每两个边相交), $\chi_G(4)>0$ )

$\chi_G(t)=a_dt^d+a_{d-1}t^{d-1}+\dots+a_1t$
Conj (Read) $|a_i|$ is unimodal（一串数字先单调增再单调减）($|a_d|\le|a_{d-1}|\le\dots\le|a_j|\ge|a_{j-1}|\ge\dots\ge|a_1|$)
Conj (Rota-Herou-Welsh) $|a_i|$ is log-concave. i.e. $|a_i|^2\ge|a_{i-1}||a_{i+1}|$, i.e. $\log |a_i|\ge\frac{\log |a_{i-1}|+\log|a_{i+1}|}{2}$. （一个concave的多项式一定unimodal）
answered positively by June Huh 2012 by Hodge index theorem

线性空间可以谈论点和线，域的点就是代数方程的解

射影几何里平行线相交在无穷远处，因此两幅图在其看起来相等
Thm (de Bruijn-Erdös) If not all lines pass through one point, then the number of lines $\le$ the number of points
