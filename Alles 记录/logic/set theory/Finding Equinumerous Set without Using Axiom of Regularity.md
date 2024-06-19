
Finding Equinumerous Set without Using Axiom of Regularity

Lemma. Given a set $X$, we can find a set $Y$ such that $|X|=|Y|$ and $X\cap Y=\emptyset$.

Proof. Let $T=\{(S,x):S\subseteq X,\ x\in X,\ (S,x)\in X,\ (S,x)\notin S\}\subseteq X$

and let

$Y=\{T\}\times X=\{(T,x):x\in X\}.$

Clearly $|X|=|Y|$. Assume for a contradiction that $X\cap Y\neq \emptyset$, i.e., there is an element $x\in X$ such that $(T,x)\in X$. Then we get the Russell paradox in the form

$(T,x)\in T\iff(T,x)\notin T.$

Theorem. Given sets $A$ and $B$, we can find a set $C$ such that $|C|=|A|$ and $C\cap B=\emptyset$.

Proof. Let $X=A\cup B$. By the lemma, we can find a set $Y$ such that $X\cap Y=\emptyset$ and $|Y|=|X|=|A\cup B|\ge|A|$. Choose $C\subseteq Y$ with $|C|=|A|$.

bof, https://math.stackexchange.com/questions/2961610/finding-equinumerous-set-without-using-axiom-of-regularity