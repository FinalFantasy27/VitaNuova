对于含有无限个变量的语言$L$不存在哥德尔编码$f:L^{<\omega}\rightarrow\mathbb{N}$使得字符串$s_1$的长度小于$s_2$就有$f(s_1)<f(s_2)$.

但是我们可以考虑为长度为$n$的字符串$s=\langle p_1,p_2,\cdots,p_n\rangle$赋予数$p_1\cdot\omega_1+p_2\cdot\omega_2+\cdots+p_n\cdot\omega_n$，那么此编码$p:L^{<\omega}\rightarrow computable \ ordinals$满足$s_1$的长度小于$s_2$就有$p(s_1)<p(s_2)$.

然后再利用可计算序数与自然数的双射性，任取一双射$b$，得到一个哥德尔编码$b\cdot p:L^{<\omega}\rightarrow\mathbb{N}$使得$s_1$的长度小于$s_2$就有$b^{-1}(b\cdot p(s_1))<b^{-1}(b\cdot p(s_2))$.