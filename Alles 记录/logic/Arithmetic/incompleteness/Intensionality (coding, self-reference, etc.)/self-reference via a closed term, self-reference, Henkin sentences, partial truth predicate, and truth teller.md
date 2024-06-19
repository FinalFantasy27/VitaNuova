self-reference via a closed term

Kreisel-Henkin Criterion for Self-reference.
Let a formula $\varphi(x)$ expressing a certain property P in $\Sigma$ be given. Then a formula $\gamma$ says about itself that it has property P iff it is of the form $\varphi(t)$ for some closed term t that has (the code of) $\varphi(t)$ as its value. 
If $\gamma$ says about itself that it has property P (expressed by $\varphi(x)$), then $\gamma$ is a diagonal sentence of $\varphi(x)$.
Proof: $\gamma$ must be of the form $\varphi(t)$ where t has $\varphi(t)$ as its value. Since $\Sigma$ decides all closed equations, we have $\Sigma\vdash t=\#(\varphi(t))$. From $\Sigma\vdash\varphi(t)\leftrightarrow\varphi(t)$ by substitution of identicals we get $\Sigma\vdash\varphi(t)\leftrightarrow\varphi(\overline {\#\varphi(t)})$.
In the presence of suitable function symbols, Godel’s diagonalization method enables us to find the suitable closed term. “Suitability” needs to be understood relative to the coding scheme used. However, instead of using a systematic method for arriving at diagonal sentences that satisfy the Kreisel–Henkin criterion, for any given ϕ(x), we could also try a brute force method by enumerating all closed terms of the language and browse through them until we have found the first term t with $\Sigma\vdash t=\#(\varphi(t))$


The set of diagonal sentences (in the standard model) is not arithmetically definable.
Proposition. For any formula $\phi(x)$ the set of its provable diagonal sentences, that is the set of all $\gamma$ such that $\Sigma\vdash\gamma\leftrightarrow\phi(\#\gamma)$ is not decidable.

Let Bew be the canonical provability predicate. Consider some diagonal sentence h of Bew, i.e., $\Sigma\vdash h\leftrightarrow Bew(\#h)$.
Lemma. h is not refutable.
Otherwise $\Sigma$ would prove its own consistency on some standard assumptions.

Theorem. (Kreisel (1953)) There is a formula $Bew_1(x)$ and a term $t_1$ such that the following three conditions are satisfied:
1. $Bew_1(x)$ is weakly represents provability in $\Sigma$.
2. $\Sigma\vdash t_1=\#Bew_1(t_1)$
3. $\Sigma\vdash Bew_1(t_1)$

Similary, there is a provability predicate $Bew_2(x)$ and a term $t_2$ such that
1. $Bew_2(x)$ is weakly represents provability in $\Sigma$.
2. $\Sigma\vdash t_2=\overline{\#Bew_2(t_2)}$
3. $\Sigma\vdash \lnot Bew_2(t_2)$

$Bew_2(t_2)$ is the refutable, $Bew_2(t)$ the provable Henkin sentence. Both are self-referential in the Kreisel-Henkin sense. (Volker Halbach: Self-reference and intensionality in metamathematics)
Proof (Kreisel and Henkin). Fix some predicate $Bew(x)$ that weakly represents $\Sigma$-provability in $\sigma$. Apply the canonical diagonal construction to $x=x\lor Bew(x)$ to obtain a term $t_1$ such that
$\Sigma\vdash t_1=\#(t_1=t_1\vee Bew(t_1))$
Now define $Bew_1(x)$ as
$x=t_1\vee Bew(x)$.
$\Sigma\vdash t_1=\#(t_1=t_1\vee Bew(t_1))$ and hence 2. holds.
Since $t_1=t_1\vee Bew(t_1)$ is provable in pure logic (and thus in $\Sigma$), $Bew(t_1)$ is provable and 3. is satisfied. 1. is also easy. QED
$\Sigma\vdash t_2=\#(t_2\not=t_2\vee Bew(t_2))$
define $Bew_2(x)$ as $x\not=t_2\wedge Bew(x)$
$t_2\not=t_2 \wedge Bew(t_2)$ is refutable in pure logic. QED

Henkin and others have complained ever since that K hadn't used the canonical provability predicate.
Only Smorynski 1991 complained about the way Kreisel obtained the terms t1 and t2.

Applying the canonical diagonal procedure to $Bew_2(x)$ yields a term $t$ with
1. $\Sigma\vdash t=\#Bew_2(t_3)$
2. $\Sigma\vdash Bew_2(t_3)$
(题目: Self-reference, truth, and provability
主讲人: Prof. Volker Halbach (School of Philosophy, Oxford University, UK)
2021 逻辑与分析哲学讲座
武汉大学哲学学院)

(sentences 'really interesting ')
Balthasar and Lingyuan.'uniform self-reference'
Example.Kreisel’s refutable Henkin sentence
Example.Apply canonical diagonalization to x=x to obtain a term $s$ with $\Sigma\vdash s=\overline{\#(s=s)}$. Now consider the property of being identical with s, expressed by x=s. Apply canonical diagonalization to x=s to obtain a term $t=\overline{\#(t=s)}$. Both s=s and t=s say about themselves that they are identical with s in the sense of Kreisel-Henkin criterion; but s=s does so only 'accidentally'. v. could obtained by systematic method
Are $Bew_2(t_3)$ more interesting than $Bew_2(t_2)$ because the former has been obtained by the canonical diagonal construction?
 
Henkin sentences: summary
- If a canonical provability predicate (at least one satisfying the Loeb conditions) is chosen, all diagonal sentences of this predicate are equivalent.
- There are provability predicates that have refutable and provable Henkin sentences (that are self-referential in the sense of the Kreisel-Henkin criterion).
- There is a refutable Henkin sentence obtained via the canonical Goedel diagonalisation method.
- The situation for Henkin sentences based on Rosser provability is tricky. See (Kurahashi 2014).

There is a $\Sigma_1$-formula $Tr_{\Sigma_1}(x)$ that is said to be a $\Sigma_1$-truth predicate; it provably satisfies all T-sentences for $\Sigma_1$-sentences as well as the compositional axioms for such sentences.
The canonical truth predicate $Tr_{\Sigma_1}(x)$ is of the form $\exists y\vartheta(y,x)$ with a formula $\vartheta(y,x)$ containing only bounded quantifiers.

The $\Sigma_1$-truth teller is refutable. That is, the sentence stating its own $\Sigma_1$-truth is refutable.
We grant that $Tr_{\Sigma_1}(x)$ expresses $\Sigma_1$-truth and canonical diagonalization yields self-reference. Moreover, we assume we have function symbols such that for every $\varphi(x)$ there is a closed term t obtained in the canonical way such that $t=\#\varphi(t)$.
Theorem. Suppose we employ a monotone Goedel coding and $d(Tr_{\Sigma_1}(x))$ is the canonical diagonal sentence, then $PA\vdash \lnot d(Tr_{\Sigma_1}(x))$.
assumption.If $\exists v \sigma(v)$ is a $\Sigma_1$-sentence, that is, if the formula $\sigma(v)$, then $PA\vdash \forall y(\theta(y,\#(\exists v \sigma(v)))\to\exists v<y\sigma(v))$ holds.
The assumption follows from a reasonable coding schema. It is technical. Depending on how exactly $Tr_{\Sigma_1}(x)$ is defined, the assumption follows from
- the assumption that the code of a sentence $\varphi(\bar n)$ is always greater than n and this property is transmitted through sequences of sentences, or
-  the assumption that the code of a variable assignment is always greater than that of any entry and this property is transmitted through sequences - or some such assumptions.

Proof.The truth teller $d(Tr_{\Sigma_1}(x))$ is of the form $\exists y \theta (y,t)$ where t is a term denoting this very sentence. Thus, $t=\#(\exists y\theta(y,t))$ is true and, hence, PA-provable.
We reason in PA. Suppose $\exists y\theta(y,t)$. Let $y_0$ be the smallest witness of $\exists y\theta(y,t)$. So, (a) $\theta(y_0,t)$ and (b) $\forall z<y_0\lnot\theta(z,t)$. Since $t=\#\exists y\theta(y,t)$, the assumption above combined with (a), gives us $\exists z<y_0\theta(z,t)$. But this contradicts (b). Hence our supposition that $\exists y\theta(y,t)$ must fail.

Under suitable assumptions this can be generalized: $\Sigma_n$-truth tellers are refutable, $\Pi_n$-truth tellers are provable.

Working in PA, we can also use $Bew_{I\Sigma_1}$ as a $\Sigma_1$-truth predicate in PA:
$PA\vdash Bew_{I\Sigma_1}(\#\varphi)\leftrightarrow\varphi$
holds for all $\Sigma_1$-sentences $\varphi$.
The left-to-right is the reflexivity of PA, the right-to-left $\Sigma_1$-completeness.
We can also use the truth predicate of axiomatic theory of truth such as CT or KF.
provability predicate for a finite subtheory strong enough prove $Sigma_1$-completeness and PA proves reflection for finite subtheory

We have three $\Sigma_1$-truth tellers; one is refutable, one provable, one independent. All truth predicates represent $\Sigma_1$-truth numeralwise. CT is the axiomatic "Tarskian" theory. Form (Halbach and Leigh 2001):
Theorem.
- The canonical diagonal sentence of $Tr_{\Sigma_1}$ is refutable in PA and CT, as long as the coding is monotone.
- Every diagonal sentence of $Bew_{I\Sigma_1}$ is provable in PA and CT, where $Bew_{I\Sigma_1}$ is canonical. (McGee)
- The canonical  diagonal sentence of the primitive truth predicate T in CT is independent of CT.

(Halbach and Visser 2014) made a mistake.

Uniform self reference is obtained by applying a uniform method that always yields a diagonal sentence satisfying the Kreisel-Henkin criterion.
Lingyuan

(Volker Halbach: Self-reference and intensionality in metamathematics, part of the "Online International Workshop on Gödel's Incompleteness Theorems" held in August 16-20, 2021, organized by School of Philosophy at Wuhan University.
Workshop website: https://goedel2021.carrd.co)