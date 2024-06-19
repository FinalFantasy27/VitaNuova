
Finite algebras with no independent basis of identities,
I. M. ISAEV,
Algebra univers. 37 (1997) 440-444
describes a finite algebra whose equational theory has no independent equational axiomatization. The algebra is a finite dimensional vector space over a finite field equipped with a certain nonassociative bilinear multiplication.

Every first-order theory has an independent axiomatization, proved by Tarski for countable languages, 

Suppose I have a non-finitely-axiomatizable theory $T$  in a countable language. Since our language is countable we can enumerate T:

$T=\{\varphi_i: i\in \mathbb{N}\}.$

Let $T'=\{\varphi_i: \bigwedge_{j<i}\varphi_j\not\vdash\varphi_i\}$
We trivially have that $T′$ is an axiomatization of $T$.

Enumerate $T′$ as $T'=\{\psi_i: i\in\mathbb{N}\}.$

let $\theta_i=(\bigwedge_{j<i}\psi_j)\implies\psi_i,$ 
with the convention that $θ_0=ψ_0$

It's easy to see that 
$T^*:=\{\theta_i:i\in\mathbb{N}\}$
axiomatizes  $T$, the key point being that $\bigwedge_{j\le i}\theta_j\vdash\psi_i$. I claim that $T^∗$ is in addition irredundant.

To see this, fix $i\in\mathbb N$ and consider the sentence
$\eta_i=(\bigwedge_{j<i}\psi_j)\wedge\neg\psi_i.$

We have $\eta_i\vdash\theta_k$ for all $k\neq i$: for $k<i$ this is built directly into $\eta_i$, and for $k>i$ this is because the hypothesis of the conditional becomes vacuous. But also clearly $\eta_i\vdash\neg\theta_i$. And finally, by definition of $T′$ we know that $\eta_i$ is consistent and hence $\eta_i\not\vdash\theta_i$. Putting this all together we get 

$\{\theta_k: k\not=i\}\not\vdash\theta_i$

as desired


,and which is tricky to prove in general (Reznikoff 1965)
Reznikoff's paper is in French, and an English version of the argument was presented by Souldatos: https://arxiv.org/pdf/1108.5171
An interesting feature of the argument is the role of Craig's interpolation theorem

Wojtylak's survey paper Independent axiomatizability of sets of sentences https://www.sciencedirect.com/science/article/pii/0168007289900341
(Wojtylak postdates all the others except Hjorth/Souldatos, which doesn't refer to it)

Does there exist a theory $T$ such that $T$ is recursively axiomatizable, but there is no independent recursive axiomatization of $T$? Or, does every recursively axiomatizable theory have an independent recursive axiomatization? 
Independent axiomatization is an axiomatization where no sentence is redundant.

Kreisel resolved this by giving a counterexample in a 1956 JSL abstract https://www.jstor.org/stable/2964108

Pour-El, Independent axiomatization and its relation to the hypersimple set in 1968, who proved the following theorem:

Let $T$ be a first-order theory in a recursive language. Then the following are equivalent:

1) $T$ has no recursive independent axiomatization.
2)  For some axiomatization $\{\alpha_i:i\in\omega\}$ of $T$, the set $\{i: \bigwedge_{j<i}\alpha_j\vdash \alpha_i\}$ is hypersimple.
3)  For every axiomatization $\{\alpha_i:i\in\omega\}$ of $T$, the set $\{i: \bigwedge_{j<i}\alpha_j\vdash \alpha_i\}$ is hypersimple.

https://onlinelibrary.wiley.com/doi/10.1002/malq.19680142505

This answered a question implicitly raised at the end of Kreisel's abstract, namely whether there was a real connection between non-recursive independent axiomatizability and hypersimplicity (Kreisel merely observed that in his example one could not replace hypersimplicity with simplicity).

Note that Pour-El uses the slightly more ambiguous term "independent axiomatization" in place of "recursive independent axiomatization". (In older texts especially, "axiomatization" generally means "recursive axiomatization".)

https://math.stackexchange.com/questions/4822889/is-there-a-recursively-axiomatizable-theory-which-has-no-independent-recursive-a/4894485

further questions about irredundancy in other logics

Hjorth/Souldatos builds off of X. Caicedo giving some positive results for $\mathcal{L}_{\omega_1,\omega}$.
https://arxiv.org/pdf/1012.3422.pdf
https://math.uniandes.edu.co/archivos/publicaciones/IndependentsetsofaxiomsinL-kappa,alpha.pdf





