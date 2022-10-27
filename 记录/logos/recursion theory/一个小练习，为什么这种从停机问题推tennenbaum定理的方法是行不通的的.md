**tennenbaum定理**说的是：如果$M=<N, 0, 1, +, *, < >$是一个以自然数为论域的$PA$(Peano Arithmetic)的非标准模型，那么$+^M$是非递归的。（$*^M$也是，但是在一些以自然数为论域的非标准模型里$<$可以是递归的。）

考虑到一些限制性的定理，例如哥德尔定理、*Entscheidungs*问题的不可解性都可以立即从停机问题的不可解性中得出，我们会想是否Tennenbaum定理也是这样。

自停机关系$H(e, t)$是一个当且仅当在一个standard enumeration下numbered $e$的图灵机，在输入了代表$e$的numeral作为输入后，在computational clock的第$t$个刻度停机下成立的关系。

我们已经有了一些背景结果：给定一个非标准模型$M$，在模型中会有一个元素$c$，使得对于每个$n$来说，$M \models ∃tH(\overline{n}, t)$（这里$\overline{n}$是代表$n$的numeral）当且仅当模型中的第$n$个素数能够被$c$整除。

让$M$是一个可数的非标准模型，函数$f(n, c)$是一个找到模型中第$n$个素数后判断它能否被$c$整除的函数。

现在我们给出这样一个论证：

1. 如果$+^M, *^M, <^M$是递归的，那么$f$也是递归的。因为与素数和整除性相关的stuff是可以用加、乘和小于来定义的；
2. 如果$f$是递归的，我们就会有一个关于什么时候$M \models ∃tH(\overline{n}, t)$的判定程序；
3. 但是不可能有这样的可以判定对每个n来说，是否$M \models ∃tH(\overline{n}, t)$的判定程序，因为我们不能够判定自停机问题；
4. 所以，我们推出：在一个可数的非标准模型里，$+^M$, $*^M$, $<^M$（的一些选择）不能全是递归的

可是这个证明是行不通的，那么是在哪一步出了问题呢？

### Reference

[Peter Smith关于tennenbaum定理的note](https://logicmatters.net/resources/pdfs/tennenbaum_new.pdf)